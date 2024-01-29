import 'package:car_rental/src/core/core.dart';

class PageRoutes {
  static const String onboarding = '/';
  static const String home = 'home';
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
}
