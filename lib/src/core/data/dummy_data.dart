import 'package:car_rental/src/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyData {
  ///
  /// USER
  ///
  static User user = User(
      avatar: MyImage.images.products.user.path,
      address: 'Libreville, Gabon',
      name: 'Youssouf',
      username: 'Youssouf',
      contact: '0700000000',
      email: 'email@gmail.com');

  ///
  /// brands
  static const brands = <BrandModel>[
    BrandModel(
      libelle: 'Tesla',
      image: Brands.tesla,
    ),
    BrandModel(
      libelle: 'Mercedes',
      image: Brands.mercedes_benz,
    ),
    BrandModel(
      libelle: 'Audi',
      image: Brands.audi,
    ),
    BrandModel(
      libelle: 'Nissan',
      image: Brands.nissan,
    ),
    BrandModel(
      libelle: 'Ferrari',
      image: Brands.ferrari,
    )
  ];

  ///
  /// products
  static List<Product> products = <Product>[
    Product(
      id: 1,
        renter: Renter(
            avatar: MyImage.images.products.renter1.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '0700000000',
            email: 'email@gmail.com'),
        libelle: 'Tesla',
        images: [
          MyImage.images.products.tesla1.path,
          MyImage.images.products.tesla2.path,
          MyImage.images.products.tesla3.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand: const BrandModel(libelle: 'Tesla', image: Brands.tesla),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '5 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '200 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ]),
    Product(
      id: 2,
        libelle: 'BMW',
        renter: Renter(
            avatar: MyImage.images.products.renter2.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '0700000000',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.bmw1.path,
          MyImage.images.products.bmw2.path,
          MyImage.images.products.bmw3.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand: const BrandModel(libelle: 'BMW', image: Brands.bmw),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '5 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '200 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ])
  ];
}
