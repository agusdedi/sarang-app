
import 'package:flutter/material.dart';

import 'theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: getApplicationThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}