import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guess_teacher_age/pages/guess_page.dart';

class page extends StatelessWidget {
  static const routeName = '/page';
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var age = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.3),
        title:  Text("GUESS TEACHER'S AGE",style: GoogleFonts.fredokaOne(color: Colors.black),),

      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/te.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'อายุอาจารย์',
                style: GoogleFonts.pattaya(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Text(
                '${age['year']} ปี ${age['month']} เดือน',
                style: GoogleFonts.pattaya(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              Icon(
                Icons.check,
                size: 100,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}