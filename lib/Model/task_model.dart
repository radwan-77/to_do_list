import 'package:flutter/material.dart';

class TaskModel {
  String title;
  String? subtitle;
  bool isCompleted;
  TaskModel({required this.title, this.subtitle, this.isCompleted = false});
}
