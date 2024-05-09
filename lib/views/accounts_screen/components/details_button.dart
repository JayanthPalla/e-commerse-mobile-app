import 'package:ecommerce_app/consts/consts.dart';

Widget detailsBtn({width, String? count, String? title}) => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        count!.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
        5.heightBox,
        title!.text.color(darkFontGrey).make(),
      ],
    )
        .box
        .white
        .rounded
        .padding(const EdgeInsets.all(4))
        .width(width)
        .height(80)
        .make();
