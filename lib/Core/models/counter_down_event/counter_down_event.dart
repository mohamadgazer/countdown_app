import 'dart:ui';

class CountdownEvent {
  final int id;
  final String title;
  final DateTime eventDateTime;
  final String? emoji;
  final String? backgroundImagePath;
  final Color? color;

  CountdownEvent(
      {required this.id,
      required this.title,
      required this.eventDateTime,
      this.emoji,
      this.backgroundImagePath,
      this.color});
}
