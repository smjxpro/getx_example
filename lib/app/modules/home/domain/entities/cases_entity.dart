class Cases {
  final Global? global;
  final List<Country>? countries;
  final String? date;

  Cases({
    this.global,
    this.countries,
    this.date,
  });
}

class Country {
  final String? country;
  final String? countryCode;
  final String? slug;
  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;
  final String? date;

  Country({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });
}

class Global {
  final int? newConfirmed;
  final int? totalConfirmed;
  final int? newDeaths;
  final int? totalDeaths;
  final int? newRecovered;
  final int? totalRecovered;

  Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });
}
