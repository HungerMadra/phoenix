import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register.dart'; // Import your register.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Container(
            width: 300,
            height: 400,
            color: Colors.grey[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
              width: 200,
              height: 100,
              color:
              Colors.grey[900],
                child: Center(
                  child: Text(
                    'Rella',
                    style: GoogleFonts.pacifico(fontSize:



                    60,color:

                    Colors.deepOrange[400]),
                  ),
                ),
              ),
                Builder(builder:(context) => ElevatedButton.icon(
                  onPressed:
                      () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterScreen()),); // Use Navigator.push to navigate to RegisterScreen
                  },
              icon:
            Icon(Icons.arrow_forward_ios,color:
            Colors.green.shade800,),
            label:
            Text('Sign in or Register'),
            style:
            ElevatedButton.styleFrom(
              primary:
              Colors.black,onPrimary:
            Colors.deepOrange[400],shadowColor:
            Colors.green[400],elevation:
            0.0,shape:
            RoundedRectangleBorder(borderRadius:
            BorderRadius.circular(12.0),side:
            BorderSide(width:
            1.0,color:
            Colors.deepOrange.shade400,),
            ),
            ),
          ),),
        ],
        ),
        ),
        ),
        ),
    );
  }
}