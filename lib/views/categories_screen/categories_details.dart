import 'package:ecommerce_app/common_widget/bg_widget.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/categories_screen/item_details.dart';

class CategoriesDetails extends StatelessWidget {
  final String? title;

  const CategoriesDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(
                  6,
                  (index) => "Baby Clothing"
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .size(12)
                      .makeCentered() // centers the widget relative to parent
                      .box
                      .white
                      .rounded
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .size(120, 60)
                      .make()),
            ),
          ),

          //items container

          20.heightBox,
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imgP5,
                    width: 200,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  "Red HandBag"
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  "\$1600"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(16)
                      .make(),
                ],
              )
                  .box
                  .white
                  .roundedSM
                  .outerShadowSm
                  .margin(const EdgeInsets.symmetric(horizontal: 4))
                  .padding(const EdgeInsets.all(12))
                  .make()
                  .onTap(() {
                Get.to(() => const ItemDetails(title: "Dummy Title"));
              }),
            ),
          ),
        ],
      ).box.padding(const EdgeInsets.all(12)).make(),
    ));
  }
}
