import 'package:flutter/material.dart';

class ExecBeforeBuild extends StatefulWidget {
  @override
  _ExecBeforeBuildState createState() => _ExecBeforeBuildState();
}

class _ExecBeforeBuildState extends State<ExecBeforeBuild> {
  String _data = '';

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() {
    // Perform initialization tasks here before build() is called
    // For example, you can fetch data from a database or API
    // Here, we're simply setting a string value
    _data = 'Initialized data before build() execution';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Execution Before Build'),
      ),
      body: Center(
        child: Text(
          _data,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
