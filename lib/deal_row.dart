import 'package:flutter/material.dart';

class DeallWithRowsPage extends StatelessWidget {
  const DeallWithRowsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows oage'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8),
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromARGB(255, 4, 47, 135),
                          ),
                          child: const Icon(
                            Icons.access_alarm,
                            color: Colors.red,
                            size: 40,
                          ),
                        );
                      }),
                ),
              ]),

              // Do your Quiz
            ],
          ),
        ),
      ),
    );
  }
}
