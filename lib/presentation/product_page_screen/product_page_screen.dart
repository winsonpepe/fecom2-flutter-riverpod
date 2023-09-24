import '../product_page_screen/widgets/slider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pepe_s_application5/core/app_export.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:pepe_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:pepe_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:pepe_s_application5/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class ProductPageScreen extends StatelessWidget {
  ProductPageScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(40),
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftGray90022x24,
                    margin: getMargin(left: 16, top: 12, bottom: 21),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Shopsie")),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 6),
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CarouselSlider.builder(
                                  options: CarouselOptions(
                                      height: getVerticalSize(289),
                                      initialPage: 0,
                                      autoPlay: true,
                                      viewportFraction: 1.0,
                                      enableInfiniteScroll: false,
                                      scrollDirection: Axis.horizontal,
                                      onPageChanged: (index, reason) {
                                        sliderIndex = index;
                                      }),
                                  itemCount: 1,
                                  itemBuilder: (context, index, realIndex) {
                                    return SliderItemWidget();
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(4),
                                      margin: getMargin(top: 21),
                                      child: AnimatedSmoothIndicator(
                                          activeIndex: sliderIndex,
                                          count: 1,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                              spacing: 4,
                                              activeDotColor:
                                                  theme.colorScheme.primary,
                                              dotColor: appTheme.gray60001,
                                              dotHeight: getVerticalSize(4),
                                              dotWidth:
                                                  getHorizontalSize(15))))),
                              Padding(
                                  padding: getPadding(left: 20, top: 24),
                                  child: Text("Print Maxi Dress",
                                      style: CustomTextStyles
                                          .headlineSmallGray900)),
                              Padding(
                                  padding: getPadding(left: 20, top: 15),
                                  child: Text("99.30",
                                      style: theme.textTheme.titleLarge)),
                              Padding(
                                  padding: getPadding(left: 20, top: 28),
                                  child: Text("PRODUCT DETAILS".toUpperCase(),
                                      style: theme.textTheme.titleSmall)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(356),
                                      margin: getMargin(
                                          left: 20, top: 17, right: 13),
                                      child: Text(
                                          "Mini dress with gather at the sides. Button fastening and slightly dropped shoulder line. Wide sleeves with gathered cuffs. Vertical panels and gather in combination with voluminous sleeves visually adjust the silhouette, making it more graceful",
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumErrorContainer
                                              .copyWith(height: 1.50))))
                            ])))),
            bottomNavigationBar: CustomElevatedButton(
                text: "ADD TO CART".toUpperCase(),
                margin: getMargin(left: 16, right: 16, bottom: 64))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
