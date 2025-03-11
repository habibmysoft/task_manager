import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:task_management/theme/colors.dart';
import 'package:task_management/theme/text_theme.dart';
import '../../view_models/task_view_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget weekSlider(List<DateTime> dates, WidgetRef ref, DateTime selectedDate) {

  int initialIndex = dates.indexWhere((date) => DateUtils.isSameDay(date, selectedDate));
  initialIndex = initialIndex == -1 ? 3 : initialIndex; // Default to Today

  return SizedBox(
    height: 64,
    width: double.infinity,
    child: CarouselSlider.builder(
      itemCount: dates.length,
      itemBuilder: (context, index, realIndex) {
        DateTime date = dates[index];
        bool isSelected = DateUtils.isSameDay(date, selectedDate);

        return GestureDetector(
          onTap: () {
            ref.read(selectedDateProvider.notifier).state = date;
          },
          child: Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: isSelected ? null : whiteFE,
              borderRadius: BorderRadius.circular(10),
              gradient: isSelected
                  ? LinearGradient(
                colors: [purple88, purple61],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              )
                  : null,
            ),
            alignment: Alignment.center,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    text_10_400(
                      DateFormat('E').format(date),
                      color: isSelected ? whiteColor : purple88,
                      textAlign: TextAlign.center,
                    ),
                    text_20_600(
                      DateFormat('d').format(date),
                      color: isSelected ? whiteColor : purple61,
                      fontSize: isSelected ? 20 : 14,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        initialPage: initialIndex,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        viewportFraction: 0.20,
        onPageChanged: (index, reason) {
          ref.read(selectedDateProvider.notifier).state = dates[index];
        },
      ),
    ),
  );
}
