// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  final file = File('pubspec.yaml');

  // قائمة الحزم التي ترغب بإضافتها
  final packages = ['flutter_bloc', 'hive_flutter', 'freezed'];
  final devpackages = [
    'build_runner',
    'hive_generator',
  ];

  if (file.existsSync()) {
    var content = file.readAsStringSync();
    const dependenciesSection = 'dependencies:';

    if (content.contains(dependenciesSection)) {
      final buffer = StringBuffer();
      final dependenciesIndex =
          content.indexOf(dependenciesSection) + dependenciesSection.length;

      // قراءة القسم الموجود
      buffer.write(content.substring(0, dependenciesIndex));

      // إضافة الحزم الجديدة إذا لم تكن موجودة بالفعل
      for (final package in packages) {
        if (!content.contains(package)) {
          buffer.write('\n  $package:');
        }
      }

      // كتابة المحتوى الجديد
      buffer.write(content.substring(dependenciesIndex));
      file.writeAsStringSync(buffer.toString());
      print('Packages added successfully!');
    } else {
      print('dependencies section not found in pubspec.yaml');
    }
  } else {
    print('pubspec.yaml file not found!');
  }
  if (file.existsSync()) {
    var content = file.readAsStringSync();
    const dependenciesSection = 'dev_dependencies:';

    if (content.contains(dependenciesSection)) {
      final buffer = StringBuffer();
      final dependenciesIndex =
          content.indexOf(dependenciesSection) + dependenciesSection.length;

      // قراءة القسم الموجود
      buffer.write(content.substring(0, dependenciesIndex));

      // إضافة الحزم الجديدة إذا لم تكن موجودة بالفعل
      for (final package in devpackages) {
        if (!content.contains(package)) {
          buffer.write('\n  $package:');
        }
      }

      // كتابة المحتوى الجديد
      buffer.write(content.substring(dependenciesIndex));
      file.writeAsStringSync(buffer.toString());
      print('Packages added successfully!');
    } else {
      print('dependencies section not found in pubspec.yaml');
    }
  } else {
    print('pubspec.yaml file not found!');
  }
}
