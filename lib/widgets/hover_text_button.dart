import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final IconData icon;

  const HoverTextButton({required this.text, required this.icon});

  @override
  HoverTextButtonState createState() => HoverTextButtonState();
}

class HoverTextButtonState extends State<HoverTextButton> {
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
          children: [
            Icon(widget.icon, color: _isHovered ? primarySecondColor : Colors.white),
            const SizedBox(width: 10),
            Text(
              widget.text,
              style: GoogleFonts.montserrat(
                color: _isHovered ? primarySecondColor : Colors.white,
                fontSize: 16,
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
