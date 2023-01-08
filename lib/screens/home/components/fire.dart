import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class fire extends StatefulWidget {
  const fire({Key? key}) : super(key: key);

  @override
  State<fire> createState() => _fireState();
}

class _fireState extends State<fire> {
 
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection("users").snapshots(),
    builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot){
      if(streamSnapshot.hasData){
        return ListView.builder(
          itemCount: streamSnapshot.data?.docs.length,
          itemBuilder: (context,index) => Container(
            child: Text(streamSnapshot.data?.docs[index]['uid'],style: TextStyle(fontSize: 59,color: Colors.black12),),
          ));
      }else{
        return CircularProgressIndicator();
      }
    },);
  }
}