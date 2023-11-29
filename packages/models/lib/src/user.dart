import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class User extends Equatable {
  final String id;
  final String username;
  final String phone;
  final String email;
  final String avatarUrl;
  final String status;

  const User({
    required this.id,
    required this.username,
    required this.phone,
    required this.email,
    required this.avatarUrl,
    required this.status,
  });

  User copyWith({
    String? id,
    String? username,
    String? phone,
    String? email,
    String? avatarUrl,
    String? status,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      status: status ?? this.status,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String? ?? const Uuid().v4(),
      username: json['username'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      avatarUrl: json['avatar_url'] as String? ?? 'https://source.unsplash.com/random/?profile',
      status: json['status'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'phone': phone,
      'email': email,
      'avatarUrl': avatarUrl,
      'status': status,
    };
  }

  @override
  List<Object?> get props => [id, username, phone, email, avatarUrl, status];
}
