class Users {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Users(
      {required this.id,
        required this.title,
        required this.userId,
        required this.completed});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      title: json['title'],
      id: json['id'],
      userId: json['userId'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'userId': userId,
      'completed': completed,
    };
  }
}
