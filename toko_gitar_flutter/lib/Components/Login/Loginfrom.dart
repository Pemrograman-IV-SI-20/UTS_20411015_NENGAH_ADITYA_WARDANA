//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/Custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/Components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/Screents/Register/RegisterScreens.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/Constants.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInform createState() => _SignInform();
}

class _SignInform extends State<SignInform> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool? remeber = false;

  TextEditingController txtUsername = TextEditingController(),
      txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buiLdUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buiLdPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remeber,
                  onChanged: (value) {
                    setState(() {
                      remeber = value;
                    });
                  }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text("Lupa Password",
                    style: TextStyle(decoration: TextDecoration.underline)),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kColorRedSlow,
            text: "MASUK",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
              "Belum Punya Akun ? Daftar Disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }

  TextFormField buiLdUserName() {
    return TextFormField(
      controller: txtUsername,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Masukan Username Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }

  TextFormField buiLdPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password Anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }
}
