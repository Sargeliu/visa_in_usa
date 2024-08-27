import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/centered_view/centered_view_mobile.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

import '../hover_icon_button.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryFirstColor,
      child: CenteredViewMobile(
        child: _buildFooterContent(context),
      ),
    );
  }

  Widget _buildFooterContent(BuildContext context) {
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
          const SizedBox(
            height: 16,
          ),
          _buildHoverFooterItem("info@visausa.com", Icons.email),
          const SizedBox(
            height: 16,
          ),
          _buildHoverFooterItem("+1 (234) 567-890", Icons.phone),
          _buildSocialMediaIcons(),
        ],
      ),
    );
  }

  Widget _buildHoverFooterItem(String text, IconData icon) {
    return _HoverTextButton(
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
        HoverIconButton('assets/viber.svg', 'viber://chat?number=%2B1234567890'),
      ],
    );
  }
}

class _HoverTextButton extends StatefulWidget {
  final String text;
  final IconData icon;

  const _HoverTextButton({required this.text, required this.icon});

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<_HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()..scale(_isHovered ? 1.1 : 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon,
                color: _isHovered ? primarySecondColor : Colors.white),
            const SizedBox(width: 10),
            Text(
              widget.text,
              style: GoogleFonts.montserrat(
                color: _isHovered ? primarySecondColor : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
