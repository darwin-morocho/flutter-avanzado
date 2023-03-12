import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../global/icons/custom_icons.dart';
import 'circle_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 150,
      leading: SvgPicture.asset(
        'assets/logos/facebook.svg',
        colorFilter: const ColorFilter.mode(
          Colors.blueAccent,
          BlendMode.srcIn,
        ),
        width: 150,
      ),
      actions: const [
        CircleButton(
          color: Color(0xffBFBFBF),
          iconData: CustomIcons.search,
        ),
        SizedBox(width: 15),
        CircleButton(
          color: Color(0xffFE7574),
          iconData: CustomIcons.bell,
        ),
        SizedBox(width: 15),
        CircleButton(
          color: Color(0xff7BBAFF),
          iconData: CustomIcons.user_friends,
          showBadge: true,
        ),
        SizedBox(width: 15),
        CircleButton(
          color: Color(0xff1C86E4),
          iconData: CustomIcons.messenger,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
