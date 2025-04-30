import 'package:countdown_app/exports.dart';

import '../Widgets/event_detiails_screen_body.dart';

class EventDetiailsScreenView extends StatelessWidget {
  const EventDetiailsScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EventDetiailsScreen View'),
      ),
      body: const EventDetiailsScreenBody(),
    );
  }
}
