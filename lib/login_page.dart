import 'package:flutter/material.dart';
import 'package:flutter_ui/utils/customColors.dart';
import 'package:flutter_ui/utils/customTextStyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    String topImage = "assets/images/topImage.png";
    return Scaffold(
      body: appBody(height, topImage),
    );
  }

  SingleChildScrollView appBody(double height, String topImage) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            topImageContainer(height, topImage),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText(),
                  customSizedBox(),
                  usernameTextField(),
                  customSizedBox(),
                  passwordTextField(),
                  customSizedBox(),
                  forgotPasswordButton(),
                  customSizedBox(),
                  signInButton(),
                  customSizedBox(),
                  signUpButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Text titleText() {
    return Text(
      "Merhaba, \nHosgeldin",
      style: CustomTextStyle.titleTextStyle,
    );
  }

  TextField usernameTextField() {
    return TextField(
      decoration: customInputDecoration("Kullanici Adi"),
    );
  }

  TextField passwordTextField() {
    return TextField(
      decoration: customInputDecoration("Sifre"),
    );
  }

  Center forgotPasswordButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: customText(
          "Sifremi Unuttum",
          CustomColors.textButtonColor,
        ),
      ),
    );
  }

  Center signInButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Container(
          height: 50,
          width: 150,
          margin: EdgeInsets.symmetric(horizontal: 60),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff31274F)),
          child: Center(
            child: customText("Giris Yap", CustomColors.loginButtonTextColor),
          ),
        ),
      ),
    );
  }

  Center signUpButton() {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: customText(
          "Hesap Olustur",
          CustomColors.textButtonColor,
        ),
      ),
    );
  }

  Container topImageContainer(double height, String topImage) {
    return Container(
      height: height * .25,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(topImage),
        ),
      ),
    );
  }

  Widget customSizedBox() => SizedBox(
        height: 20,
      );

  Widget customText(String text, Color color) => Text(
        text,
        style: TextStyle(color: color),
      );

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    );
  }
}
