import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';
import '../hover_icon_button.dart';
import '../hover_text_button.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        constraints: BoxConstraints(
          maxWidth: 479,
          maxHeight: 444,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(4, 0),
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Контакты", style: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black
            ),),
            const SizedBox(height: 54,),
            const HoverTextButton(
              text: "info@visausa.com",
              icon: Icons.email,
              primaryIconColor: primarySecondColor,
              hoverIconColor: primarySecondColor,
              hoverTextColor: primarySecondColor,
              fontSize: 20,// Цвет при наведении
            ),
            const SizedBox(height: 35,),
            const HoverTextButton(
              text: "+7 912 791 85 52",
              icon: Icons.phone,
              hoverTextColor: primarySecondColor,
              primaryIconColor: primarySecondColor,
            ),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverIconButton(
                  assetPath: 'assets/telegram.svg',
                  url: 'https://t.me/username',
                  primaryColor:  Colors.black,     // Основной цвет - белый
                  hoverColor: primarySecondColor, // Цвет при наведении
                ),
                HoverIconButton(
                  assetPath: 'assets/whatsapp.svg',
                  url: 'https://wa.me/username',
                  primaryColor:  Colors.black,     // Основной цвет - белый
                  hoverColor: primarySecondColor, // Цвет при наведении
                ),
                HoverIconButton(
                  assetPath: 'assets/viber.svg',
                  url: 'viber://chat?number=%2B1234567890',
                  primaryColor:  Colors.black,     // Основной цвет - белый
                  hoverColor: primarySecondColor, // Цвет при наведении
                ),
              ],
            ),
            const SizedBox(height: 76,),
            SizedBox(
              width: 205,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  // Обработка нажатия кнопки
                  print("Получить визу нажата");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primarySecondColor,
                ),
                child: const Text(
                  'Позвонить',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
