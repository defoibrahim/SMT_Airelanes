import 'package:SMT_Airelanes/models/flightsdto.dart';
import 'package:SMT_Airelanes/utils/web_client.dart';

class FlightRepository {
  final _webClient = new WebClient();

  //get all flights
  Future<List<FlightsDto>> getFlights({
    String flyFrom = 'KRT',
    String flyTo = '',
  }) async {
    final jsonData = await _webClient.get('/flights?fly_from=$flyFrom&fly_to=$flyTo');
    final jsonList = jsonData["data"] as List;
    return jsonList.map((json) => FlightsDto.fromJson(json)).toList();
  }
}
