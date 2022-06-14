import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'src/app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todos');
  await Hive.openBox('accounts');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
