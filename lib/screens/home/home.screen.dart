export './home.state.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
export '../../database/db.export.dart';
import 'package:getwidget/components/loader/gf_loader.dart';
import 'package:getwidget/types/gf_loader_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/database/db.export.dart';
import 'package:todo_app/providers/all_providers.dart';
import 'package:todo_app/screens/screens.export.dart';
import 'package:todo_app/utils/constants.export.dart';
import 'package:todo_app/widgets/appbars.dart';
import 'package:todo_app/widgets/widgets.export.dart';
import './widgets/widgets.export.dart';
import './home.state.dart';
part 'home.notifier.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = useProvider(homeProvider);
    final notifier = useProvider(homeProvider.notifier);
    final isMounted = useIsMounted();
    useEffect(() {
      if (isMounted()) {
        Future.delayed(Duration.zero, () async {
          await notifier.fetchHome();
        });
      }
      return;
    }, const []);
    return Scaffold(
      appBar: lightAppbar(title: 'TODOS'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddTodoScreen());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: RefreshIndicator(
        onRefresh: notifier.refresh,
        child: state.isLoading
            ? const Center(child: GFLoader(type: GFLoaderType.ios))
            : ListView(
                padding: const EdgeInsets.all(10),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                children: [
                  if (state.overDueTodo.isNotEmpty)
                    todoListBlock(
                        state.overDueTodo, 'OverDue', TodoType.OVERDUE,
                        showTabBar: false),
                  todoListBlock(
                      state.importantTodo, 'Important', TodoType.IMPORTANT),
                  todoListBlock(state.todaysTodo, 'Today', TodoType.TODAY),
                  todoListBlock(
                      state.tomorrowsTodo, 'Tomorrow', TodoType.TOMORROW),
                  todoListBlock(
                      state.completedTodo, 'Completed', TodoType.COMPLETED,
                      showTabBar: false),
                ],
              ),
      ),
    );
  }

  Widget todoListBlock(List<TODOModel> todos, String title, TodoType type,
      {bool showTabBar = true}) {
    final sortedTodos = todos.where((element) => !element.completed).toList();
    sortedTodos.addAll(todos.where((element) => element.completed));
    final totalCount = todos.length;
    final completedCount = todos.where((element) => element.completed).length;
    final remainingCount = totalCount - completedCount;
    return Box(
      bgColor:
          title.toLowerCase() == 'overdue' ? Colors.red[200]! : Colors.white,
      borderRadius: 8,
      margin: true,
      edgeInsets: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TitleWidget(
            title: title,
            onTap: () {
              Get.to(() => TodoViewableList(
                    title: title,
                    type: type,
                    showTabBar: showTabBar,
                  ));
            },
          ),
          CountViewerWidget(
            completedCount: completedCount,
            remainingCount: remainingCount,
            totalCount: totalCount,
          ),
          const SizedBox(
            height: 7,
          ),
          const Divider(
            color: Colors.black26,
            thickness: 2,
          ),
          const SizedBox(
            height: 7,
          ),
          if (todos.isEmpty)
            SizedBox.fromSize(
              size: const Size.fromHeight(100),
              child: const Center(
                child: Text(
                  'No Todos Available',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          if (todos.isNotEmpty)
            ...List.generate(
              todos.length < 5 ? todos.length : 4,
              (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: TodoContainer(
                    model: sortedTodos[index],
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
