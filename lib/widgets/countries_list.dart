import 'package:flutter/material.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class CountriesList extends StatelessWidget {
  final List<String> countries = [
  'Казахстан',
  'Турция',
  'Сербия',
  'ОАЭ',
  'Мальта',
  'Таджикистан',
  'Польша',
  'Израиль',
  'Черногория',
  'Азербайджан',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
          ),
        ],
      ),
      constraints: const BoxConstraints(
        maxHeight: 300,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Страны где можно оформить',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: RawScrollbar(
              thumbColor: primarySecondColor,
              // Устанавливаем цвет ползунка
              radius: Radius.circular(8.0),
              // Радиус скругления для ползунка
              thickness: 8.0,
              // Толщина скроллбара
              thumbVisibility: true,
              // Скролл всегда виден
              child: ListView.builder(
                itemCount: countries.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      countries[index],
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}