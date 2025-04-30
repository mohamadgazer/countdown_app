import 'package:countdown_app/exports.dart';

import '../Widgets/add_event_screen_body.dart';

class AddEventScreenView extends StatelessWidget {
  const AddEventScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('addEventScreen View'),
      ),
      body: const AddEventScreenBody(),
    );
  }
}
