import 'package:flutter/material.dart';
import 'src/app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.openBox('accounts');
  await Hive.openBox('todos');
  await Hive.initFlutter();
}
