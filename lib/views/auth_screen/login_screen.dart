import 'package:ecommerce_app/common_widget/bg_widget.dart';
import 'package:ecommerce_app/common_widget/custom_textfield.dart';
import 'package:ecommerce_app/common_widget/logo_widget.dart';
import 'package:ecommerce_app/common_widget/elevated_button.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/auth_screen/signup_screen.dart';
import 'package:ecommerce_app/views/home_screen/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Login to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(
                  title: password,
                  hint: passwordHint,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPass.text.make(),
                  ),
                ),
                5.heightBox,
                customButton(
                  color: redColor,
                  textColor: whiteColor,
                  title: login,
                  onPress: () {
                    Get.to(() => const Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                customButton(
                  color: lightGolden,
                  textColor: redColor,
                  title: signup,
                  onPress: () {
                    Get.to(() => const SignupScreen());
                  },
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: lightGrey,
                        child: Image.asset(
                          socialMediaList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
                .box
                .white
                .rounded
                .p16
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        )),
      ),
    );
  }
}
