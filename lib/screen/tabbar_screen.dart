import 'package:flutter/material.dart';
import 'package:to_do_list/Model/task_model.dart';

class TabBarScreen extends StatefulWidget {
  // Convert to StatefulWidget
  const TabBarScreen({super.key});

  @override
  _TabBarScreenState createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  List<TaskModel> tasks = []; // Define tasks as part of the state

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(
                    text: "waiting",
                  ),
                  Tab(
                    text: "Completed",
                  )
                ]),
            Expanded(
              child: TabBarView(children: [
                ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return tasks[index].isCompleted
                          ? SizedBox()
                          : ListTile(
                              trailing: Checkbox(
                                value: tasks[index].isCompleted,
                                onChanged: (check) {
                                  setState(() {
                                    tasks[index].isCompleted =
                                        !tasks[index].isCompleted;
                                  });
                                },
                              ),
                              title: Text(tasks[index].title),
                              subtitle: Text(tasks[index].subtitle.toString()),
                            );
                    }),
                const Text("comp")
              ]),
            )
          ],
        ));
  }
}
