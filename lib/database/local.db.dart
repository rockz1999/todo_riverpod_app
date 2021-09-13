import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'db.export.dart';

class DB {
  static late final Box<TODOModel> todoHiveBox;
  Future<void> initDatabase() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TODOModelAdapter());
    const secureStorage = FlutterSecureStorage();
    var containsEncryptionKey = await secureStorage.containsKey(key: 'key');
    if (!containsEncryptionKey) {
      var key = Hive.generateSecureKey();
      await secureStorage.write(key: 'key', value: base64UrlEncode(key));
    }

    var encryptionKey =
        base64Url.decode((await secureStorage.read(key: 'key'))!);
    todoHiveBox = await Hive.openBox(
      'todos',
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  void closeDatabase() async {
    await todoHiveBox.compact();
    await todoHiveBox.close();
  }

  void clearDatabase() async {
    await todoHiveBox.clear();
  }

  List<TODOModel> getAllTodos({bool onlyNonCompleted = false}) {
    final todos = todoHiveBox.values
        .where((element) => onlyNonCompleted ? !element.completed : true)
        .toList();
    return todos;
  }

  List<TODOModel> getTodaysTodos({bool onlyNonCompleted = false}) {
    final todos = todoHiveBox.values
        .where((element) => onlyNonCompleted ? !element.completed : true)
        .toList();
    final today = DateTime.now();
    return todos
        .where((element) =>
            element.date == DateTime(today.year, today.month, today.day))
        .toList();
  }

  List<TODOModel> getTommorrowsTodos({bool onlyNonCompleted = false}) {
    final todos = todoHiveBox.values
        .where((element) => onlyNonCompleted ? !element.completed : true)
        .toList();
    final today = DateTime.now();
    final tom = today.add(const Duration(days: 1));

    return todos
        .where(
            (element) => element.date == DateTime(tom.year, tom.month, tom.day))
        .toList();
  }

  List<TODOModel> getOverDueTodos() {
    final todos =
        todoHiveBox.values.where((element) => !element.completed).toList();
    final today = DateTime.now();
    return todos
        .where((element) =>
            element.date.isBefore(DateTime(today.year, today.month, today.day)))
        .toList();
  }

  List<TODOModel> getImportantTodos() {
    final todos =
        todoHiveBox.values.where((element) => !element.completed).toList();
    return todos.where((element) => element.important).toList();
  }

  List<TODOModel> getCompletedTodos() {
    return todoHiveBox.values.where((element) => element.completed).toList();
  }

  Future<void> addTodo(TODOModel todo) async {
    await todoHiveBox.add(todo);
  }

  Future<void> editTodo(TODOModel todo) async {
    await todo.save();
  }
}
