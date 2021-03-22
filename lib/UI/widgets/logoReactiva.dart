import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoReactiva extends StatelessWidget {
  const LogoReactiva({Key key, this.height = 40.0}) : super(key: key);

  final double height;

  // Cambiar > a ReactivaLogo
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/logo_reactiva.svg',
      height: height,
      color: Colors.white,
    );
  }
}
