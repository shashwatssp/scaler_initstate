import 'package:flutter/material.dart';
import 'dart:async';

class SubToStreams extends StatefulWidget {
  @override
  _SubToStreamsState createState() => _SubToStreamsState();
}

class _SubToStreamsState extends State<SubToStreams> {
  late StreamSubscription<int> _subscription;
  int _data = 0;

  @override
  void initState() {
    super.initState();
    _subscribeToStream();
  }

  void _subscribeToStream() {
    final stream = Stream<int>.periodic(Duration(seconds: 1), (count) => count);
    _subscription = stream.listen((count) {
      setState(() {
        _data = count;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe to Streams'),
      ),
      body: Center(
        child: Text(
          'Stream Data: $_data',
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
