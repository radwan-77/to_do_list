class TaskModel {
  String title;
  String? subtitle;
  // String? subtask;
  bool isCompleted;
  // String? priority;
  // DateTime? done;
  DateTime createdAt;
  TaskModel(
      {required this.title,
      this.subtitle,
      this.isCompleted = false,
      required this.createdAt});
}
