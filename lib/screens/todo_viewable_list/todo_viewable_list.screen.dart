export './todo_viewable_list.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_app/database/db.export.dart';
import 'package:todo_app/providers/all_providers.dart';
import 'package:todo_app/screens/todo_viewable_list/todo_viewable_list.state.dart';
import 'package:todo_app/utils/constants.export.dart';
import 'package:todo_app/widgets/widgets.export.dart';

part './todo_viewable_list.notifier.dart';

class TodoViewableList extends HookWidget {
  const TodoViewableList(
      {Key? key,
      required this.title,
      required this.type,
      this.showTabBar = true})
      : super(key: key);
  final String title;
  final TodoType type;
  final bool showTabBar;
  @override
  Widget build(BuildContext context) {
    final _tabController = useTabController(initialLength: 2);
    final state = useProvider(todoViewableListProvider);
    final notifier = useProvider(todoViewableListProvider.notifier);
    final isMounted = useIsMounted();
    useEffect(() {
      if (isMounted()) {
        Future.delayed(Duration.zero, () async {
          await notifier.getTodos(type);
        });
      }
      return;
    }, const []);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: lightAppbar(
        back: true,
        title: title,
        bottomWidget: showTabBar
            ? PreferredSize(
                child: TabBar(
                  overlayColor: MaterialStateProperty.all(Colors.white),
                  labelPadding: const EdgeInsets.all(15),
                  controller: _tabController,
                  tabs: const [
                    Center(child: Text('Todo')),
                    Center(child: Text('Completed'))
                  ],
                  indicatorColor: Colors.white,
                  indicatorWeight: 1,
                  unselectedLabelColor: Colors.white.withOpacity(0.5),
                  labelColor: Colors.white,
                  automaticIndicatorColorAdjustment: true,
                ),
                preferredSize: Size(
                  MediaQuery.of(context).size.width,
                  kToolbarHeight,
                ),
              )
            : null,
      ),
      body: state.isLoading
          ? const GFLoader(type: GFLoaderType.ios)
          : showTabBar
              ? TabBarView(
                  children: [
                    todoListView(
                        state.todos
                            .where((element) => !element.completed)
                            .toList(),
                        notifier),
                    todoListView(
                        state.todos
                            .where((element) => element.completed)
                            .toList(),
                        notifier),
                  ],
                  controller: _tabController,
                )
              : todoListView(state.todos, notifier),
    );
  }

  Widget todoListView(
      List<TODOModel> todosList, TodoVIewableListNotifier notifier) {
    return todosList.isEmpty
        ? const SizedBox.expand(
            child: Center(
              child: Text('No Todos Available'),
            ),
          )
        : ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            itemBuilder: (context, index) => TodoContainer(
              model: todosList[index],
              onCompletedTapped: () {
                notifier.getTodos(type);
                notifier.ref.read(homeProvider.notifier).refresh();
              },
            ),
            itemCount: todosList.length,
          );
  }
}
