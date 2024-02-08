import 'package:equatable/equatable.dart';
import 'package:car_rental/src/core/core.dart';

class Product extends Equatable {
  const Product({
    required this.id,
    required this.libelle,
    required this.images,
    required this.description,
    required this.brand,
    required this.price,
    required this.rate,
    required this.reviews,
    required this.renter,
    required this.details,
  });
  // parametre nommé
  final String libelle;
  final int id;
  final String description;
  final BrandModel brand;
  final Renter renter;
  final double price;
  final double rate;
  final int reviews;
  final List<String> images;
  final List<ProductDetail> details;

  @override
  List<Object?> get props => [
        libelle,
        description,
        brand,
        price,
        rate,
        reviews,
        images,
        details,
        renter
      ];
}
