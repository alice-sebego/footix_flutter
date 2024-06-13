enum Role {
  admin,
  gamer,
  superadmin,
}

enum Status {
  footix,
  medium,
  nofootix,
}

class User {
  final String id;
  final String username;
  final String email;
  final String? password;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Role? role;
  final Status? status;
  final String? picture;
  final int? accumulatedPoints;
  final bool? rgpd;

  User({
    required this.id,
    required this.username,
    required this.email,
    this.password,
    this.createdAt,
    this.updatedAt,
    this.role,
    this.status,
    this.picture,
    this.accumulatedPoints,
    this.rgpd,
  });

  // Deserialisation
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      createdAt: json['createdAt'] != null ? DateTime.parse(json['createdAt']) : null,
      updatedAt: json['updatedAt'] != null ? DateTime.parse(json['updatedAt']) : null,
      role: json['role'] != null ? Role.values.byName(json['role']) : null,
      status: json['status'] != null ? Status.values.byName(json['status']) : null,
      picture: json['picture'],
      accumulatedPoints: json['accumulated_points'],
      rgpd: json['rgpd'],
    );
  }

  // Serialisation
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'createdAt': createdAt?.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
      'role': role?.name,
      'status': status?.name,
      'picture': picture,
      'accumulated_points': accumulatedPoints,
      'rgpd': rgpd,
    };
  }
}

