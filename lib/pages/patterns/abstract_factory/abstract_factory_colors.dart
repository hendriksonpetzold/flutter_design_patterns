import 'package:flutter/animation.dart';

abstract class Colors {
  Color? primaryColor;
  Color? accentColor;
}

class DarkModeColors implements Colors {
  @override
  Color? accentColor = const Color(0XFFFFFFFF);

  @override
  Color? primaryColor = const Color(0xFF000000);
}

class LightModeColors implements Colors {
  @override
  Color? primaryColor = const Color(0XFFFFFFFF);

  @override
  Color? accentColor = const Color(0xFF000000);
}
