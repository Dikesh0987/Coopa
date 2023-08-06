import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.arrow_back)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: Container(
            //     child: CircleAvatar(
            //       radius: 60,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                hintText: "Name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("Dikesh"),
            )
          ],
        ),
      ),
    );
  }
}
