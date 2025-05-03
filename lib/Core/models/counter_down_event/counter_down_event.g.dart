// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_down_event.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CountdownEventAdapter extends TypeAdapter<CountdownEvent> {
  @override
  final int typeId = 0;

  @override
  CountdownEvent read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CountdownEvent(
      id: fields[0] as int,
      title: fields[1] as String,
      eventDateTime: fields[2] as DateTime,
      emoji: fields[3] as String?,
      backgroundImagePath: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, CountdownEvent obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.eventDateTime)
      ..writeByte(3)
      ..write(obj.emoji)
      ..writeByte(4)
      ..write(obj.backgroundImagePath)
      ..writeByte(5)
      ..write(obj.colorValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountdownEventAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
