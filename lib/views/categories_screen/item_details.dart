import 'package:ecommerce_app/common_widget/elevated_button.dart';
import 'package:ecommerce_app/consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //swiper section
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 350,
                    itemCount: 3,
                    itemBuilder: (context, index) => Image.asset(
                      imgFc5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  10.heightBox,

                  //title and details section
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make(),

                  //rating
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    // maxRating: 5,
                    count: 5,
                    size: 25,
                    stepInt: true, // only integer values
                  ),
                  10.heightBox,
                  "\$30,000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),

                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Seller".text.white.fontFamily(semibold).make(),
                            5.heightBox,
                            "In House Brands"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .size(16)
                                .make(),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),

                  //color section
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .make()),
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child:
                                "Quantity: ".text.color(textfieldGrey).make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove),
                              ),
                              "0"
                                  .text
                                  .size(16)
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                              ),
                              10.widthBox,
                              "(0 available)".text.color(textfieldGrey).make(),
                            ],
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //total section
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make(),
                        ],
                      ).box.height(50).padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),

                  //description section
                  10.heightBox,

                  "Description"
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold)
                      .make(),
                  10.heightBox,
                  "This is a dummy item..".text.color(darkFontGrey).make(),

                  //listview
                  10.heightBox,
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                      itemDetailsBtnsList.length,
                      (index) => ListTile(
                        title: itemDetailsBtnsList[index]
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                        trailing: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),

                  //products may like section
                  20.heightBox,
                  prodsYouMayLike.text
                      .fontFamily(bold)
                      .size(16)
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: List.generate(
                        6,
                        (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imgP1,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                            10.heightBox,
                            "Laptop 8Gb/16Gb"
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            10.heightBox,
                            "\$600"
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
                            .margin(const EdgeInsets.symmetric(horizontal: 4))
                            .padding(const EdgeInsets.all(8))
                            .make(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: customButton(
              color: redColor,
              onPress: () {},
              textColor: whiteColor,
              title: "Add to cart",
            ),
          )
        ],
      ),
    );
  }
}
