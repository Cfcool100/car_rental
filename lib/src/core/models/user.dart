import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.avatar,
    required this.address,
    required this.name,
    required this.username,
    required this.contact,
    required this.email,
  });
  // parametre nommé
  final String avatar;
  final String address;
  final String name;
  final String username;
  final String contact;
  final String email;

  @override
  List<Object?> get props => [avatar, address, name, username, contact, email];
}
