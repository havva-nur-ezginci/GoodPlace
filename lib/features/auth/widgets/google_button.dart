import 'package:flutter/material.dart';
import 'package:good_place/core/extensions/context_extension.dart';
import 'package:good_place/features/auth/firebase/authService.dart';
import 'package:good_place/features/home/pages/home_page.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/utils/widgets/custom_buttons.dart';
import '../../../core/utils/widgets/image_container.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  onPressed(BuildContext context) async {
    await AuthService().signInWithGoogle().then((_) {
      context.navigator.pushReplacementNamed(HomePage.routeName);
      Navigator.of(context).popUntil(
          (route) => route.isFirst); //ilk önce onboarding kontrolü yap.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ExpandedOutlinedButtonWithIcon(
          icon: AssetImageContainer(path: AppAssets.googleIcon),
          label: "CONTINUE WITH GOOGLE",
          onPressed: () => onPressed(context),
        ),
      ],
    );
  }
}
