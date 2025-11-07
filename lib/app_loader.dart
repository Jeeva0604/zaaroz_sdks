import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:zaaroz_sdk/constant/app_icons.dart';

class AppLoader extends StatelessWidget {
  final double size;
  final Color color;
  const AppLoader({super.key, required this.size, required this.color});

  @override
  Widget build(BuildContext context) {
    return Iconify(AppIcons.appLoaderSvg, size: size, color: color);
  }
}
