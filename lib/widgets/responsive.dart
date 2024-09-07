import 'package:flutter/material.dart';
import 'package:visa_in_usa/centered_view/centered_view.dart';
import 'package:visa_in_usa/centered_view/centered_view_mobile.dart';
import 'package:visa_in_usa/widgets/service_cost.dart';
import 'countries_list.dart';


class ResponsiveOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Проверка ширины экрана
        if (constraints.maxWidth > 600) {
          // Если ширина больше 600, используем горизонтальную компоновку (для десктопа)
          return CenteredView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Виджет списка стран
                Expanded(
                  child: ServiceCost(),
                ),
                SizedBox(width: 16), // Отступ между виджетами
                // Виджет стоимости услуги
                Expanded(
                  child: CountriesList(),
                ),
              ],
            ),
          );
        } else {
          // Если ширина меньше 600, используем вертикальную компоновку (для мобильных)
          return CenteredViewMobile(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Виджет списка стран
                ServiceCost(),
                SizedBox(height: 16), // Отступ между виджетами
                // Виджет стоимости услуги
                CountriesList(),
              ],
            ),
          );
        }
      },
    );
  }
}