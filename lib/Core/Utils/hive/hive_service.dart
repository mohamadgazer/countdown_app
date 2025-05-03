import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:countdown_app/constant.dart';
import 'package:countdown_app/exports.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Future<void> init() async {
    final appDir = await getApplicationDocumentsDirectory();
    Hive.init(appDir.path);
    Hive.registerAdapter(CountdownEventAdapter());

    await Hive.openBox<CountdownEvent>('events');
  }

  static Box<CountdownEvent> get eventsBox =>
      Hive.box<CountdownEvent>(Constk.events);
}

void insertDummyEvents() {
  final box = Hive.openBox(Constk.events);
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
    database.insertEvent(e);
  }
}
