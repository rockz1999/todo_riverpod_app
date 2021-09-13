// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TODOModelAdapter extends TypeAdapter<TODOModel> {
  @override
  final int typeId = 0;

  @override
  TODOModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TODOModel(
      title: fields[0] as String,
      description: fields[1] as String,
      date: fields[2] as DateTime,
    )
      .._completed = fields[3] as bool
      .._important = fields[4] as bool;
  }

  @override
  void write(BinaryWriter writer, TODOModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj._completed)
      ..writeByte(4)
      ..write(obj._important);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TODOModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
