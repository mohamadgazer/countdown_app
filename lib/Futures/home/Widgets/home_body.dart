// ملف: home_view.dart

import 'package:countdown_app/Core/Utils/hive/hive_service.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> test = HiveService.eventsBox.values.map(
      (e) {
        return e.title;
      },
    ).toList();
    return Column(
      children: [
        ...List.generate(
          test.length,
          (index) {
            return Text(test[index]);
          },
        )
      ],
    );
  }
}
