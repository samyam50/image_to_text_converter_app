import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String result="";
  File image;
  Future<File> imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.jpg'), fit: BoxFit.cover),
          ),
        child: Column(
        children: [
          SizedBox(width: 100,),

          //show result
          Container(
            height: 280,
            width: 250,
            margin: EdgeInsets.only(top:70),
            padding: EdgeInsets.only(left: 28, bottom: 5, right: 18),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  result,
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/note.jpg'),
                fit: BoxFit.cover),
              ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 140),
            child: Stack(
              children: [
            Stack(
            children: [

            Center(
            child: Image.asset(
              'assets/pin.png',
              height: 240,
              width: 240,
            ),
          ),
          ],
            ),
                Center(
                  child: TextButton(
                    child: Container(
                      margin: EdgeInsets.only(top: 25),
                      child: image != null ? Image.file(image, width: 140, height: 192, fit: BoxFit.fill,):
                      Container( width: 240,
                        height: 200,
                        child: Icon(Icons.camera_front, size: 100, color: Colors.grey,),
                      ),

                    ),



                  ),

                ),
              ],
            ),

          ),
        ],




            )










          ),

    );
  }
}
