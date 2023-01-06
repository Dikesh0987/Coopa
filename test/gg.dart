// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:coopa/screens/splash/splash_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import 'profile_menu.dart';
// import 'profile_pic.dart';

// class Body extends StatefulWidget {
//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   final _auth = FirebaseAuth.instance;
//   CollectionReference users = FirebaseFirestore.instance.collection('users');

//   @override
//   Widget build(BuildContext context) {
//     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//     User? user = _auth.currentUser;
//     return SingleChildScrollView(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 children: [
//                   ProfilePic(),
//                   Padding(
//                     padding: const EdgeInsets.all(20.0),
//                     child: Container(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           FutureBuilder<DocumentSnapshot>(
//                             future: users.doc(user!.uid).get(),
//                             builder: (BuildContext context,
//                                 AsyncSnapshot<DocumentSnapshot> snapshot) {
//                               Map<String, dynamic> data =
//                                   snapshot.data!.data() as Map<String, dynamic>;
//                               return Text(
//                                   "Full Name: ${data['firstname']} ${data['secondname']}");
//                             },
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text("dikeshnetam0987@gmail.com")
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               )),
//           SizedBox(height: 20),
//           ProfileMenu(
//             text: "My Account",
//             icon: "assets/icons/User Icon.svg",
//             press: () => {},
//           ),
//           ProfileMenu(
//             text: "Notifications",
//             icon: "assets/icons/Bell.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Settings",
//             icon: "assets/icons/Settings.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Help Center",
//             icon: "assets/icons/Question mark.svg",
//             press: () {},
//           ),
//           ProfileMenu(
//             text: "Log Out",
//             icon: "assets/icons/Log out.svg",
//             press: () async {
//               await FirebaseAuth.instance.signOut().then((value) => {
//                     Navigator.pushAndRemoveUntil(
//                         context,
//                         MaterialPageRoute(builder: (context) => SplashScreen()),
//                         (route) => false)
//                   });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
