import 'package:countdown_app/Core/Utils/constant.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
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
