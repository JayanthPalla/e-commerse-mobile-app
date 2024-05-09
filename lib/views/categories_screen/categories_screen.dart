import 'package:ecommerce_app/common_widget/bg_widget.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/categories_screen/categories_details.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: categories.text.white.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: 200),
            itemBuilder: ((context, index) => Column(
                  children: [
                    Image.asset(
                      categoryImgs[index],
                      height: 100,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    10.heightBox,
                    categoryTitles[index]
                        .text
                        .color(darkFontGrey)
                        .align(TextAlign.center)
                        .make(),
                  ],
                )
                    .box
                    .white
                    .padding(const EdgeInsets.all(12))
                    .clip(Clip.antiAlias)
                    .rounded
                    .outerShadowSm
                    .make()
                    .onTap(() {
                  Get.to(() => CategoriesDetails(
                        title: categoryTitles[index],
                      ));
                })),
          ),
        ),
      ),
    );
  }
}
