import 'package:coopa/constants.dart';

import 'components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Notifications",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          centerTitle: true,
        ),
      body: Body(),
    );
  }
}
