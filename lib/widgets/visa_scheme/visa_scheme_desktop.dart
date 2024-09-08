import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../centered_view/centered_view.dart';
import '../../constants/app_colors.dart';

class VisaSchemeDesktop extends StatelessWidget {
  const VisaSchemeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CenteredView(
        child: _buildVisaSchemeDesktop(context),
      ),
    );
  }

  @override
  Widget _buildVisaSchemeDesktop(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const Center(
        child: Column(
          children: [
            Text(
              "Схема получения визы:",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: Colors.black),
            ),
            SizedBox(
              height: 81,
            ),
            Wrap(
              spacing: 20, // Отступ между контейнерами
              runSpacing: 20, // Отступ между строками контейнеров
              children: [
                _DocumentContainer(
                  title: 'Шаг 1. Подготовка документов',
                  steps: [
                    'Ксерокопия/скан первой страницы паспорта РФ;',
                    'Ксерокопия/скан первой страницы загранпаспорта;',
                    'Заполненный опросный лист;',
                    'Одна цветная фотография 5х5см. на белом фоне в электронном виде;',
                    'Приглашение от родственников или друзей. (Если Вас приглашают).',
                  ],
                  imagePath: 'assets/first_step.png',
                ),
                _DocumentContainer(
                  title: 'Шаг 2. Оплата консульского сбора и услуг \nпо оформлению'
                      ' визы',
                  steps: [
                    'В данный момент консульский сбор составляет \n185 долларов с '
                        'одного '
                        'заявителя. Оплата возможна \nтолько с карт иностранных '
                        'банков. Если у Вас нет возможности оплатить сбор нажмите'
                        ' - запросить условия оплаты.',
                  ],
                  imagePath: 'assets/second_step.png',
                ),
                _DocumentContainer(
                  title: 'Шаг 3. Запись на собеседование',
                  steps: [
                    'Запишем Вас на ближайшую доступную \nдату собеседования.',
                    'Или запишем на выбранный вами диапазон дат \nс помощью бота.',
                  ],
                  imagePath: 'assets/third_ step.png',
                ),
                _DocumentContainer(
                  title: 'Шаг 4. Документы для собеседования',
                  steps: [
                    'Ксерокопия/скан первой страницы паспорта РФ;',
                    'Ксерокопия/скан первой страницы загранпаспорта;',
                    'Заполненный опросный лист;',
                    'Одна цветная фотография 5х5см. на белом фоне в электронном виде;',
                    'Приглашение от родственников или друзей. (Если Вас приглашают).',
                  ],
                  imagePath: 'assets/fourth_ step.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DocumentContainer extends StatelessWidget {
  final String title;
  final List<String> steps;
  final String imagePath;

  const _DocumentContainer({
    required this.title,
    required this.steps,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 585,
      height: 312,
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
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              ...steps.map((text) => _DocumentStep(text: text)).toList(),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              imagePath, // Используем переданный путь к изображению
              width: 113, // Настройте ширину изображения
              height: 113, // Настройте высоту изображения
            ),
          ),
        ],
      ),
    );
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