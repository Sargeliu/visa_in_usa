import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visa_in_usa/centered_view/centered_view_mobile.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => _buildFooterContent(context, isMobile: true),
      tablet: (BuildContext context) => _buildFooterContent(context, isMobile: false),
      desktop: (BuildContext context) => _buildFooterContent(context, isMobile: false),
    );
  }

  Widget _buildFooterContent(BuildContext context, {required bool isMobile}) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
      color: primaryFirstColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isMobile) ...[
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
            const SizedBox(height: 16,),
            _buildHoverFooterItem("info@visausa.com", Icons.email),
            const SizedBox(height: 16,),
            _buildHoverFooterItem("+1 (234) 567-890", Icons.phone),
            _buildSocialMediaIcons(),
          ] else ...[
            Row(
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
          ],
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
        _HoverIconButton('assets/telegram.svg', 'https://t.me/username'),
        _HoverIconButton('assets/whatsapp.svg', 'https://wa.me/username'),
        _HoverIconButton('assets/viber.svg', 'viber://chat?number=%2B1234567890'),
      ],
    );
  }
}

class _HoverIconButton extends StatefulWidget {
  final String assetPath;
  final String url;

  const _HoverIconButton(this.assetPath, this.url);

  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();
}

class _HoverIconButtonState extends State<_HoverIconButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return CenteredViewMobile(
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: GestureDetector(
          onTap: () {
            // Откройте URL в браузере или в соответствующем приложении
            // launchUrl(Uri.parse(widget.url)); // Пример использования url_launcher пакета
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: Matrix4.identity()..scale(_isHovered ? 1.2 : 1.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                widget.assetPath,
                width: 30,
                height: 30,
                color: _isHovered ? primarySecondColor : Colors.white,
              ),
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
    return CenteredViewMobile(
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.identity()..scale(_isHovered ? 1.1 : 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}