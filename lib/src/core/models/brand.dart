import 'package:equatable/equatable.dart';

class BrandModel extends Equatable {
  const BrandModel({
    required this.libelle,
    required this.image,
  });
  // parametre nommé
  final String libelle;
  final String image;

  @override
  List<Object?> get props => [libelle, image];
}
