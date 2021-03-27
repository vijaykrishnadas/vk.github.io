import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(10, 255, 255, 240),
        automaticallyImplyLeading: false,
        actions: [
          MaterialButton(child:Icon(Icons.arrow_forward_ios_rounded),onPressed: (){
            Navigator.pop(context,false);
          },),
        ],
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(200, 255, 245, 240),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MenuText("HOME"),
              MenuText("BLOGS"),
              MenuText("ABOUT US"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget MenuText(String text){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: MaterialButton(onPressed: (){},child: Text(text,style: GoogleFonts.poppins(color: Colors.black),),),
  );
}
