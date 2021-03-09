import 'dart:convert';

import 'package:getx_example/app/modules/home/domain/entities/cases_entity.dart';

class CasesModel extends Cases {
  final GlobalModel? global;
  final List<CountryModel>? countries;

  CasesModel({
    this.global,
    this.countries,
    String? date,
  }) : super(
          global: global,
          countries: countries,
          date: date,
        );

  static CasesModel fromRawJson(String str) =>
      CasesModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  static CasesModel fromJson(dynamic json) => CasesModel(
        global: json["Global"] == null
            ? null
            : GlobalModel.fromJson(json["Global"] as Map<String, dynamic>),
        countries: json["Countries"] == null
            ? null
            : List<CountryModel>.from(
                (json["Countries"] as List<dynamic>).map(
                    (x) => CountryModel.fromJson(x as Map<String, dynamic>)),
              ),
        date: json["Date"] == null ? null : json["Date"] as String,
      );

  Map<String, dynamic> toJson() => {
        "Global": global == null ? null : global!.toJson(),
        "Countries": countries == null
            ? null
            : List<dynamic>.from(countries!.map((x) => x.toJson())),
        "Date": date == null ? null : date,
      };
}

class CountryModel extends Country {
  CountryModel({
    String? country,
    String? countryCode,
    String? slug,
    int? newConfirmed,
    int? totalConfirmed,
    int? newDeaths,
    int? totalDeaths,
    int? newRecovered,
    int? totalRecovered,
    String? date,
  }) : super(
          country: country,
          countryCode: countryCode,
          slug: slug,
          newConfirmed: newConfirmed,
          totalConfirmed: totalConfirmed,
          newDeaths: newDeaths,
          totalDeaths: totalDeaths,
          newRecovered: newRecovered,
          totalRecovered: totalRecovered,
          date: date,
        );

  factory CountryModel.fromRawJson(String str) =>
      CountryModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        country: json["Country"] == null ? null : json["Country"] as String,
        countryCode:
            json["CountryCode"] == null ? null : json["CountryCode"] as String,
        slug: json["Slug"] == null ? null : json["Slug"] as String,
        newConfirmed:
            json["NewConfirmed"] == null ? null : json["NewConfirmed"] as int,
        totalConfirmed: json["TotalConfirmed"] == null
            ? null
            : json["TotalConfirmed"] as int,
        newDeaths: json["NewDeaths"] == null ? null : json["NewDeaths"] as int,
        totalDeaths:
            json["TotalDeaths"] == null ? null : json["TotalDeaths"] as int,
        newRecovered:
            json["NewRecovered"] == null ? null : json["NewRecovered"] as int,
        totalRecovered: json["TotalRecovered"] == null
            ? null
            : json["TotalRecovered"] as int,
        date: json["Date"] == null ? null : json["Date"] as String,
      );

  Map<String, dynamic> toJson() => {
        "Country": country == null ? null : country,
        "CountryCode": countryCode == null ? null : countryCode,
        "Slug": slug == null ? null : slug,
        "NewConfirmed": newConfirmed == null ? null : newConfirmed,
        "TotalConfirmed": totalConfirmed == null ? null : totalConfirmed,
        "NewDeaths": newDeaths == null ? null : newDeaths,
        "TotalDeaths": totalDeaths == null ? null : totalDeaths,
        "NewRecovered": newRecovered == null ? null : newRecovered,
        "TotalRecovered": totalRecovered == null ? null : totalRecovered,
        "Date": date == null ? null : date,
      };
}

class GlobalModel extends Global {
  GlobalModel({
    int? newConfirmed,
    int? totalConfirmed,
    int? newDeaths,
    int? totalDeaths,
    int? newRecovered,
    int? totalRecovered,
  }) : super(
          newConfirmed: newConfirmed,
          totalConfirmed: totalConfirmed,
          newDeaths: newDeaths,
          totalDeaths: totalDeaths,
          newRecovered: newRecovered,
          totalRecovered: totalRecovered,
        );

  factory GlobalModel.fromRawJson(String str) =>
      GlobalModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory GlobalModel.fromJson(Map<String, dynamic> json) => GlobalModel(
        newConfirmed:
            json["NewConfirmed"] == null ? null : json["NewConfirmed"] as int,
        totalConfirmed: json["TotalConfirmed"] == null
            ? null
            : json["TotalConfirmed"] as int,
        newDeaths: json["NewDeaths"] == null ? null : json["NewDeaths"] as int,
        totalDeaths:
            json["TotalDeaths"] == null ? null : json["TotalDeaths"] as int,
        newRecovered:
            json["NewRecovered"] == null ? null : json["NewRecovered"] as int,
        totalRecovered: json["TotalRecovered"] == null
            ? null
            : json["TotalRecovered"] as int,
      );

  Map<String, dynamic> toJson() => {
        "NewConfirmed": newConfirmed == null ? null : newConfirmed,
        "TotalConfirmed": totalConfirmed == null ? null : totalConfirmed,
        "NewDeaths": newDeaths == null ? null : newDeaths,
        "TotalDeaths": totalDeaths == null ? null : totalDeaths,
        "NewRecovered": newRecovered == null ? null : newRecovered,
        "TotalRecovered": totalRecovered == null ? null : totalRecovered,
      };
}
