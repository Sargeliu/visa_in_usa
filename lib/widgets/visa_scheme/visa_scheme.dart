import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_colors.dart';

class VisaScheme extends StatelessWidget {
  const VisaScheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Установка белого фона
      child: Center(
        child: Wrap(
          spacing: 30, // Отступ между контейнерами
          runSpacing: 30, // Отступ между строками контейнеров
          children: List.generate(4, (index) => _DocumentContainer()).toList(),
        ),
      ),
    );
  }
}

class _DocumentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 585,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(4, 0),
            blurRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Шаг 1. Подготовка документов',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              ..._buildDocumentSteps(),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/first_step.png', // Замените на путь к вашему изображению
              width: 113, // Настройте ширину изображения
              height: 113, // Настройте высоту изображения
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildDocumentSteps() {
    const steps = [
      'Ксерокопия/скан первой страницы паспорта РФ;',
      'Ксерокопия/скан первой страницы загранпаспорта;',
      'Заполненный опросный лист;',
      'Одна цветная фотография 5х5см. на белом фоне в электронном виде;',
      'Приглашение от родственников или друзей. (Если Вас приглашают).',
    ];

    return steps.map((text) => _DocumentStep(text: text)).toList();
  }
}

class _DocumentStep extends StatelessWidget {
  final String text;

  const _DocumentStep({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Icon(
            Icons.check,
            size: 25,
            color: primarySecondColor,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}