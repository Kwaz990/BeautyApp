
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

//class ClientLandingPage extends StatelessWidget {
class ClientLandingPage extends StatefulWidget {
  @override
  _ClientLangingPageState createState() => _ClientLangingPageState();
}

class _ClientLangingPageState extends State<ClientLandingPage> {
  int selectedIndex = 0;
  final widgetOptions = [
    Text('Search'),
    Text('Me'),
    Text('More')
      ];



  CameraPosition _initialPosition = CameraPosition(target: LatLng(40.807790, -73.945608));
  Completer<GoogleMapController> _controller = Completer();

 static const LatLng _center = const LatLng(40.807790, -73.945608);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  get onItemTapped => null;
      //   List<Widget> pages = [
      //  // ClientLogin()
      //         ];
 // @override
  
//Implement GoogleMaps view
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.hybrid,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0
            ),
            myLocationButtonEnabled: false,
          ), 
          Container(
            margin: EdgeInsets.only(bottom:400),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20.0,
                    ),
                  ],
                  color: Colors.white, 
                ),
                height: 50,
                width: 300,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText:"What Beauty Service are you looking for?",
                    hintStyle: TextStyle(fontFamily: 'Gotham', fontSize: 15),
                    icon: Icon(Icons.search, color: Colors.black,),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent))
                  ),
                  ),
                )
              )
            )
        ],
        ),
        ),
  );
}


   // Implementing bottom navigation bar       
Widget buildNav(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('SwiftBeauty'),),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search),
            title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.home),
            title: Text('Me')),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz),
            title: Text('More'))
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
  ), ); 
}
void buildSelectedIndex(int index) {
  setState(() {
      selectedIndex = index;
    });
  } 

// TODO: get profile working
Widget buildProfilePicture(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        Container(
          height: 100, 
          color: Colors.red,),
          Container(
            constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height- 168),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  height: 250,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: new AssetImage('assets/img/spidey.jpeg')
                              ),)
                            // child: new Image(
                            //  // CircleAvatar(backgroundImage: 'assets/img/spidey.jpeg',), 
                            //   image: new AssetImage('assets/img/spidey.jpeg'),
                          ),
              ],)]),
          ) 
      ]
      ),)],),);
      }
      
}
      
   