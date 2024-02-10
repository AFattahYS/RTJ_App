import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title:  Text(
          "Roohani Talaba Jammat",
          style: GoogleFonts.zeyada(
            color: Colors.white,
            fontWeight: FontWeight.w900
          )
        ),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.blue.shade100),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Manue',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
