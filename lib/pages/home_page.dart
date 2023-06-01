import 'package:flluter_main/models/subscriber.dart';
import 'package:flluter_main/pages/form_page.dart';
import 'package:flluter_main/pages/home_controller.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late HomeController controller;

  formPage() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => FormPage()));
  }

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int i) {
          final data = controller.subscribers;

          return ListTile(
            title: Text(data[i].name),
            trailing: Text(data[i].type),
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: controller.subscribers.length,
        padding: const EdgeInsets.all(8),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => {},
            child: const Icon(Icons.sync),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () => {formPage()},
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
