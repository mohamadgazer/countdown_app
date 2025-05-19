import 'package:countdown_app/Core/Utils/month_utils.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:countdown_app/exports.dart';

class EventListBuilder extends StatelessWidget {
  final List<CountdownEvent> elements;

  const EventListBuilder({super.key, required this.elements});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: elements.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const EventDetiailsScreenView();
                },
              ));
            },
            child: Card(
              color: index.isEven ? Colors.black38 : Colors.white,
              child: ListTile(
                trailing: Text(
                  elements[index].eventDateTime.day.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(elements[index].title),
                    Row(
                      children: [
                        Text(
                          "${getMonthName(elements[index].eventDateTime.month)}, ${elements[index].eventDateTime.day.toString()}",
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
                leading: Text(
                  elements[index].emoji.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
