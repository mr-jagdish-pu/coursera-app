import 'package:flutter/material.dart';

class DemoTestPage extends StatelessWidget {
  const DemoTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("DemoTestPage");
    return Scaffold(
      body: Center(child: SmallComponent()),
    );
  }
}

class SmallComponent extends StatefulWidget {
  const SmallComponent({super.key});

  @override
  State<SmallComponent> createState() => _SmallComponentState();
}

class _SmallComponentState extends State<SmallComponent> {
  bool now = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          setState(() {
            now = !now;
          });
        },
        icon: (now) ? Icon(Icons.remove) : Icon(Icons.add),
      ),
    );
  }
}
