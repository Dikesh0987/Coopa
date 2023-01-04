import 'package:coopa/screens/tranding/components/tranding_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TrandingScreen extends StatefulWidget {
  const TrandingScreen({Key? key}) : super(key: key);

  @override
  State<TrandingScreen> createState() => _TrandingScreenState();
}

class _TrandingScreenState extends State<TrandingScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeCard(
            dp: "hgdg",
            name: "hgj",
            img: "assets/images/glap.png",
            des: "hfg",
            hash: "ddf",
          ),
          HomeCard(
            dp: "hgdg",
            name: "hgj",
            img: "assets/images/glap.png",
            des: "hfg",
            hash: "ddf",
          )
        ],
      ),
    );
  }
}
