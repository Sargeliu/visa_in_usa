import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/centered_view/centered_view.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

import '../hover_icon_button.dart';
import '../hover_text_button.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CenteredView(
        child: _buildFooterContent(context),
      ),
    );
  }

  Widget _buildFooterContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
      color: primaryFirstColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text.rich(
            TextSpan(
              text: 'ВИЗА\n',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: 'В США',
                  style: TextStyle(
                    fontSize: 36,
                    color: primarySecondColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const HoverTextButton(
            text: "info@visausa.com",
            icon: Icons.email,
            primaryColor: Colors.white,    // Основной цвет - белый
            hoverColor: primarySecondColor, // Цвет при наведении
          ),
          const HoverTextButton(
            text: "+7 912 791 85 52",
            icon: Icons.phone,
            primaryColor: Colors.white,    // Основной цвет - белый
            hoverColor: primarySecondColor, // Цвет при наведении
          ),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  /*Widget _buildHoverFooterItem(String text, IconData icon) {
    return HoverTextButton(
      text: text,
      icon: icon,
      primaryColor: null,
      hoverColor: null,
    );
  }*/

  Widget _buildSocialMediaIcons() {
    return const Row(
      children: [
        HoverIconButton(
          assetPath: 'assets/telegram.svg',
          url: 'https://t.me/username',
          primaryColor: Colors.white,     // Основной цвет - белый
          hoverColor: primarySecondColor, // Цвет при наведении
        ),
        HoverIconButton(
          assetPath: 'assets/whatsapp.svg',
          url: 'https://wa.me/username',
          primaryColor: Colors.white,     // Основной цвет - белый
          hoverColor: primarySecondColor, // Цвет при наведении
        ),
        HoverIconButton(
          assetPath: 'assets/viber.svg',
          url: 'viber://chat?number=%2B1234567890',
          primaryColor: Colors.white,     // Основной цвет - белый
          hoverColor: primarySecondColor, // Цвет при наведении
        ),
      ],
    );
  }
}
