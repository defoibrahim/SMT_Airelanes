// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'flightsdto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlightsDto _$FlightsDtoFromJson(Map<String, dynamic> json) {
  return _FlightsDto.fromJson(json);
}

/// @nodoc
class _$FlightsDtoTearOff {
  const _$FlightsDtoTearOff();

// ignore: unused_element
  _FlightsDto call(
      {String id,
      String flyFrom,
      String flyTo,
      String cityFrom,
      String cityCodeFrom,
      String cityTo,
      String cityCodeTo,
      String fly_duration,
      double distance,
      List<String> airlines,
      List<Route> route,
      Availability availability,
      int dTime,
      int dTimeUTC,
      int aTime,
      int aTimeUTC}) {
    return _FlightsDto(
      id: id,
      flyFrom: flyFrom,
      flyTo: flyTo,
      cityFrom: cityFrom,
      cityCodeFrom: cityCodeFrom,
      cityTo: cityTo,
      cityCodeTo: cityCodeTo,
      fly_duration: fly_duration,
      distance: distance,
      airlines: airlines,
      route: route,
      availability: availability,
      dTime: dTime,
      dTimeUTC: dTimeUTC,
      aTime: aTime,
      aTimeUTC: aTimeUTC,
    );
  }

// ignore: unused_element
  FlightsDto fromJson(Map<String, Object> json) {
    return FlightsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FlightsDto = _$FlightsDtoTearOff();

/// @nodoc
mixin _$FlightsDto {
  String get id;
  String get flyFrom;
  String get flyTo;
  String get cityFrom;
  String get cityCodeFrom;
  String get cityTo;
  String get cityCodeTo; // ignore: non_constant_identifier_names
  String get fly_duration;
  double get distance;
  List<String> get airlines;
  List<Route> get route;
  Availability get availability;
  int get dTime;
  int get dTimeUTC;
  int get aTime;
  int get aTimeUTC;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $FlightsDtoCopyWith<FlightsDto> get copyWith;
}

/// @nodoc
abstract class $FlightsDtoCopyWith<$Res> {
  factory $FlightsDtoCopyWith(
          FlightsDto value, $Res Function(FlightsDto) then) =
      _$FlightsDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String flyFrom,
      String flyTo,
      String cityFrom,
      String cityCodeFrom,
      String cityTo,
      String cityCodeTo,
      String fly_duration,
      double distance,
      List<String> airlines,
      List<Route> route,
      Availability availability,
      int dTime,
      int dTimeUTC,
      int aTime,
      int aTimeUTC});

  $AvailabilityCopyWith<$Res> get availability;
}

/// @nodoc
class _$FlightsDtoCopyWithImpl<$Res> implements $FlightsDtoCopyWith<$Res> {
  _$FlightsDtoCopyWithImpl(this._value, this._then);

  final FlightsDto _value;
  // ignore: unused_field
  final $Res Function(FlightsDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object flyFrom = freezed,
    Object flyTo = freezed,
    Object cityFrom = freezed,
    Object cityCodeFrom = freezed,
    Object cityTo = freezed,
    Object cityCodeTo = freezed,
    Object fly_duration = freezed,
    Object distance = freezed,
    Object airlines = freezed,
    Object route = freezed,
    Object availability = freezed,
    Object dTime = freezed,
    Object dTimeUTC = freezed,
    Object aTime = freezed,
    Object aTimeUTC = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      flyFrom: flyFrom == freezed ? _value.flyFrom : flyFrom as String,
      flyTo: flyTo == freezed ? _value.flyTo : flyTo as String,
      cityFrom: cityFrom == freezed ? _value.cityFrom : cityFrom as String,
      cityCodeFrom: cityCodeFrom == freezed
          ? _value.cityCodeFrom
          : cityCodeFrom as String,
      cityTo: cityTo == freezed ? _value.cityTo : cityTo as String,
      cityCodeTo:
          cityCodeTo == freezed ? _value.cityCodeTo : cityCodeTo as String,
      fly_duration: fly_duration == freezed
          ? _value.fly_duration
          : fly_duration as String,
      distance: distance == freezed ? _value.distance : distance as double,
      airlines:
          airlines == freezed ? _value.airlines : airlines as List<String>,
      route: route == freezed ? _value.route : route as List<Route>,
      availability: availability == freezed
          ? _value.availability
          : availability as Availability,
      dTime: dTime == freezed ? _value.dTime : dTime as int,
      dTimeUTC: dTimeUTC == freezed ? _value.dTimeUTC : dTimeUTC as int,
      aTime: aTime == freezed ? _value.aTime : aTime as int,
      aTimeUTC: aTimeUTC == freezed ? _value.aTimeUTC : aTimeUTC as int,
    ));
  }

  @override
  $AvailabilityCopyWith<$Res> get availability {
    if (_value.availability == null) {
      return null;
    }
    return $AvailabilityCopyWith<$Res>(_value.availability, (value) {
      return _then(_value.copyWith(availability: value));
    });
  }
}

