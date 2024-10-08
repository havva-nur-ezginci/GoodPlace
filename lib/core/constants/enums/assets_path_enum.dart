// ignore_for_file: unused_field

part of '../app_assets.dart';

enum _AssetsPathEnum {
  /// Icons
  googleIcon("${_rootIconPath}ic_google.png"),

  // Average per daily card'ında kullanılan icon.
  averagePerDailyCardIcon("${_rootIconPath}ic_avarage_per_daily.png"),
  passwordShow("${_rootIconPath}ic_password_shown.png"),
  passwordHide("${_rootIconPath}ic_password_hide.png"),
  onboardingSkipIcon("${_rootIconPath}skip_button_onboarding.png"),
  goodAfternoonIcon("${_rootIconPath}ico_good_after_noon.png"),
  goodMorningIcon("${_rootIconPath}ico_good_morning.png"),
  goodNightIcon("${_rootIconPath}ico_good_night.png"),

  /// Images

  /// Sign In ve Sign Up sayfalarında kullanılan image
  authTopBackgroundImage("${_rootImagePath}auth_screens_image.png"),
  welcomePageImage("${_rootImagePath}img_welcome.png"),
  streakCardImage("${_rootImagePath}streak_card_image.png"),
  motivationCardBgImage("${_rootImagePath}img_motivation_card_bg.png"),

  onboardingFirstPageImage("${_rootImagePath}img_onboarding_1.png"),
  onboardingSecondPageImage("${_rootImagePath}img_onboarding_2.png"),
  onboardingThirdPageImage("${_rootImagePath}img_onboarding_3.png"),
  onboardingFourthPageImage("${_rootImagePath}img_onboarding_4.png"),

  // Animations
  aiButtonAnimation("${_rootAnimationPath}ani-ai.json"),
  wellDoneAnimation("${_rootAnimationPath}ani-well_done.json"),
  streakCardAnimation("${_rootAnimationPath}ani-streakCardAnimation.json"),
  totalDonePerDayCardAnimation("${_rootAnimationPath}ani-checkCardIcon.json"),
  aiChatSendButton("${_rootAnimationPath}ani-chatSendButton.json"),
  noHabitsFound("${_rootAnimationPath}ani-noHabitsFound.json"),
  homeIcon("${_rootAnimationPath}ani-homeIcon.json"),
  longTimeNotDoneCard("${_rootAnimationPath}ani-longTimeNotDoneCard.json"),
  ;

  static const String _rootIconPath = "lib/core/assets/icons/";
  static const String _rootImagePath = "lib/core/assets/images/";
  static const String _rootAnimationPath = "lib/core/assets/animations/";

  final String path;

  /// Uygulama içerisinde kullanılan resimlerin Path'leri bu enumda toplandı.
  const _AssetsPathEnum(this.path);
}
