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
    this.isLiked = false,
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
  final bool isLiked;
  final int reviews;
  final List<String> images;
  final List<ProductDetail> details;

  @override
  List<Object?> get props => [
        libelle,
        description,
        isLiked,
        brand,
        price,
        rate,
        reviews,
        images,
        details,
        renter
      ];

  Product copyWith({
    String? description,
    BrandModel? brand,
    Renter? renter,
    double? price,
    double? rate,
    bool? isLiked,
    int? reviews,
    List<String>? images,
    List<ProductDetail>? details,
  }) {
    return Product(
        id: id,
        isLiked: isLiked ?? this.isLiked,
        libelle: libelle,
        images: images ?? this.images,
        description: description ?? this.description,
        brand: brand ?? this.brand,
        price: price ?? this.price,
        rate: rate ?? this.rate,
        reviews: reviews ?? this.reviews,
        renter: renter ?? this.renter,
        details: details ?? this.details);
  }
}
