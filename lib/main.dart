import 'package:flutter/material.dart';

import 'controller/api_fetch.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo_api_json(),
    );
  }
}

class Demo_api_json extends StatefulWidget {
  const Demo_api_json({Key? key}) : super(key: key);

  @override
  State<Demo_api_json> createState() => _Demo_api_jsonState();
}

class _Demo_api_jsonState extends State<Demo_api_json> {
  var d;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          d = await APImanager.fetch1();
          setState(() {});

          print(d);
        },
      ),
      body: d == null
          ? CircularProgressIndicator()
          : Column(
              children: [Text("${d[1]["email"]}")],
            ),
    );
  }
}
