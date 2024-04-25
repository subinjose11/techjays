import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'show_module.freezed.dart';
part 'show_module.g.dart';

// List<ShowModule> showModuleFromJson(String str) =>
//     List<ShowModule>.from(json.decode(str).map((x) => ShowModule.fromJson(x)));

// String showModuleToJson(List<ShowModule> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class ShowModule with _$ShowModule {
  const factory ShowModule({
    required int? id,
    required String? url,
    required String? name,
    required String? type,
    required String? language,
    required List<String>? genres,
    required String? status,
    required int? runtime,
    required int? averageRuntime,
    required DateTime? premiered,
    required DateTime? ended,
    required String? officialSite,
    required Schedule? schedule,
    required Rating? rating,
    required int? weight,
    required Network? network,
    required dynamic? webChannel,
    required dynamic? dvdCountry,
    required Externals? externals,
    required IImage? image,
    required String? summary,
    required int? updated,
    required Links? links,
  }) = _ShowModule;

  factory ShowModule.fromJson(Map<String, dynamic> json) =>
      _$ShowModuleFromJson(json);
}

@freezed
class Externals with _$Externals {
  const factory Externals({
    required int? tvrage,
    required int? thetvdb,
    required String? imdb,
  }) = _Externals;

  factory Externals.fromJson(Map<String, dynamic> json) =>
      _$ExternalsFromJson(json);
}

@freezed
class IImage with _$IImage {
  const factory IImage({
    required String? medium,
    required String? original,
  }) = _IImage;

  factory IImage.fromJson(Map<String, dynamic> json) => _$IImageFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    required Self? self,
    required Previousepisode? previousepisode,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Previousepisode with _$Previousepisode {
  const factory Previousepisode({
    required String? href,
    required String? name,
  }) = _Previousepisode;

  factory Previousepisode.fromJson(Map<String, dynamic> json) =>
      _$PreviousepisodeFromJson(json);
}

@freezed
class Self with _$Self {
  const factory Self({
    required String? href,
  }) = _Self;

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);
}

@freezed
class Network with _$Network {
  const factory Network({
    required int? id,
    required String? name,
    required Country? country,
    required String? officialSite,
  }) = _Network;

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    required String? name,
    required String? code,
    required String? timezone,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double? average,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required String? time,
    required List<String>? days,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
