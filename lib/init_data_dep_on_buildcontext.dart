import 'package:flutter/material.dart';

class DepOnBuildContext extends StatefulWidget {
  @override
  _DepOnBuildContextState createState() => _DepOnBuildContextState();
}

class _DepOnBuildContextState extends State<DepOnBuildContext> {
  String _data = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
      ..addPostFrameCallback((_) {
        _initializeData(context);
      });
  }

  void _initializeData(BuildContext context) {
    final routeName = ModalRoute.of(context)?.settings.name ?? '';
    setState(() {
      _data = 'Data initialized for route: $routeName';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dependent on BuildContext'),
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
