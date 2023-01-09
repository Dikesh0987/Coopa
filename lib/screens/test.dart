import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final database1 = FirebaseFirestore.instance;
Future<QuerySnapshot> years = database1
  .collection('all_products')
  .get();

class ReadDataFromFirestore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<QuerySnapshot>(
        future: years,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final List<DocumentSnapshot> documents = snapshot.data!.docs.toList();
            return ListView(
                children: documents
                    .map((doc) => Card(
                          child: ListTile(
                        title: Text('doc.id: ${doc['title']}'),
                            //subtitle: Text('category:     ${doc['category']}'),
                      ),
                    ))
                .toList());
      } else if (snapshot.hasError) {
        return Text(snapshot.error.toString());
      }
      return CircularProgressIndicator();
    }
    );
  }
}