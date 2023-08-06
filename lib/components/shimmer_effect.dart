import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DelayedList extends StatefulWidget {
  @override
  _DelayedListState createState() => _DelayedListState();
}

class _DelayedListState extends State<DelayedList> {
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    Timer timer = Timer(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });

    return isLoading ? ShimmerList() : DataList(timer);
  }
}

class DataList extends StatelessWidget {
  final Timer timer;

  DataList(this.timer);

  @override
  Widget build(BuildContext context) {
    timer.cancel();
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, i) {
        return Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Text(i.toString()),
        );
      },
    );
  }
}

class ShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int offset = 0;
    int time = 800;

    return SafeArea(
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          offset += 5;
          time = 800 + offset;

          print(time);

          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Shimmer.fromColors(
                highlightColor: Colors.white,
                baseColor: Colors.grey,
                child: ShimmerLayout(),
                period: Duration(milliseconds: time),
              ));
        },
      ),
    );
  }
}

class ShimmerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width * .85,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
