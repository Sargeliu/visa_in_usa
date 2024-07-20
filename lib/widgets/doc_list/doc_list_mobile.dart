import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class DocListMobile extends StatelessWidget {
  const DocListMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
    );

    final itemStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );

    final items = [
      'Опросный лист',
      'Фотография',
    ];

    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: 320, // Увеличьте ширину, чтобы вместить контейнер и
          // изображение
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 320,
                height: 229,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Список документов:', style: titleStyle),
                    const SizedBox(height: 20),
                    ...items.map((item) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: ChecklistItem(text: item, style: itemStyle),
                        )),
                  ],
                ),
              ),
              Positioned(
                right: 0, // Настройте это значение, чтобы контролировать,
                // насколько изображение выходит за пределы контейнера
                bottom: -15, // Настройте это значение, чтобы контролировать
                // вертикальное положение изображения
                child: Transform.rotate(
                  angle: 1 * 3.141592653589793 / 180, // Преобразование
                  // градусов в радианы
                  child: Image.asset(
                    'assets/iconCarrier.png', // Замените на путь к вашему
                    // изображению
                    width: 99, // Настройте ширину по необходимости
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChecklistItem extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ChecklistItem({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.check, size: 25, color: primarySecondColor),
        const SizedBox(width: 10),
        Flexible(
            child: Text(
          text,
          style: style,
          overflow: TextOverflow.ellipsis,
        )),
      ],
    );
  }
}
