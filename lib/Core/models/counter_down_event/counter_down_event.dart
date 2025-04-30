import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'counter_down_event.g.dart';

@HiveType(typeId: 0)
class CountdownEvent {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final DateTime eventDateTime;

  @HiveField(3)
  final String? emoji;

  @HiveField(4)
  final String? backgroundImagePath;

  @HiveField(5)
  final int? colorValue; // هنخزن اللون كـ int

  CountdownEvent({
    required this.id,
    required this.title,
    required this.eventDateTime,
    this.emoji,
    this.backgroundImagePath,
    Color? color,
  }) : colorValue = color?.value;

  Color? get color => colorValue != null ? Color(colorValue!) : null;
}
