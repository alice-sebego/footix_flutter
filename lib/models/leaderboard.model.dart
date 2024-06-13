class Leaderboard {
  final int id;
  // ignore: non_constant_identifier_names
  final String? user_id;

  Leaderboard({
    required this.id,
    // ignore: non_constant_identifier_names
    this.user_id,
  });

  factory Leaderboard.fromJson(Map<String, dynamic> json) {
    return Leaderboard(
      id: json['id'] is int ? json['id'] : int.parse(json['id']),
      user_id: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': user_id,
    };
  }
}