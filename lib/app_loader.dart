import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zaaroz_sdk/constant/app_icons.dart';

class AppLoader extends StatelessWidget {
  final double size;
  final Color color;
  const AppLoader({super.key, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.string(
      AppIcons.appLoaderSvg,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
