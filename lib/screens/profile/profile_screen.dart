import 'package:flutter/material.dart';
import 'package:coopa/components/coustom_bottom_nav_bar.dart';
import 'package:coopa/enums.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
