import 'package:ecommerce_app/consts/consts.dart';

Widget customTextField(
    {String? title, String? hint, controller, isPswd = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        obscureText: isPswd,
        controller: controller,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            isDense: true, // makes the input box small
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: redColor,
              ),
            )),
      ),
      5.heightBox,
    ],
  );
}
