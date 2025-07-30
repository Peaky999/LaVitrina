import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('MenuWidget'),
    ),
    body: const Center(
      child: Text('MenuWidget'),
    ),
    );
  }
}