/// @nodoc
abstract class _$FlightsDtoCopyWith<$Res> implements $FlightsDtoCopyWith<$Res> {
  factory _$FlightsDtoCopyWith(
          _FlightsDto value, $Res Function(_FlightsDto) then) =
      __$FlightsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String flyFrom,
      String flyTo,
      String cityFrom,
      String cityCodeFrom,
      String cityTo,
      String cityCodeTo,
      String fly_duration,
      double distance,
      List<String> airlines,
      List<Route> route,
      Availability availability,
      int dTime,
      int dTimeUTC,
      int aTime,
      int aTimeUTC});

  @override
  $AvailabilityCopyWith<$Res> get availability;
}

/// @nodoc
class __$FlightsDtoCopyWithImpl<$Res> extends _$FlightsDtoCopyWithImpl<$Res>
    implements _$FlightsDtoCopyWith<$Res> {
  __$FlightsDtoCopyWithImpl(
      _FlightsDto _value, $Res Function(_FlightsDto) _then)
      : super(_value, (v) => _then(v as _FlightsDto));

  @override
  _FlightsDto get _value => super._value as _FlightsDto;

  @override
  $Res call({
    Object id = freezed,
    Object flyFrom = freezed,
    Object flyTo = freezed,
    Object cityFrom = freezed,
    Object cityCodeFrom = freezed,
    Object cityTo = freezed,
    Object cityCodeTo = freezed,
    Object fly_duration = freezed,
    Object distance = freezed,
    Object airlines = freezed,
    Object route = freezed,
    Object availability = freezed,
    Object dTime = freezed,
    Object dTimeUTC = freezed,
    Object aTime = freezed,
    Object aTimeUTC = freezed,
  }) {
    return _then(_FlightsDto(
      id: id == freezed ? _value.id : id as String,
      flyFrom: flyFrom == freezed ? _value.flyFrom : flyFrom as String,
      flyTo: flyTo == freezed ? _value.flyTo : flyTo as String,
      cityFrom: cityFrom == freezed ? _value.cityFrom : cityFrom as String,
      cityCodeFrom: cityCodeFrom == freezed
          ? _value.cityCodeFrom
          : cityCodeFrom as String,
      cityTo: cityTo == freezed ? _value.cityTo : cityTo as String,
      cityCodeTo:
          cityCodeTo == freezed ? _value.cityCodeTo : cityCodeTo as String,
      fly_duration: fly_duration == freezed
          ? _value.fly_duration
          : fly_duration as String,
      distance: distance == freezed ? _value.distance : distance as double,
      airlines:
          airlines == freezed ? _value.airlines : airlines as List<String>,
      route: route == freezed ? _value.route : route as List<Route>,
      availability: availability == freezed
          ? _value.availability
          : availability as Availability,
      dTime: dTime == freezed ? _value.dTime : dTime as int,
      dTimeUTC: dTimeUTC == freezed ? _value.dTimeUTC : dTimeUTC as int,
      aTime: aTime == freezed ? _value.aTime : aTime as int,
      aTimeUTC: aTimeUTC == freezed ? _value.aTimeUTC : aTimeUTC as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FlightsDto implements _FlightsDto {
  _$_FlightsDto(
      {this.id,
      this.flyFrom,
      this.flyTo,
      this.cityFrom,
      this.cityCodeFrom,
      this.cityTo,
      this.cityCodeTo,
      this.fly_duration,
      this.distance,
      this.airlines,
      this.route,
      this.availability,
      this.dTime,
      this.dTimeUTC,
      this.aTime,
      this.aTimeUTC});

  factory _$_FlightsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FlightsDtoFromJson(json);

  @override
  final String id;
  @override
  final String flyFrom;
  @override
  final String flyTo;
  @override
  final String cityFrom;
  @override
  final String cityCodeFrom;
  @override
  final String cityTo;
  @override
  final String cityCodeTo;
  @override // ignore: non_constant_identifier_names
  final String fly_duration;
  @override
  final double distance;
  @override
  final List<String> airlines;
  @override
  final List<Route> route;
  @override
  final Availability availability;
  @override
  final int dTime;
  @override
  final int dTimeUTC;
  @override
  final int aTime;
  @override
  final int aTimeUTC;

  @override
  String toString() {
    return 'FlightsDto(id: $id, flyFrom: $flyFrom, flyTo: $flyTo, cityFrom: $cityFrom, cityCodeFrom: $cityCodeFrom, cityTo: $cityTo, cityCodeTo: $cityCodeTo, fly_duration: $fly_duration, distance: $distance, airlines: $airlines, route: $route, availability: $availability, dTime: $dTime, dTimeUTC: $dTimeUTC, aTime: $aTime, aTimeUTC: $aTimeUTC)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlightsDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.flyFrom, flyFrom) ||
                const DeepCollectionEquality()
                    .equals(other.flyFrom, flyFrom)) &&
            (identical(other.flyTo, flyTo) ||
                const DeepCollectionEquality().equals(other.flyTo, flyTo)) &&
            (identical(other.cityFrom, cityFrom) ||
                const DeepCollectionEquality()
                    .equals(other.cityFrom, cityFrom)) &&
            (identical(other.cityCodeFrom, cityCodeFrom) ||
                const DeepCollectionEquality()
                    .equals(other.cityCodeFrom, cityCodeFrom)) &&
            (identical(other.cityTo, cityTo) ||
                const DeepCollectionEquality().equals(other.cityTo, cityTo)) &&
            (identical(other.cityCodeTo, cityCodeTo) ||
                const DeepCollectionEquality()
                    .equals(other.cityCodeTo, cityCodeTo)) &&
            (identical(other.fly_duration, fly_duration) ||
                const DeepCollectionEquality()
                    .equals(other.fly_duration, fly_duration)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.airlines, airlines) ||
                const DeepCollectionEquality()
                    .equals(other.airlines, airlines)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.availability, availability) ||
                const DeepCollectionEquality()
                    .equals(other.availability, availability)) &&
            (identical(other.dTime, dTime) ||
                const DeepCollectionEquality().equals(other.dTime, dTime)) &&
            (identical(other.dTimeUTC, dTimeUTC) ||
                const DeepCollectionEquality()
                    .equals(other.dTimeUTC, dTimeUTC)) &&
            (identical(other.aTime, aTime) ||
                const DeepCollectionEquality().equals(other.aTime, aTime)) &&
            (identical(other.aTimeUTC, aTimeUTC) ||
                const DeepCollectionEquality()
                    .equals(other.aTimeUTC, aTimeUTC)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(flyFrom) ^
      const DeepCollectionEquality().hash(flyTo) ^
      const DeepCollectionEquality().hash(cityFrom) ^
      const DeepCollectionEquality().hash(cityCodeFrom) ^
      const DeepCollectionEquality().hash(cityTo) ^
      const DeepCollectionEquality().hash(cityCodeTo) ^
      const DeepCollectionEquality().hash(fly_duration) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(airlines) ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(availability) ^
      const DeepCollectionEquality().hash(dTime) ^
      const DeepCollectionEquality().hash(dTimeUTC) ^
      const DeepCollectionEquality().hash(aTime) ^
      const DeepCollectionEquality().hash(aTimeUTC);

  @JsonKey(ignore: true)
  @override
  _$FlightsDtoCopyWith<_FlightsDto> get copyWith =>
      __$FlightsDtoCopyWithImpl<_FlightsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlightsDtoToJson(this);
  }
}

abstract class _FlightsDto implements FlightsDto {
  factory _FlightsDto(
      {String id,
      String flyFrom,
      String flyTo,
      String cityFrom,
      String cityCodeFrom,
      String cityTo,
      String cityCodeTo,
      String fly_duration,
      double distance,
      List<String> airlines,
      List<Route> route,
      Availability availability,
      int dTime,
      int dTimeUTC,
      int aTime,
      int aTimeUTC}) = _$_FlightsDto;

  factory _FlightsDto.fromJson(Map<String, dynamic> json) =
      _$_FlightsDto.fromJson;

  @override
  String get id;
  @override
  String get flyFrom;
  @override
  String get flyTo;
  @override
  String get cityFrom;
  @override
  String get cityCodeFrom;
  @override
  String get cityTo;
  @override
  String get cityCodeTo;
  @override // ignore: non_constant_identifier_names
  String get fly_duration;
  @override
  double get distance;
  @override
  List<String> get airlines;
  @override
  List<Route> get route;
  @override
  Availability get availability;
  @override
  int get dTime;
  @override
  int get dTimeUTC;
  @override
  int get aTime;
  @override
  int get aTimeUTC;
  @override
  @JsonKey(ignore: true)
  _$FlightsDtoCopyWith<_FlightsDto> get copyWith;
}

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
class _$RouteTearOff {
  const _$RouteTearOff();

// ignore: unused_element
  _Route call(
      {String id,
      String airline,
      int flight_no,
      String mapIdfrom,
      String mapIdto,
      String operatingCarrier,
      String operatingFlightNo,
      DateTime localArrival,
      String utcArrival,
      String localDeparture,
      String utcDeparture}) {
    return _Route(
      id: id,
      airline: airline,
      flight_no: flight_no,
      mapIdfrom: mapIdfrom,
      mapIdto: mapIdto,
      operatingCarrier: operatingCarrier,
      operatingFlightNo: operatingFlightNo,
      localArrival: localArrival,
      utcArrival: utcArrival,
      localDeparture: localDeparture,
      utcDeparture: utcDeparture,
    );
  }

// ignore: unused_element
  Route fromJson(Map<String, Object> json) {
    return Route.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Route = _$RouteTearOff();

/// @nodoc
mixin _$Route {
  String get id;
  String get airline;
  int get flight_no;
  String get mapIdfrom;
  String get mapIdto;
  String get operatingCarrier;
  String get operatingFlightNo;
  DateTime get localArrival;
  String get utcArrival;
  String get localDeparture;
  String get utcDeparture;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RouteCopyWith<Route> get copyWith;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String airline,
      int flight_no,
      String mapIdfrom,
      String mapIdto,
      String operatingCarrier,
      String operatingFlightNo,
      DateTime localArrival,
      String utcArrival,
      String localDeparture,
      String utcDeparture});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  final Route _value;
  // ignore: unused_field
  final $Res Function(Route) _then;

  @override
  $Res call({
    Object id = freezed,
    Object airline = freezed,
    Object flight_no = freezed,
    Object mapIdfrom = freezed,
    Object mapIdto = freezed,
    Object operatingCarrier = freezed,
    Object operatingFlightNo = freezed,
    Object localArrival = freezed,
    Object utcArrival = freezed,
    Object localDeparture = freezed,
    Object utcDeparture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      airline: airline == freezed ? _value.airline : airline as String,
      flight_no: flight_no == freezed ? _value.flight_no : flight_no as int,
      mapIdfrom: mapIdfrom == freezed ? _value.mapIdfrom : mapIdfrom as String,
      mapIdto: mapIdto == freezed ? _value.mapIdto : mapIdto as String,
      operatingCarrier: operatingCarrier == freezed
          ? _value.operatingCarrier
          : operatingCarrier as String,
      operatingFlightNo: operatingFlightNo == freezed
          ? _value.operatingFlightNo
          : operatingFlightNo as String,
      localArrival: localArrival == freezed
          ? _value.localArrival
          : localArrival as DateTime,
      utcArrival:
          utcArrival == freezed ? _value.utcArrival : utcArrival as String,
      localDeparture: localDeparture == freezed
          ? _value.localDeparture
          : localDeparture as String,
      utcDeparture: utcDeparture == freezed
          ? _value.utcDeparture
          : utcDeparture as String,
    ));
  }
}

/// @nodoc
abstract class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) then) =
      __$RouteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String airline,
      int flight_no,
      String mapIdfrom,
      String mapIdto,
      String operatingCarrier,
      String operatingFlightNo,
      DateTime localArrival,
      String utcArrival,
      String localDeparture,
      String utcDeparture});
}

