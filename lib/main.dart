import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deo First app',
      theme: ThemeData(primarySwatch: Colors.amber, primaryColor: Colors.amber),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PreferredSizeWidget _appBar() {
    return AppBar(
      leading: const Icon(Icons.arrow_back),
      title: const Text('Deo first app'),
      actions: const [
        Icon(Icons.shop),
        Icon(Icons.search),
      ],
    );
  }

  _body() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            color: Colors.lightGreen,
            height: 100,
            width: 199,
          ),
          const SizedBox(height: 12),
          Container(
            color: Colors.lightGreen,
            height: 200,
            width: 199,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }
}
