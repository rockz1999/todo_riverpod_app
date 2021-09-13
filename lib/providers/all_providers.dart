import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../database/db.export.dart';
import '../screens/screens.export.dart';

final dbProvider = Provider((ref) => DB());
final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
    (ref) => HomeNotifier(ref));

final addTodoProvider =
    StateNotifierProvider.autoDispose<AddTodoNotifier, AddTodoState>(
        (ref) => AddTodoNotifier(ref));
final todoViewableListProvider = StateNotifierProvider.autoDispose<
    TodoVIewableListNotifier,
    TodoVIewableListState>((ref) => TodoVIewableListNotifier(ref));
