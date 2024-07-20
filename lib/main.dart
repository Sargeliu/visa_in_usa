import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/widgets/visa_scheme/visa_scheme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visa in Usa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.montserratTextTheme(
              Theme.of(context).textTheme
          ).apply(
              bodyColor: Colors.black
          )
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const [
            VisaScheme(),
          ],
        ),
      ),
    );
  }
}

