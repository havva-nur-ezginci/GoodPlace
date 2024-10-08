import 'package:flutter/material.dart';
import '../../../config/theme.dart';
import '../../constants/app_paddings.dart';

enum ButtonType {
  primary,
  secondary,
}

///
/// [ExpandedFilledButton] içerisinde bulunduğu [Row]'un tüm
/// genişliğini alır.
///
/// ! NOT : Sadece [Row] widget içinde kullanılabilir.
class ExpandedFilledButton extends StatelessWidget {
  const ExpandedFilledButton({
    super.key,
    this.onPressed,
    required this.label,
    this.color,
    this.buttonType = ButtonType.primary,
  });
  final void Function()? onPressed;
  final String label;
  final Color? color;
  final ButtonType? buttonType;

  @override
  Widget build(BuildContext context) {
    assert(context.findAncestorWidgetOfExactType<Row>() != null,
        "Bu widget [Row] içerisinde olmalidir. !!!!!");

    return Expanded(
      child: FilledButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: buttonType == ButtonType.primary
              ? AppColors.primaryButtonTextColor
              : AppColors.darkTextColor,
          backgroundColor: color ??
              (buttonType == ButtonType.primary
                  ? AppColors.primaryButtonColor
                  : AppColors.secondaryButtonColor),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPaddings.smallPaddingValue,
          ),
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}

///
/// [ExpandedOutlinedButton] içerisinde bulunduğu [Row]'un tüm
/// genişliğini alır.
///
/// ! NOT : Sadece [Row] widget içinde kullanılabilir.
class ExpandedOutlinedButton extends StatelessWidget {
  const ExpandedOutlinedButton({
    super.key,
    this.onPressed,
    required this.label,
    this.color,
  });
  final void Function()? onPressed;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    assert(context.findAncestorWidgetOfExactType<Row>() != null,
        "Bu widget [Row] içerisinde olmalidir. !!!!!");

    /// TODO : Bu butonun rengi,ileride theme içerisinden gelecek.
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: onPressed,
        iconAlignment: IconAlignment.start,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPaddings.smallPaddingValue,
          ),
          child: Center(
            child: Text(
              label,
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedOutlinedButtonWithIcon extends StatelessWidget {
  const ExpandedOutlinedButtonWithIcon({
    super.key,
    this.onPressed,
    required this.label,
    this.color,
    required this.icon,
  });
  final void Function()? onPressed;
  final String label;
  final Color? color;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    assert(context.findAncestorWidgetOfExactType<Row>() != null,
        "Bu widget [Row] içerisinde olmalidir. !!!!!");

    /// TODO : Bu butonun rengi,ileride theme içerisinden gelecek.
    return Expanded(
      child: OutlinedButton(
        // style: context.theme.outlinedButtonTheme.style,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppPaddings.smallPaddingValue,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: icon,
              ),
              Align(
                // alignment: Alignment.center,
                child: Text(
                  label,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
