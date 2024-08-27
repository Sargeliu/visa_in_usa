import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

import '../hover_icon_button.dart';
import '../hover_text_button.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildFooterContent(context);
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
          _buildHoverFooterItem("info@visausa.com", Icons.email),
          _buildHoverFooterItem("+1 (234) 567-890", Icons.phone),
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
      children: [
        HoverIconButton('assets/telegram.svg', 'https://t.me/username'),
        HoverIconButton('assets/whatsapp.svg', 'https://wa.me/username'),
        HoverIconButton('assets/viber.svg', 'viber://chat?number=%2B1234567890'),
      ],
    );
  }
}