import 'package:ecommerce_app/consts/consts.dart';

Widget featuredBtn({String? title, image}) {
  return Row(
    children: [
      Image.asset(
        image,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  )
      .box
      .width(200)
      .margin(const EdgeInsets.symmetric(horizontal: 4))
      .white
      .roundedSM
      .padding(const EdgeInsets.all(4))
      .outerShadowSm
      .make();
}
