class UserQuizz {
  final String ? userId;
  final int? quizzId;
  final int? points;

  UserQuizz({
    this.userId, 
    this.quizzId, 
    this.points
  });

  factory UserQuizz.fromJson(Map<String, dynamic> json) {
    return UserQuizz(
      userId: json['userId'],
      quizzId: json['quizzId'] is int
          ? json['quizzId']
          : int.parse(json['quizzId']),
      points: json['points'] is int
          ? json['points']
          : int.parse(json['points']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'quizzId': quizzId,
      'points': points,
    };
  }
  
}