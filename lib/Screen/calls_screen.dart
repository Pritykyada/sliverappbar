
import 'package:flutter/material.dart';
class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          child: Text("CallScreen"),
        ),
      ),
    );
  }
}
