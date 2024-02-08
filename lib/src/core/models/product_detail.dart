import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ProductDetail extends Equatable {
  const ProductDetail({
    required this.libelle,
    required this.image,
  });
  // parametre nommé
  final String libelle;
  final IconData image;

  @override
  List<Object?> get props => [libelle, image];
}
