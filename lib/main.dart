import 'package:countdown_app/Core/Utils/hive/hive_service.dart';
import 'package:countdown_app/Futures/home/cubit/countdown_cubit.dart';
import 'package:countdown_app/exports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get the app's documents directory
  final appDocDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocDir.path);

  // Register Hive adapters here
  // Hive.registerAdapter(CountdownEventAdapter());
  await HiveService.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountdownCubit()..loadevents(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        home: const HomeView(),
      ),
    );
  }
}
