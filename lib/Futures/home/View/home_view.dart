import 'package:countdown_app/exports.dart';

import '../Widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('count Down'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const AddEventScreenView();
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
      body: const HomeBody(),
    );
  }
}