/// @nodoc
class __$RouteCopyWithImpl<$Res> extends _$RouteCopyWithImpl<$Res>
    implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(_Route _value, $Res Function(_Route) _then)
      : super(_value, (v) => _then(v as _Route));

  @override
  _Route get _value => super._value as _Route;

  @override
  $Res call({
    Object id = freezed,
    Object airline = freezed,
    Object flight_no = freezed,
    Object mapIdfrom = freezed,
    Object mapIdto = freezed,
    Object operatingCarrier = freezed,
    Object operatingFlightNo = freezed,
    Object localArrival = freezed,
    Object utcArrival = freezed,
    Object localDeparture = freezed,
    Object utcDeparture = freezed,
  }) {
    return _then(_Route(
      id: id == freezed ? _value.id : id as String,
      airline: airline == freezed ? _value.airline : airline as String,
      flight_no: flight_no == freezed ? _value.flight_no : flight_no as int,
      mapIdfrom: mapIdfrom == freezed ? _value.mapIdfrom : mapIdfrom as String,
      mapIdto: mapIdto == freezed ? _value.mapIdto : mapIdto as String,
      operatingCarrier: operatingCarrier == freezed
          ? _value.operatingCarrier
          : operatingCarrier as String,
      operatingFlightNo: operatingFlightNo == freezed
          ? _value.operatingFlightNo
          : operatingFlightNo as String,
      localArrival: localArrival == freezed
          ? _value.localArrival
          : localArrival as DateTime,
      utcArrival:
          utcArrival == freezed ? _value.utcArrival : utcArrival as String,
      localDeparture: localDeparture == freezed
          ? _value.localDeparture
          : localDeparture as String,
      utcDeparture: utcDeparture == freezed
          ? _value.utcDeparture
          : utcDeparture as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Route implements _Route {
  _$_Route(
      {this.id,
      this.airline,
      this.flight_no,
      this.mapIdfrom,
      this.mapIdto,
      this.operatingCarrier,
      this.operatingFlightNo,
      this.localArrival,
      this.utcArrival,
      this.localDeparture,
      this.utcDeparture});

  factory _$_Route.fromJson(Map<String, dynamic> json) =>
      _$_$_RouteFromJson(json);

  @override
  final String id;
  @override
  final String airline;
  @override
  final int flight_no;
  @override
  final String mapIdfrom;
  @override
  final String mapIdto;
  @override
  final String operatingCarrier;
  @override
  final String operatingFlightNo;
  @override
  final DateTime localArrival;
  @override
  final String utcArrival;
  @override
  final String localDeparture;
  @override
  final String utcDeparture;

  @override
  String toString() {
    return 'Route(id: $id, airline: $airline, flight_no: $flight_no, mapIdfrom: $mapIdfrom, mapIdto: $mapIdto, operatingCarrier: $operatingCarrier, operatingFlightNo: $operatingFlightNo, localArrival: $localArrival, utcArrival: $utcArrival, localDeparture: $localDeparture, utcDeparture: $utcDeparture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Route &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.airline, airline) ||
                const DeepCollectionEquality()
                    .equals(other.airline, airline)) &&
            (identical(other.flight_no, flight_no) ||
                const DeepCollectionEquality()
                    .equals(other.flight_no, flight_no)) &&
            (identical(other.mapIdfrom, mapIdfrom) ||
                const DeepCollectionEquality()
                    .equals(other.mapIdfrom, mapIdfrom)) &&
            (identical(other.mapIdto, mapIdto) ||
                const DeepCollectionEquality()
                    .equals(other.mapIdto, mapIdto)) &&
            (identical(other.operatingCarrier, operatingCarrier) ||
                const DeepCollectionEquality()
                    .equals(other.operatingCarrier, operatingCarrier)) &&
            (identical(other.operatingFlightNo, operatingFlightNo) ||
                const DeepCollectionEquality()
                    .equals(other.operatingFlightNo, operatingFlightNo)) &&
            (identical(other.localArrival, localArrival) ||
                const DeepCollectionEquality()
                    .equals(other.localArrival, localArrival)) &&
            (identical(other.utcArrival, utcArrival) ||
                const DeepCollectionEquality()
                    .equals(other.utcArrival, utcArrival)) &&
            (identical(other.localDeparture, localDeparture) ||
                const DeepCollectionEquality()
                    .equals(other.localDeparture, localDeparture)) &&
            (identical(other.utcDeparture, utcDeparture) ||
                const DeepCollectionEquality()
                    .equals(other.utcDeparture, utcDeparture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(airline) ^
      const DeepCollectionEquality().hash(flight_no) ^
      const DeepCollectionEquality().hash(mapIdfrom) ^
      const DeepCollectionEquality().hash(mapIdto) ^
      const DeepCollectionEquality().hash(operatingCarrier) ^
      const DeepCollectionEquality().hash(operatingFlightNo) ^
      const DeepCollectionEquality().hash(localArrival) ^
      const DeepCollectionEquality().hash(utcArrival) ^
      const DeepCollectionEquality().hash(localDeparture) ^
      const DeepCollectionEquality().hash(utcDeparture);

  @JsonKey(ignore: true)
  @override
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouteToJson(this);
  }
}

abstract class _Route implements Route {
  factory _Route(
      {String id,
      String airline,
      int flight_no,
      String mapIdfrom,
      String mapIdto,
      String operatingCarrier,
      String operatingFlightNo,
      DateTime localArrival,
      String utcArrival,
      String localDeparture,
      String utcDeparture}) = _$_Route;

  factory _Route.fromJson(Map<String, dynamic> json) = _$_Route.fromJson;

  @override
  String get id;
  @override
  String get airline;
  @override
  int get flight_no;
  @override
  String get mapIdfrom;
  @override
  String get mapIdto;
  @override
  String get operatingCarrier;
  @override
  String get operatingFlightNo;
  @override
  DateTime get localArrival;
  @override
  String get utcArrival;
  @override
  String get localDeparture;
  @override
  String get utcDeparture;
  @override
  @JsonKey(ignore: true)
  _$RouteCopyWith<_Route> get copyWith;
}

Availability _$AvailabilityFromJson(Map<String, dynamic> json) {
  return _Availability.fromJson(json);
}

/// @nodoc
class _$AvailabilityTearOff {
  const _$AvailabilityTearOff();

// ignore: unused_element
  _Availability call({num seats}) {
    return _Availability(
      seats: seats,
    );
  }

// ignore: unused_element
  Availability fromJson(Map<String, Object> json) {
    return Availability.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Availability = _$AvailabilityTearOff();

/// @nodoc
mixin _$Availability {
  num get seats;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AvailabilityCopyWith<Availability> get copyWith;
}

/// @nodoc
abstract class $AvailabilityCopyWith<$Res> {
  factory $AvailabilityCopyWith(
          Availability value, $Res Function(Availability) then) =
      _$AvailabilityCopyWithImpl<$Res>;
  $Res call({num seats});
}

/// @nodoc
class _$AvailabilityCopyWithImpl<$Res> implements $AvailabilityCopyWith<$Res> {
  _$AvailabilityCopyWithImpl(this._value, this._then);

  final Availability _value;
  // ignore: unused_field
  final $Res Function(Availability) _then;

  @override
  $Res call({
    Object seats = freezed,
  }) {
    return _then(_value.copyWith(
      seats: seats == freezed ? _value.seats : seats as num,
    ));
  }
}

/// @nodoc
abstract class _$AvailabilityCopyWith<$Res>
    implements $AvailabilityCopyWith<$Res> {
  factory _$AvailabilityCopyWith(
          _Availability value, $Res Function(_Availability) then) =
      __$AvailabilityCopyWithImpl<$Res>;
  @override
  $Res call({num seats});
}

/// @nodoc
class __$AvailabilityCopyWithImpl<$Res> extends _$AvailabilityCopyWithImpl<$Res>
    implements _$AvailabilityCopyWith<$Res> {
  __$AvailabilityCopyWithImpl(
      _Availability _value, $Res Function(_Availability) _then)
      : super(_value, (v) => _then(v as _Availability));

  @override
  _Availability get _value => super._value as _Availability;

  @override
  $Res call({
    Object seats = freezed,
  }) {
    return _then(_Availability(
      seats: seats == freezed ? _value.seats : seats as num,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Availability implements _Availability {
  _$_Availability({this.seats});

  factory _$_Availability.fromJson(Map<String, dynamic> json) =>
      _$_$_AvailabilityFromJson(json);

  @override
  final num seats;

  @override
  String toString() {
    return 'Availability(seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Availability &&
            (identical(other.seats, seats) ||
                const DeepCollectionEquality().equals(other.seats, seats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seats);

  @JsonKey(ignore: true)
  @override
  _$AvailabilityCopyWith<_Availability> get copyWith =>
      __$AvailabilityCopyWithImpl<_Availability>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AvailabilityToJson(this);
  }
}

abstract class _Availability implements Availability {
  factory _Availability({num seats}) = _$_Availability;

  factory _Availability.fromJson(Map<String, dynamic> json) =
      _$_Availability.fromJson;

  @override
  num get seats;
  @override
  @JsonKey(ignore: true)
  _$AvailabilityCopyWith<_Availability> get copyWith;
}
