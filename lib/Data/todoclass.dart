


class todoData {
  int id;
  String todo;
  bool completed;
  int user_id;

  todoData({
    required this.id,
    required this.todo,
    required this.user_id,
    required this.completed,
  });
  factory todoData.fromJson(Map<String, dynamic> json) {
    return todoData(
        id: json['id'],
        todo: json['todo'],
        user_id: json['userId'],
        completed: json['completed'],
    );
  }
}




