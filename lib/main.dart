import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/widgets/footer/footer.dart';
import 'package:visa_in_usa/widgets/main_header.dart';

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
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme)
                  .copyWith(
                bodyLarge: GoogleFonts.montserrat(fontSize: 16, fontWeight:
                FontWeight.normal),
                bodyMedium: GoogleFonts.montserrat(fontSize: 14, fontWeight:
                FontWeight.normal),
                displayLarge: GoogleFonts.montserrat(fontSize: 96, fontWeight:
                FontWeight.bold),
                displayMedium: GoogleFonts.montserrat(fontSize: 60, fontWeight: FontWeight.bold),
                displaySmall: GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.bold),
                headlineMedium: GoogleFonts.montserrat(fontSize: 34, fontWeight: FontWeight.bold),
                headlineSmall: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
                titleLarge: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
                titleMedium: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500),
                titleSmall: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w500),
                labelLarge: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold),
                bodySmall: GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.normal),
                labelSmall: GoogleFonts.montserrat(fontSize: 10, fontWeight: FontWeight.normal),
              )
                  .apply(bodyColor: Colors.black)),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const [
            MainHeader(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
