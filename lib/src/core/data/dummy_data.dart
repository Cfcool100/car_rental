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
      contact: '+2250777866181',
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
            contact: '+2250777866181',
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
            contact: '+2250777866181',
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
        ]),
    Product(
        id: 3,
        libelle: 'Mustang',
        renter: Renter(
            avatar: MyImage.images.products.renter3.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '+2250777866181',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.mustang.path,
          MyImage.images.products.mustangBack.path,
          MyImage.images.products.mustang.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand: const BrandModel(libelle: 'Ferrari', image: Brands.ferrari),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '2 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '1000 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ]),
    Product(
        id: 4,
        libelle: 'Mercedes E sw',
        renter: Renter(
            avatar: MyImage.images.products.renter4.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '+2250777866181',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.mercedesProfileLeft.path,
          MyImage.images.products.mercedesFront.path,
          MyImage.images.products.mercedesProfile.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand:
            const BrandModel(libelle: 'Mercedes', image: Brands.mercedes_benz),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '5 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '1200 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ]),
    Product(
        id: 5,
        libelle: 'Audi 5',
        renter: Renter(
            avatar: MyImage.images.products.renter4.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '+2250777866181',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.audi5Front.path,
          MyImage.images.products.audi5Back.path,
          MyImage.images.products.audi5Profile.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand: const BrandModel(libelle: 'Audi 5', image: Brands.audi),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '5 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '1300 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ]),
    Product(
        id: 6,
        libelle: 'Audi Q2 Nardo',
        renter: Renter(
            avatar: MyImage.images.products.renter4.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '+2250777866181',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.audiQ2NardoProfileRight.path,
          MyImage.images.products.audiQ2NardoFront.path,
          MyImage.images.products.audiQ2NardoProfileLeft.path,
          MyImage.images.products.audiQ2NardoBackProfileRight.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand: const BrandModel(libelle: 'Audi Q2 Nardo', image: Brands.audi),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '5 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '1300 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ]),
    Product(
        id: 7,
        libelle: 'Tesla Model Y',
        renter: Renter(
            avatar: MyImage.images.products.renter4.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '+2250777866181',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.teslaModelYProfile.path,
          MyImage.images.products.teslaModelYFront.path,
          MyImage.images.products.teslaModelYBack.path,
        ],
        description:
            'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
        brand: const BrandModel(libelle: 'Audi 5', image: Brands.tesla),
        price: 450.0,
        rate: 4.5,
        reviews: 10,
        details: const [
          ProductDetail(image: Icons.event_seat_outlined, libelle: '5 seats'),
          ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
          ProductDetail(image: Icons.speed_outlined, libelle: '1300 km/h'),
          ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
          ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
        ]),
    Product(
        id: 8,
        libelle: 'Bmw_4_serisi',
        renter: Renter(
            avatar: MyImage.images.products.renter2.path,
            name: 'Youssouf',
            username: 'Youssouf',
            contact: '+2250777866181',
            email: 'email@gmail.com'),
        images: [
          MyImage.images.products.bmw4SerisiProfile.path,
          MyImage.images.products.bmw4SerisiInterior.path,
          MyImage.images.products.bmw4SerisiBack.path,
          MyImage.images.products.bmw4SerisiRightSide.path,
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
        ]),
    // Product(
    //   id: 9,
    //     libelle: 'Mustang',
    //     renter: Renter(
    //         avatar: MyImage.images.products.renter3.path,
    //         name: 'Youssouf',
    //         username: 'Youssouf',
    //         contact: '+2250777866181',
    //         email: 'email@gmail.com'),
    //     images: [
    //       MyImage.images.products.mustang.path,
    //       MyImage.images.products.mustangBack.path,
    //       MyImage.images.products.mustang.path,
    //     ],
    //     description:
    //         'The Maruti Suzuki Alto is good city runabout that\'s quite zippy to drive. Like lorem ipsum dolor in the world and the people that have the samwell and the Maruti.',
    //     brand: const BrandModel(libelle: 'Ferrari', image: Brands.ferrari),
    //     price: 450.0,
    //     rate: 4.5,
    //     reviews: 10,
    //     details: const [
    //       ProductDetail(image: Icons.event_seat_outlined, libelle: '2 seats'),
    //       ProductDetail(image: IonIcons.battery_charging, libelle: '510 Hp'),
    //       ProductDetail(image: Icons.speed_outlined, libelle: '1000 km/h'),
    //       ProductDetail(image: FontAwesomeIcons.mapPin, libelle: 'Auto'),
    //       ProductDetail(image: CupertinoIcons.briefcase, libelle: '2 Bags'),
    //     ]),
  ];
}
