import 'package:ecommerce_app/common_widget/bg_widget.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/accounts_screen/components/details_button.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          body: SafeArea(
        child: Column(
          children: [
            //edit profile button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
              ).onTap(() {}),
            ),

            //users details section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(
                    imgProfile3,
                    width: 80,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  10.widthBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy user".text.fontFamily(semibold).white.make(),
                        "example@gmail.com".text.white.make(),
                      ],
                    ),
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () {},
                      child: logout.text.fontFamily(semibold).white.make()),
                ],
              ),
            ),

            20.heightBox,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsBtn(
                    width: context.screenWidth / 3.4,
                    title: "in your cart",
                    count: "00"),
                detailsBtn(
                    width: context.screenWidth / 3.4,
                    title: "in your wishlist",
                    count: "32"),
                detailsBtn(
                    width: context.screenWidth / 3.4,
                    title: "your orders",
                    count: "11"),
              ],
            ),

            //buttons sections
            ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const Divider(
                          color: lightGrey,
                        ),
                    itemBuilder: (context, index) => ListTile(
                          leading: Image.asset(
                            profileIconsList[index],
                            width: 22,
                          ),
                          title: profileBtnsList[index].text.make(),
                        ),
                    itemCount: profileBtnsList.length)
                .box
                .white
                .rounded
                .outerShadowSm
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      )),
    );
  }
}
