import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visa_in_usa/centered_view/centered_view_mobile.dart';

import '../../constants/app_colors.dart';

class ReviewsMobile extends StatelessWidget {
  const ReviewsMobile({super.key});

  final List<Review> reviews = const [
    Review(
      imagePath: 'assets/quotes.png',
      review:
      'Хочу поблагодарить за проделанную помощь в получении визы. Это была моя первая подача документов. Рекомендую, мастеры своего дела!',
      user: 'Иван Иванов',
      date: '12 июля 2024',
    ),
    Review(
      imagePath: 'assets/quotes.png',
      review: 'Очень удобно и быстро. Спасибо!',
      user: 'Ольга Петрова',
      date: '10 июля 2024',
    ),
    // Добавьте больше отзывов по необходимости
  ];

  @override
  Widget build(BuildContext context) {
    return CenteredViewMobile(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Отзывы',
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 14),
          CarouselSlider(
            options: CarouselOptions(
              // height: 245,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 1.0,
              viewportFraction: 1.0,
            ),
            items: reviews.map((review) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    // width: 380,
                    margin: const EdgeInsets.all(5.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            review.imagePath,
                            width: 16,
                            height: 53,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          review.review,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              review.user,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              review.date,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: primarySecondColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class Review {
  final String imagePath;
  final String review;
  final String user;
  final String date;

  const Review({
    required this.imagePath,
    required this.review,
    required this.user,
    required this.date,
  });
}

