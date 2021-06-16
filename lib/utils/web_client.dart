import 'dart:convert';
import 'dart:io';
import 'package:SMT_Airelanes/utils/constants.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;
import 'package:easy_localization/easy_localization.dart';

class NoInternetException implements Exception {}

class WebException implements Exception {
  final String message;

  WebException({this.message});
}

class WebClient {
  Future<T> get<T>(String endPoint, {String dataKey}) async {
    // Check network connection
    await _checkInternetConnetion();

    //prpare headers
    final headers = await _prepareHeaders();

    // make request
    final response = await http
        .get("$kServerAddress$endPoint&partner=defoairlanes", headers: headers)
        .timeout(Duration(seconds: 60));

    // validate response
    return _validateResponse<T>(response, dataKey);
  }

  Future<T> post<T>(String endPoint,
      [Map<String, dynamic> body,
      String contentType = 'application/json',
      bool haveImage]) async {
    // Check network connection
    await _checkInternetConnetion();

    //prpare headers
    final headers = await _prepareHeaders();

    // make request
    http.Response response;
    if (contentType == 'multipart/form-data') {
      var req =
          http.MultipartRequest('POST', Uri.parse('$kServerAddress$endPoint'))
            ..headers.addAll(headers)
            ..fields.addAll(body);
      if (haveImage) {
        req
          ..files.add(
            await http.MultipartFile.fromPath('body', body['body']),
          );
      }
      http.StreamedResponse streamedResponse = await req.send();
      response = await http.Response.fromStream(streamedResponse);
    } else {
      response = await http.post(
        "$kServerAddress$endPoint",
        body: body == null ? null : jsonEncode(body),
        headers: headers,
      );
    }

    // validate response
    return _validateResponse<T>(response);
  }

  Future<T> patch<T>(String endPoint, Map<String, dynamic> body,
      {String dataKey}) async {
    // Check network connection
    await _checkInternetConnetion();

    //prpare headers
    final headers = await _prepareHeaders();

    // make request
    final response = await http
        .patch(
          "$kServerAddress$endPoint",
          body: jsonEncode(body),
          headers: headers,
        )
        .timeout(Duration(seconds: 40));

    // validate response
    return _validateResponse<T>(response, dataKey);
  }

  Future<T> put<T>(String endPoint, Map<String, dynamic> body,
      {String dataKey}) async {
    // Check network connection
    await _checkInternetConnetion();

    //prpare headers
    final headers = await _prepareHeaders();
    // make request
    final response = await http
        .put(
          "$kServerAddress$endPoint",
          body: jsonEncode(body),
          headers: headers,
        )
        .timeout(Duration(seconds: 30));

    // validate response
    return _validateResponse<T>(response, dataKey);
  }

  Future _checkInternetConnetion() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.mobile &&
        connectivityResult != ConnectivityResult.wifi) {
      throw new NoInternetException();
    }
  }

  Future<Map<String, String>> _prepareHeaders() async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'apikey': 'qsewGVxEgdV_-GtIL-YF6c9l3t-vug5f'
    };

    return headers;
  }

  dynamic _validateResponse<T>(http.Response response, [String key]) {
    if (response.body.isEmpty) {
      return null;
    }
    Map body = jsonDecode(response.body ?? '{"message": "No data"}');
    if (response.statusCode != 200 && response.statusCode != 201) {
      if (response.statusCode == 401) {
        throw new WebException(
          message: body['message'],
        );
      }
      throw new WebException(
        message: body['message'],
      );
    }
    final json = jsonDecode(response.body);
    return json as T;
  }
}
