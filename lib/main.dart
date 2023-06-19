import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/di.dart';

void main() async {
  await init();

  runApp(const MyApp());
}
