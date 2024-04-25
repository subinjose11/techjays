// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShowModuleImpl _$$ShowModuleImplFromJson(Map<String, dynamic> json) =>
    _$ShowModuleImpl(
      id: json['id'] as int?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      runtime: json['runtime'] as int?,
      averageRuntime: json['averageRuntime'] as int?,
      premiered: json['premiered'] == null
          ? null
          : DateTime.parse(json['premiered'] as String),
      ended: json['ended'] == null
          ? null
          : DateTime.parse(json['ended'] as String),
      officialSite: json['officialSite'] as String?,
      schedule: json['schedule'] == null
          ? null
          : Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      weight: json['weight'] as int?,
      network: json['network'] == null
          ? null
          : Network.fromJson(json['network'] as Map<String, dynamic>),
      webChannel: json['webChannel'],
      dvdCountry: json['dvdCountry'],
      externals: json['externals'] == null
          ? null
          : Externals.fromJson(json['externals'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : IImage.fromJson(json['image'] as Map<String, dynamic>),
      summary: json['summary'] as String?,
      updated: json['updated'] as int?,
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShowModuleImplToJson(_$ShowModuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'type': instance.type,
      'language': instance.language,
      'genres': instance.genres,
      'status': instance.status,
      'runtime': instance.runtime,
      'averageRuntime': instance.averageRuntime,
      'premiered': instance.premiered?.toIso8601String(),
      'ended': instance.ended?.toIso8601String(),
      'officialSite': instance.officialSite,
      'schedule': instance.schedule,
      'rating': instance.rating,
      'weight': instance.weight,
      'network': instance.network,
      'webChannel': instance.webChannel,
      'dvdCountry': instance.dvdCountry,
      'externals': instance.externals,
      'image': instance.image,
      'summary': instance.summary,
      'updated': instance.updated,
      'links': instance.links,
    };

_$ExternalsImpl _$$ExternalsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalsImpl(
      tvrage: json['tvrage'] as int?,
      thetvdb: json['thetvdb'] as int?,
      imdb: json['imdb'] as String?,
    );

Map<String, dynamic> _$$ExternalsImplToJson(_$ExternalsImpl instance) =>
    <String, dynamic>{
      'tvrage': instance.tvrage,
      'thetvdb': instance.thetvdb,
      'imdb': instance.imdb,
    };

_$IImageImpl _$$IImageImplFromJson(Map<String, dynamic> json) => _$IImageImpl(
      medium: json['medium'] as String?,
      original: json['original'] as String?,
    );

Map<String, dynamic> _$$IImageImplToJson(_$IImageImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'original': instance.original,
    };

_$LinksImpl _$$LinksImplFromJson(Map<String, dynamic> json) => _$LinksImpl(
      self: json['self'] == null
          ? null
          : Self.fromJson(json['self'] as Map<String, dynamic>),
      previousepisode: json['previousepisode'] == null
          ? null
          : Previousepisode.fromJson(
              json['previousepisode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LinksImplToJson(_$LinksImpl instance) =>
    <String, dynamic>{
      'self': instance.self,
      'previousepisode': instance.previousepisode,
    };

_$PreviousepisodeImpl _$$PreviousepisodeImplFromJson(
        Map<String, dynamic> json) =>
    _$PreviousepisodeImpl(
      href: json['href'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PreviousepisodeImplToJson(
        _$PreviousepisodeImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'name': instance.name,
    };

_$SelfImpl _$$SelfImplFromJson(Map<String, dynamic> json) => _$SelfImpl(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$$SelfImplToJson(_$SelfImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
    };

_$NetworkImpl _$$NetworkImplFromJson(Map<String, dynamic> json) =>
    _$NetworkImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      officialSite: json['officialSite'] as String?,
    );

Map<String, dynamic> _$$NetworkImplToJson(_$NetworkImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'officialSite': instance.officialSite,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      name: json['name'] as String?,
      code: json['code'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'timezone': instance.timezone,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      average: (json['average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'average': instance.average,
    };

_$ScheduleImpl _$$ScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleImpl(
      time: json['time'] as String?,
      days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ScheduleImplToJson(_$ScheduleImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'days': instance.days,
    };
