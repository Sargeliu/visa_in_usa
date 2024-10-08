import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../centered_view/centered_view_mobile.dart';
import '../../constants/app_colors.dart';

class VisaSchemeMobile extends StatelessWidget {
  const VisaSchemeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CenteredViewMobile(
        child: _buildVisaSchemeMobile(context),
      ),
    );
  }

  Widget _buildVisaSchemeMobile(BuildContext context) {

    return Container(
      // padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Text(
              "Схема получения визы:",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.black),
            ),
            SizedBox(
              height: 34,
            ),
            Wrap(
              spacing: 20, // Отступ между контейнерами
              runSpacing: 20, // Отступ между строками контейнеров
              children: [
                _DocumentContainer(
                  title: 'Шаг 1. \nПодготовка \nдокументов',
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
                  title: 'Шаг 2. \nОплата консульского \nсбора и услуг \nпо '
                      'оформлению визы',
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
                  title: 'Шаг 3. \nЗапись \nна собеседование',
                  steps: [
                    'Запишем Вас на ближайшую доступную \nдату собеседования.',
                    'Или запишем на выбранный вами диапазон дат \nс помощью бота.',
                  ],
                  imagePath: 'assets/third_ step.png',
                ),
                _DocumentContainer(
                  title: 'Шаг 4. \nДокументы \nдля собеседования',
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
      width: 290,
      height: 350,
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
      padding: const EdgeInsets.all(10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    width: 73,
                    height: 73,
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ...steps.map((text) => _DocumentStep(text: text)).toList(),
            ],
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
                fontSize: 12,
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
