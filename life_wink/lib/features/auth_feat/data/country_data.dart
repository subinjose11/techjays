import 'package:flutter/material.dart';

final List<Map<String, dynamic>> countries = [
  {
    "code": "US",
    "flag": "assets/flags/us_flag.svg",
    "name": "United States",
    "phoneCode": "+1"
  },
  {
    "code": "CA",
    "flag": "assets/flags/ca_flag.svg",
    "name": "Canada",
    "phoneCode": "+1"
  },
  {
    "code": "GB",
    "flag": "assets/flags/gb_flag.svg",
    "name": "United Kingdom",
    "phoneCode": "+44"
  },
  {
    "code": "FR",
    "flag": "assets/flags/fr_flag.svg",
    "name": "France",
    "phoneCode": "+33"
  },
  {
    "code": "DE",
    "flag": "assets/flags/de_flag.svg",
    "name": "Germany",
    "phoneCode": "+49"
  },
  {
    "code": "AU",
    "flag": "assets/flags/au_flag.svg",
    "name": "Australia",
    "phoneCode": "+61"
  },
  {
    "code": "JP",
    "flag": "assets/flags/jp_flag.svg",
    "name": "Japan",
    "phoneCode": "+81"
  },
  {
    "code": "KR",
    "flag": "assets/flags/kr_flag.svg",
    "name": "South Korea",
    "phoneCode": "+82"
  },
  {
    "code": "CN",
    "flag": "assets/flags/cn_flag.svg",
    "name": "China",
    "phoneCode": "+86"
  },
  {
    "code": "IN",
    "flag": "assets/flags/in_flag.svg",
    "name": "India",
    "phoneCode": "+91"
  },
  {
    "code": "BR",
    "flag": "assets/flags/br_flag.svg",
    "name": "Brazil",
    "phoneCode": "+55"
  },
  {
    "code": "RU",
    "flag": "assets/flags/ru_flag.svg",
    "name": "Russia",
    "phoneCode": "+7"
  },
  {
    "code": "SA",
    "flag": "assets/flags/sa_flag.svg",
    "name": "Saudi Arabia",
    "phoneCode": "+966"
  },
  {
    "code": "ZA",
    "flag": "assets/flags/za_flag.svg",
    "name": "South Africa",
    "phoneCode": "+27"
  },
  {
    "code": "NG",
    "flag": "assets/flags/ng_flag.svg",
    "name": "Nigeria",
    "phoneCode": "+234"
  },
  {
    "code": "EG",
    "flag": "assets/flags/eg_flag.svg",
    "name": "Egypt",
    "phoneCode": "+20"
  },
  {
    "code": "MX",
    "flag": "assets/flags/mx_flag.svg",
    "name": "Mexico",
    "phoneCode": "+52"
  },
  {
    "code": "AR",
    "flag": "assets/flags/ar_flag.svg",
    "name": "Argentina",
    "phoneCode": "+54"
  },
  {
    "code": "IT",
    "flag": "assets/flags/it_flag.svg",
    "name": "Italy",
    "phoneCode": "+39"
  },
  {
    "code": "ES",
    "flag": "assets/flags/es_flag.svg",
    "name": "Spain",
    "phoneCode": "+34"
  },
];

const dimenHeight16 = SizedBox(
  height: 16,
);

List<Map<String, dynamic>> getCountries(String query) {
  if (query.isEmpty) {
    return countries;
  } else {
    return countries.where((country) {
      return country['name'].toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
