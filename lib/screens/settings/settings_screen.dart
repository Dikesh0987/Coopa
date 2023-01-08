import 'package:coopa/screens/settings/components/body.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Settings",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Body());
  }
}
