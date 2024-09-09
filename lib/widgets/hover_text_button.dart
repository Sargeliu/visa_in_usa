import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

/*class HoverTextButton extends StatefulWidget {
  final String text;
  final IconData? icon;
  final Color primaryColor; // Добавляем параметр для основного цвета
  final Color hoverColor; // Добавляем параметр для цвета при наведении

  const HoverTextButton({
    required this.text,
    required this.icon,
    required this.primaryColor, // Обязательный параметр
    required this.hoverColor,   // Обязательный параметр
  });

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: InkWell(
        onTap: () {
          // Открывает URL в браузере или соответствующем приложении
          // launchUrl(Uri.parse(widget.url)); // Пример использования url_launcher пакета
        },
        splashColor: widget.hoverColor.withOpacity(0.3), // Эффект волны при нажатии
        hoverColor: Colors.transparent, // Отключаем цвет при наведении (необязательно)
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()..scale(_isHovered ? 1.1 : 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null)
              Icon(
                widget.icon,
                color: _isHovered ? widget.hoverColor : widget.primaryColor,
              ),
              if (widget.icon != null) const SizedBox(width: 10),
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
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
 */

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final IconData? icon;
  final Color primaryTextColor;  // Основной цвет текста
  final Color hoverTextColor;    // Цвет текста при наведении
  final Color primaryIconColor;  // Основной цвет иконки
  final Color hoverIconColor;    // Цвет иконки при наведении
  final double fontSize;         // Размер шрифта текста

  const HoverTextButton({
    required this.text,
    required this.icon,
    this.primaryTextColor = Colors.black,  // Параметр для основного цвета
    // текста
    this.hoverTextColor  = primarySecondColor,    // Обязательный параметр для
    // цвета
    // текста при наведении
    this.primaryIconColor = Colors.white,  // Обязательный параметр для
    // основного цвета иконки
    this.hoverIconColor = primarySecondColor,    // Обязательный параметр для цвета иконки при
    // наведении
    this.fontSize = 16.0,            // Размер шрифта с значением по умолчанию
  });

  @override
  _HoverTextButtonState createState() => _HoverTextButtonState();
}

class _HoverTextButtonState extends State<HoverTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: InkWell(
        onTap: () {
          // Открывает URL в браузере или соответствующем приложении
          // launchUrl(Uri.parse(widget.url)); // Пример использования url_launcher пакета
        },
        splashColor: widget.hoverTextColor.withOpacity(0.3), // Эффект волны при нажатии
        hoverColor: Colors.transparent, // Отключаем цвет при наведении (необязательно)
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()..scale(_isHovered ? 1.1 : 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.icon != null)
                Icon(
                  widget.icon,
                  color: _isHovered ? widget.hoverIconColor : widget.primaryIconColor, // Используем отдельные переменные для цветов иконки
                ),
              if (widget.icon != null) const SizedBox(width: 10),
              Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  color: _isHovered ? widget.hoverTextColor : widget.primaryTextColor, // Используем отдельные переменные для цветов текста
                  fontSize: widget.fontSize, // Используем переменную для размера шрифта
                ),
              ),
            ],
          ),
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

