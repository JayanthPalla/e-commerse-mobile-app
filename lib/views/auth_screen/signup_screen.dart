import 'package:ecommerce_app/common_widget/bg_widget.dart';
import 'package:ecommerce_app/common_widget/custom_textfield.dart';
import 'package:ecommerce_app/common_widget/logo_widget.dart';
import 'package:ecommerce_app/common_widget/elevated_button.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/controllers/auth_controller.dart';
import 'package:ecommerce_app/views/home_screen/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isAgreed = false;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());

    //text controllers
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var pswdController = TextEditingController();
    var rpswdController = TextEditingController();
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
            child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  title: name,
                  hint: nameHint,
                  controller: nameController,
                ),
                customTextField(
                  title: email,
                  hint: emailHint,
                  controller: emailController,
                ),
                customTextField(
                  title: password,
                  hint: passwordHint,
                  controller: pswdController,
                  isPswd: true,
                ),
                customTextField(
                  title: retypePass,
                  hint: passwordHint,
                  controller: rpswdController,
                  isPswd: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPass.text.make(),
                  ),
                ),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      checkColor: whiteColor,
                      activeColor: redColor,
                      value: isAgreed,
                      onChanged: (value) {
                        setState(() {
                          isAgreed = value;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " I agree to the ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: tAndC,
                              style: TextStyle(
                                fontFamily: regular,
                                color: redColor,
                              ),
                            ),
                            TextSpan(
                              text: " & ",
                              style: TextStyle(
                                fontFamily: regular,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                5.heightBox,
                customButton(
                  color: isAgreed == true ? redColor : lightGrey,
                  textColor: whiteColor,
                  title: signup,
                  onPress: () async {
                    if (isAgreed != false) {
                      try {
                        await controller
                            .signupMethod(
                          context: context,
                          email: emailController.text,
                          password: pswdController.text,
                        )
                            .then((value) {
                          return controller.storeUserData(
                            email: emailController.text,
                            password: pswdController.text,
                            name: nameController.text,
                          );
                        }).then((value) {
                          VxToast.show(context, msg: loggedIn);
                          Get.offAll(() => const Home());
                        });
                      } catch (e) {
                        auth.signOut();
                        VxToast.show(context, msg: e.toString());
                      }
                    }
                  },
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAcc.text.color(fontGrey).fontFamily(bold).make(),
                    3.widthBox,
                    login.text
                        .color(redColor)
                        .fontFamily(bold)
                        .make()
                        .onTap(() {
                      Get.back();
                    }),
                  ],
                ),
                // RichText(
                //   text: const TextSpan(children: [
                //     TextSpan(
                //       text: alreadyHaveAcc,
                //       style: TextStyle(
                //         color: fontGrey,
                //         fontFamily: bold,
                //       ),
                //     ),
                //     TextSpan(
                //       text: login,
                //       style: TextStyle(
                //         color: redColor,
                //         fontFamily: bold,
                //       ),
                //     ),
                //   ]),
                // ).onTap(() {
                //   Get.back();
                // }),
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
