// ملف: home_view.dart

import 'package:countdown_app/Core/Utils/hive/hive_service.dart';
import 'package:countdown_app/Core/Utils/month_utils.dart';
import 'package:countdown_app/Core/models/counter_down_event/counter_down_event.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<CountdownEvent> test = HiveService.eventsBox.values.map(
      (e) {
        return e;
      },
    ).toList();
    return Column(
      children: [
        ...List.generate(
          test.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: index.isEven ? Colors.black38 : Colors.white,
                child: ListTile(
                  trailing: Text(
                    test[index].eventDateTime.day.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(test[index].title),
                      Row(
                        children: [
                          Text(
                            "${getMonthName(test[index].eventDateTime.month)}, ${test[index].eventDateTime.day.toString()}",
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                  leading: Text(
                    test[index].emoji.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
