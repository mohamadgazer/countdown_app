import 'package:countdown_app/exports.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  '/home': (context) => const HomeView(),
  '/addEventScreen': (context) => const AddEventScreenView(),
  '/EventDetiailsScreen': (context) => const EventDetiailsScreenView(),
};
