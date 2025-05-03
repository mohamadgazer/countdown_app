import 'package:countdown_app/Core/Utils/constant.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void insertDummyEvents() async {
  final box = await Hive.openBox<CountdownEvent>(Constk.events);
  final events = [
    CountdownEvent(
      id: 1,
      title: 'فرحي 🎉',
      eventDateTime: DateTime.now().add(const Duration(days: 30)),
      emoji: '💍',
      color: Colors.pinkAccent,
    ),
    CountdownEvent(
      id: 2,
      title: 'سفر دبي ✈️',
      eventDateTime: DateTime.now().add(const Duration(days: 10)),
      emoji: '🌆',
      color: Colors.blueAccent,
    ),
    CountdownEvent(
      id: 3,
      title: 'اجازة العيد 🕌',
      eventDateTime: DateTime.now().add(const Duration(days: 5)),
      emoji: '🎊',
      color: Colors.green,
    ),
  ];

  for (final e in events) {
    box.add(e);
  }
}
