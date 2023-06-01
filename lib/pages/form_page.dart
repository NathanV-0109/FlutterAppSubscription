import 'package:flluter_main/models/subscriber.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormPageulário'),
      ),
      body: Container(),
    );
  }
}
