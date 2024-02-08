import 'package:equatable/equatable.dart';

class Renter extends Equatable {
  const Renter({
    required this.avatar,
    required this.name,
    required this.username,
    required this.contact,
    required this.email,
  });
  // parametre nommé
  final String avatar;
  final String name;
  final String username;
  final String contact;
  final String email;

  @override
  List<Object?> get props => [avatar, name, username, contact, email];
}
