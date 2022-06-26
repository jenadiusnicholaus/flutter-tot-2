import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(255, 4, 47, 135),
              ),
              child: const Icon(
                Icons.access_alarm,
                color: Colors.red,
                size: 40,
              ),
            ),
            const SizedBox(height: 12),
            const Text('This asset image'),
            const Image(image: AssetImage('assets/images/owl.jpg')),
            const SizedBox(height: 12),
            const Image(
              // height: 300,
              width: double.infinity,
              image: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            )
          ],
        ),
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
