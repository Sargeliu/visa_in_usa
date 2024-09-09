import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/centered_view/centered_view_tablet.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

import '../hover_icon_button.dart';
import '../hover_text_button.dart';

class TabletFooter extends StatelessWidget {
  const TabletFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryFirstColor,
      child: CenteredViewTablet(
        child: _buildTabletFooterContent(context),
      ),
    );
  }

  Widget _buildTabletFooterContent(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text.rich(
            TextSpan(
              text: 'ВИЗА ',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              children: [
                TextSpan(
                  text: 'В США',
                  style: TextStyle(
                    fontSize: 32,
                    color: primarySecondColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HoverTextButton(
                text: "info@visausa.com",
                icon: Icons.email,
                primaryTextColor: Colors.white,
              ),
              SizedBox(width: 30,),
              HoverTextButton(
                text: "+7 912 791 85 52",
                icon: Icons.phone,
                primaryTextColor: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }


  Widget _buildSocialMediaIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
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


