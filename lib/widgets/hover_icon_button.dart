import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class HoverIconButton extends StatefulWidget {
  final String assetPath;
  final String url;
  final Color primaryColor; // Основной цвет
  final Color hoverColor;   // Цвет при наведении

  const HoverIconButton({
    required this.assetPath,
    required this.url,
    required this.primaryColor,  // Обязательный параметр
    required this.hoverColor,    // Обязательный параметр
    super.key,
  });

  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();
}

class _HoverIconButtonState extends State<HoverIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: GestureDetector(
        onTap: () {
          // Открывает URL в браузере или соответствующем приложении
          // launchUrl(Uri.parse(widget.url)); // Пример использования url_launcher пакета
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()..scale(_isHovered ? 1.2 : 1.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              widget.assetPath,
              width: 30,
              height: 30,
              color: _isHovered ? widget.hoverColor : widget.primaryColor,
            ),
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
