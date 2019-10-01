
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class ClientLogin extends StatefulWidget {
  @override
  _ClientLoginState createState() => _ClientLoginState();
}

class _ClientLoginState extends State<ClientLogin> {
  @override
  Widget build(BuildContext context) {
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
      


    
    
