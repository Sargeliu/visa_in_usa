import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final IconData? icon; // Изменено на опциональный тип
  final Color primaryColor; // Добавляем параметр для основного цвета
  final Color hoverColor;   // Добавляем параметр для цвета при наведении

  const HoverTextButton({
    required this.text,
    this.icon, // Теперь этот параметр может быть null
    required this.primaryColor, // Обязательный параметр
    required this.hoverColor,   // Обязательный параметр
  });

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
            if(widget.icon != null) // Проверка на null
            Icon(
              widget.icon,
              color: _isHovered ? widget.hoverColor : widget.primaryColor,
            ),
            if (widget.icon != null) const SizedBox(width: 10), // Отступ только если есть иконка
            Text(
              widget.text,
              style: GoogleFonts.montserrat(
                color: _isHovered ? widget.hoverColor : widget.primaryColor,
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
