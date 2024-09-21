import 'package:flutter/material.dart';
import 'package:to_do_list/Model/task_model.dart';
import 'package:to_do_list/widget/cards/task_card.dart';
import 'package:to_do_list/widget/dialog/add_task_dialog';

class TabBarScreen extends StatefulWidget {
  // Convert to StatefulWidget
  const TabBarScreen({super.key});

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<TaskModel> tasks = []; // Define tasks as part of the state

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController taskTitleController = TextEditingController();
  TextEditingController taskSubtitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AddTaskDialog(
                    titleController: taskTitleController,
                    subTitleController: taskSubtitleController,
                    formKey: formKey,
                    onTap: () {
                      tasks.add(TaskModel(
                          title: taskTitleController.text,
                          subtitle: taskSubtitleController.text.isEmpty
                              ? null
                              : taskSubtitleController.text,
                          createdAt: DateTime.now()));
                      setState(() {});

                      taskTitleController.clear();
                      taskSubtitleController.clear();

                      Navigator.pop(context);
                    });
              });
        },
      ),
      appBar: AppBar(
        title: const Text("TODO"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              isScrollable: false,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  text: "Waiting",
                ),
                Tab(
                  text: "Completed",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ListView.builder(
                    padding: const EdgeInsets.all(24),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return tasks[index].isCompleted
                          ? const SizedBox()
                          : TaskCard(
                              taskModel: tasks[index],
                              onTap: () {
                                setState(() {
                                  tasks[index].isCompleted =
                                      !tasks[index].isCompleted;
                                });
                              });
                    },
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.all(24),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return !tasks[index].isCompleted
                          ? const SizedBox()
                          : TaskCard(
                              taskModel: tasks[index],
                              onTap: () {
                                setState(() {
                                  tasks[index].isCompleted =
                                      !tasks[index].isCompleted;
                                });
                              });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
