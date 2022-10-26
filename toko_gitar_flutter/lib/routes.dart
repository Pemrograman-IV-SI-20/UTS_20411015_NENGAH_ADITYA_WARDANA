import 'package:flutter/cupertino.dart';
import 'package:toko_gitar_flutter/Screents/Login/Loginscreens.dart';
import 'package:toko_gitar_flutter/Screents/Register/RegisterScreens.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: ((context) => LoginScreen()),
  RegisterScreen.routeName: ((context) => RegisterScreen())
};
