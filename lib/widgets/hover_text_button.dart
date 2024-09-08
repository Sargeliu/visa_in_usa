import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class HoverTextButton extends StatefulWidget {
  final String text;
  final IconData? icon;
  final Color primaryColor; // Добавляем параметр для основного цвета
  final Color hoverColor;   // Добавляем параметр для цвета при наведении

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
