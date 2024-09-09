import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/centered_view/centered_view.dart';
import 'package:visa_in_usa/constants/app_colors.dart';
import 'package:visa_in_usa/widgets/hover_icon_button.dart';

import '../hover_text_button.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final displayLarge = Theme.of(context)
        .textTheme
        .displayLarge; // Получаем стиль displayLarge из темы
    final displaySmall = Theme.of(context)
        .textTheme
        .displaySmall; // Получаем стиль displayLarge из темы

    return CenteredView(
      child: Stack(
        children: [
          // Задний фон с картинкой
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/desktop_main.png'),
                // Путь к вашей картинке
                fit: BoxFit.cover,
              ),
            ),
            height: 810,
            width: double.infinity,
          ),
          // Основное содержимое
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Первая строка: Почта, телефон, соцсети
              const Padding(
                padding:
                    EdgeInsets.only(left: 120, top: 40, right: 120, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HoverTextButton(
                      text: "info@visausa.com",
                      icon: Icons.email,
                      primaryIconColor: primarySecondColor,
                      fontSize: 20,
                    ),
                    HoverTextButton(
                      text: "+7 912 791 85 52",
                      icon: Icons.phone,
                      primaryIconColor: primarySecondColor,
                      fontSize: 20,
                    ),
                    // _buildHoverFooterItem("info@visausa.com", Icons.email),
                    // _buildHoverFooterItem("+1 (234) 567-890", Icons.phone),
                    Row(
                      children: [
                        HoverIconButton(
                          assetPath: 'assets/telegram.svg',
                          url: 'https://t.me/username',
                          primaryColor: Colors.black, // Основной цвет - белый
                          hoverColor: primarySecondColor, // Цвет при наведении
                        ),
                        HoverIconButton(
                          assetPath: 'assets/whatsapp.svg',
                          url: 'https://wa.me/username',
                          primaryColor: Colors.black, // Основной цвет - белый
                          hoverColor: primarySecondColor, // Цвет при наведении
                        ),
                        HoverIconButton(
                          assetPath: 'assets/viber.svg',
                          url: 'viber://chat?number=%2B1234567890',
                          primaryColor: Colors.black, // Основной цвет - белый
                          hoverColor: primarySecondColor, // Цвет при наведении
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Вторая строка: Панель навигации
              Container(
                width: double.infinity,
                color: primaryFirstColor,
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 115),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HoverTextButton(
                      text: 'СПИСОК ДОКУМЕНТОВ',
                      icon: null,
                      primaryTextColor: Colors.white,
                    ),
                    _buildVerticalDivider(),
                    const HoverTextButton(
                      text: 'СТОИМОСТЬ',
                      icon: null,
                      primaryTextColor: Colors.white,
                    ),
                    _buildVerticalDivider(),
                    const HoverTextButton(
                      text: 'ОТЗЫВЫ',
                      icon: null,
                      primaryTextColor: Colors.white,
                    ),
                    _buildVerticalDivider(),
                    const HoverTextButton(
                      text: 'СПИСОК СТРАН',
                      icon: null,
                      primaryTextColor: Colors.white,
                    ),
                    _buildVerticalDivider(),
                    const HoverTextButton(
                      text: 'КОНТАКТЫ',
                      icon: null,
                      primaryTextColor: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 140),

              // Третья строка: Заголовок "ВИЗА В США"
              Text.rich(
                TextSpan(
                  text: 'ВИЗА ',
                  style: displayLarge?.copyWith(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'В США',
                      style: displayLarge?.copyWith(color: primarySecondColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 69),

              // Четвертая строка: Типы виз
              Text(
                'ТИПЫ ВИЗ:',
                style: displaySmall?.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 40),

              // Пятая строка: Кнопки "Трудовая", "Учебная", "Виза жениха/невесты"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildVisaTypeButton('Трудовая'),
                  const SizedBox(width: 16),
                  _buildVisaTypeButton('Учебная'),
                  const SizedBox(width: 16),
                  _buildVisaTypeButton('Виза жениха / невесты'),
                ],
              ),
              const SizedBox(height: 32),

              // Шестая строка: Кнопки "Получить визу" и "Получить консультацию"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // _buildPrimaryButton('Получить визу'),
                  // const SizedBox(width: 16),
                  _buildSecondaryButton('Получить консультацию'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationItem(String text) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }

  Widget _buildVerticalDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        height: 20,
        width: 1,
        color: Colors.white,
      ),
    );
  }

  Widget _buildVisaTypeButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 21),
        backgroundColor: Colors.white, // Белый фон кнопки
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Красный круг слева
          Container(
            width: 10, // Диаметр круга
            height: 10,
            decoration: const BoxDecoration(
              color: primarySecondColor, // Цвет круга
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8), // Отступ между кругом и текстом
          // Текст кнопки
          Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black, // Цвет текста
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrimaryButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        backgroundColor: Colors.blue, // Основной цвет кнопки
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSecondaryButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 25),
        backgroundColor: primarySecondColor, // Цвет для вторичной кнопки
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
