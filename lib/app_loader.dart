import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constant/app_icons.dart';

class AppLoader extends StatefulWidget {
  final double size;
  final Color color;
  const AppLoader({super.key, required this.size, required this.color});

  @override
  State<AppLoader> createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(); // Infinite rotation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: SvgPicture.string(
        AppIcons.appLoaderSvg,
        width: widget.size,
        height: widget.size,
        colorFilter: ColorFilter.mode(widget.color, BlendMode.srcIn),
      ),
    );
  }
}
