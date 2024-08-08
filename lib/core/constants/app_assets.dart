import 'package:flutter/material.dart';

part "enums/assets_path_enum.dart";

class AppAssets {
  static String googleIcon = _AssetsPathEnum.googleIcon.path;
  static String averagePerDailyCardIcon =
      _AssetsPathEnum.averagePerDailyCardIcon.path;
  static String welcomePageImage = _AssetsPathEnum.welcomePageImage.path;

  //onboarding
  static String onboardingFirstPageImage =
      _AssetsPathEnum.onboardingFirstPageImage.path;
  static String onboardingSecondPageImage =
      _AssetsPathEnum.onboardingSecondPageImage.path;
  static String onboardingThirdPageImage =
      _AssetsPathEnum.onboardingThirdPageImage.path;
  static String onboardingFourthPageImage =
      _AssetsPathEnum.onboardingFourthPageImage.path;
  static String onboardingSkipIcon = _AssetsPathEnum.onboardingSkipIcon.path;

  static String passwordHideIcon = _AssetsPathEnum.passwordHide.path;
  static String passwordShowIcon = _AssetsPathEnum.passwordShow.path;

  /// TODO : Bunlara renk ekle
  static Widget chartIcon = const Icon(Icons.show_chart);
  static Widget calendarIcon = const Icon(Icons.calendar_today_outlined);
  static Widget checkIcon = const Icon(Icons.check);
}
