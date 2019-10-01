import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_gorgeous_login/ui/login_page.dart';
import 'ui/client_login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SwiftBeauty',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   List<Widget> pages = [
//     ClientLogin()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 5,
//       initialIndex: 0,
//       child: Scaffold(
//         body: TabBarView(
//           children: pages),
//           bottomNavigationBar: Container(
//           // decoration: BoxDecoration(
//           //   boxShadow: [
//           //     BoxShadow(
//           //       offset: Offset(10, 10)
//           //     )
//           //   ]
//           // ),
//           margin: EdgeInsets.only(bottom: 20),
//           child: new TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.home),
//               ),
//               Tab(
//                 icon: Icon(Icons.search),
//               ),
//               Tab(
//                 icon: Icon(Icons.add),
//               ),
//               Tab(
//                 icon: Icon(Icons.favorite),
//               ),
//               Tab(
//                 icon: Icon(Icons.perm_identity),
//               ),
//             ],
//             unselectedLabelColor: Colors.black,
//             labelColor: Colors.blue,
//             indicatorColor: Colors.transparent,
//           ),
//         ),
//       ),
//     );
//   }
// }