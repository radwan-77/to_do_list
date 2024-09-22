import 'package:flutter/material.dart';
import 'package:to_do_list/Model/task_model.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key, required this.taskModel});
  final TaskModel taskModel;

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_new)),
          title: Text(widget.taskModel.title),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              Text(
                "title  " + widget.taskModel.title,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              widget.taskModel.isCompleted
                  ? Icon(
                      Icons.close,
                      size: 150,
                    )
                  : Icon(
                      Icons.check,
                      size: 150,
                      color: Colors.green,
                    ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Icon(
                  Icons.access_alarm,
                  size: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                if (widget.taskModel.subtitle != null)
                  Text(
                    "subtitle:  " + widget.taskModel.subtitle!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
