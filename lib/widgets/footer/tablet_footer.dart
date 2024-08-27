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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHoverFooterItem("info@visausa.com", Icons.email),
              const SizedBox(width: 30,),
              _buildHoverFooterItem("+1 (234) 567-890", Icons.phone),
            ],
          ),
          const SizedBox(height: 16),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget _buildHoverFooterItem(String text, IconData icon) {
    return HoverTextButton(
      text: text,
      icon: icon,
    );
  }

  Widget _buildSocialMediaIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HoverIconButton('assets/telegram.svg', 'https://t.me/username'),
        HoverIconButton('assets/whatsapp.svg', 'https://wa.me/username'),
        HoverIconButton(
            'assets/viber.svg', 'viber://chat?number=%2B1234567890'),
      ],
    );
  }
}


