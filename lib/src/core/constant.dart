import 'package:car_rental/src/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageRoutes {
  static const String onboarding = '/';
  static const String home = 'home';
  static const String searchPage = 'search';
  static const String detailPage = 'detail-page';
}

class Data {
  static List<String> brand = [
    Brands.mercedes_benz,
    Brands.audi,
    Brands.tesla,
    Brands.nissan,
    Brands.ferrari,
  ];
  static List<String> brandname = const [
    'Mercedes',
    'Audi',
    'Tesla',
    'Nissan',
    'Ferrari',
  ];
  static List<String> productsImg = [
    MyImage.images.products.bmw4Serisi.path,
    MyImage.images.products.bmwX1.path,
    MyImage.images.products.tesla.path,
  ];
  static List<String> productsName = [
    'BMW 4 Serisi',
    'BMW X 1',
    'Tesla',
  ];
  static List<String> productsPrice = [
    MyImage.images.products.bmw4Serisi.path,
    MyImage.images.products.bmwX1.path,
    MyImage.images.products.tesla.path,
  ];

  static Map<String, List<Map<String, dynamic>>> characteristic = {
    'data': [
      {
        'title': '5 seats',
        'icon': Icons.event_seat_outlined,
      },
      {
        'title': '510 Hp',
        'icon': IonIcons.battery_charging,
      },
      {
        'title': '200 km/h',
        'icon': Icons.speed_outlined,
      },
      {
        'title': 'Auto',
        'icon': FontAwesomeIcons.mapPin,
      },
      {
        'title': '2 Bags',
        'icon': CupertinoIcons.briefcase,
      },
    ],
  };
}
