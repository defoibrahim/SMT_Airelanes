// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flightsdto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlightsDto _$_$_FlightsDtoFromJson(Map<String, dynamic> json) {
  return _$_FlightsDto(
    id: json['id'] as String,
    flyFrom: json['flyFrom'] as String,
    flyTo: json['flyTo'] as String,
    cityFrom: json['cityFrom'] as String,
    cityCodeFrom: json['cityCodeFrom'] as String,
    cityTo: json['cityTo'] as String,
    cityCodeTo: json['cityCodeTo'] as String,
    fly_duration: json['fly_duration'] as String,
    distance: (json['distance'] as num)?.toDouble(),
    airlines: (json['airlines'] as List)?.map((e) => e as String)?.toList(),
    route: (json['route'] as List)
        ?.map(
            (e) => e == null ? null : Route.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    availability: json['availability'] == null
        ? null
        : Availability.fromJson(json['availability'] as Map<String, dynamic>),
    dTime: json['dTime'] as int,
    dTimeUTC: json['dTimeUTC'] as int,
    aTime: json['aTime'] as int,
    aTimeUTC: json['aTimeUTC'] as int,
  );
}

Map<String, dynamic> _$_$_FlightsDtoToJson(_$_FlightsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'flyFrom': instance.flyFrom,
      'flyTo': instance.flyTo,
      'cityFrom': instance.cityFrom,
      'cityCodeFrom': instance.cityCodeFrom,
      'cityTo': instance.cityTo,
      'cityCodeTo': instance.cityCodeTo,
      'fly_duration': instance.fly_duration,
      'distance': instance.distance,
      'airlines': instance.airlines,
      'route': instance.route,
      'availability': instance.availability,
      'dTime': instance.dTime,
      'dTimeUTC': instance.dTimeUTC,
      'aTime': instance.aTime,
      'aTimeUTC': instance.aTimeUTC,
    };

_$_Route _$_$_RouteFromJson(Map<String, dynamic> json) {
  return _$_Route(
    id: json['id'] as String,
    airline: json['airline'] as String,
    flight_no: json['flight_no'] as int,
    mapIdfrom: json['mapIdfrom'] as String,
    mapIdto: json['mapIdto'] as String,
    operatingCarrier: json['operatingCarrier'] as String,
    operatingFlightNo: json['operatingFlightNo'] as String,
    localArrival: json['localArrival'] == null
        ? null
        : DateTime.parse(json['localArrival'] as String),
    utcArrival: json['utcArrival'] as String,
    localDeparture: json['localDeparture'] as String,
    utcDeparture: json['utcDeparture'] as String,
  );
}

Map<String, dynamic> _$_$_RouteToJson(_$_Route instance) => <String, dynamic>{
      'id': instance.id,
      'airline': instance.airline,
      'flight_no': instance.flight_no,
      'mapIdfrom': instance.mapIdfrom,
      'mapIdto': instance.mapIdto,
      'operatingCarrier': instance.operatingCarrier,
      'operatingFlightNo': instance.operatingFlightNo,
      'localArrival': instance.localArrival?.toIso8601String(),
      'utcArrival': instance.utcArrival,
      'localDeparture': instance.localDeparture,
      'utcDeparture': instance.utcDeparture,
    };

_$_Availability _$_$_AvailabilityFromJson(Map<String, dynamic> json) {
  return _$_Availability(
    seats: json['seats'] as num,
  );
}

Map<String, dynamic> _$_$_AvailabilityToJson(_$_Availability instance) =>
    <String, dynamic>{
      'seats': instance.seats,
    };
