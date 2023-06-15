import 'package:flutter/material.dart';
import 'package:scaler_initstate/init_data_dep_on_buildcontext.dart';
import 'package:scaler_initstate/init_data_exec_before_build.dart';
import 'package:scaler_initstate/sub_to_stream.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Example App',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
        ),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DepOnBuildContext();
                    }));
                  },
                  child: const Text(
                    'To initialize data that depends on the specific BuildContext.',
                    style: TextStyle(fontSize: 25),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ExecBeforeBuild();
                  }));
                },
                child: const Text(
                  'To initialize data that need to execute before build()',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SubToStreams();
                  }));
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Subscribe to Streams.',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
