import 'package:flutter/material.dart';
import 'package:visa_in_usa/constants/app_colors.dart';

class ServiceCost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Стоимость услуги:',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          const Text(
            '6 000 Р + консульский сбор',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Center(
            child: SizedBox(
              width: 290,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  // Обработка нажатия кнопки
                  print("Получить визу нажата");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primarySecondColor,
                ),
                child: const Text(
                  'Получить визу',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
