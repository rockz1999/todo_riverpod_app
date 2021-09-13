import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'todo_model.adapter.g.dart';

@HiveType(typeId: 0)
class TODOModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  DateTime date;
  @HiveField(3)
  bool _completed = false;
  @HiveField(4)
  bool _important = false;

  TODOModel(
      {required this.title,
      required this.description,
      bool completed = false,
      bool important = false,
      required this.date}) {
    _completed = completed;
    _important = important;
  }

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [title, description, date, _completed, _important];

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date.millisecondsSinceEpoch,
      'completed': _completed,
      'important': _important,
    };
  }

  factory TODOModel.fromMap(Map<String, dynamic> map) {
    return TODOModel(
      title: map['title'],
      description: map['description'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      completed: map['completed'],
      important: map['important'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TODOModel.fromJson(String source) =>
      TODOModel.fromMap(json.decode(source));

  TODOModel copyWith({
    String? title,
    String? description,
    DateTime? date,
    bool? completed,
    bool? important,
  }) {
    return TODOModel(
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      completed: completed ?? _completed,
      important: important ?? _important,
    );
  }

  bool get completed => _completed;
  bool get important => _important;
  void toggleCompleted() {
    _completed = !_completed;
    save();
  }

  void toggleImportant() {
    _important = !_important;
    save();
  }

  bool get isOverdue {
    final now = DateTime.now();
    return date.isBefore(DateTime(now.year, now.month, now.day));
  }
}
