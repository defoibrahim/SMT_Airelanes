import 'package:freezed_annotation/freezed_annotation.dart';

part 'flightsdto.freezed.dart';
part 'flightsdto.g.dart';

@freezed
abstract class FlightsDto with _$FlightsDto {
  factory FlightsDto({
    String id,
    String flyFrom,
    String flyTo,
    String cityFrom,
    String cityCodeFrom,
    String cityTo,
    String cityCodeTo,
    // ignore: non_constant_identifier_names
    String fly_duration,
    double distance,
    List<String> airlines,
    List<Route> route,
    Availability availability,
    int dTime,
    int dTimeUTC,
    int aTime,
    int aTimeUTC,
  }) = _FlightsDto;

  factory FlightsDto.fromJson(Map<String, dynamic> json) =>
      _$FlightsDtoFromJson(json);
}

@freezed
abstract class Route with _$Route {
  factory Route({
    String id,
    String airline,
    int flight_no,
    String mapIdfrom,
    String mapIdto,
    String operatingCarrier,
    String operatingFlightNo,
    DateTime localArrival,
    String utcArrival,
    String localDeparture,
    String utcDeparture,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}

@freezed
abstract class Availability with _$Availability {
  factory Availability({
    num seats,
    
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
}
