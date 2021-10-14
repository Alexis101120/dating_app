
import 'package:dating_app/utils/DAColors.dart';
import 'package:dating_app/utils/DAConstants.dart';
import 'package:dating_app/utils/DAWidgets.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Purchase for more screen',
      color: primaryColor,
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launchURL(purChaseUrl);
      },
    );
  }
}
