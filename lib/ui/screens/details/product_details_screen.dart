import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/assets.dart';
import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../../utils/utils.dart';
import '../../shared/widgets/custom_painter_new.dart';
import '../../shared/widgets/custom_separator.dart';
import '../../shared/widgets/custom_text_filed.dart';
import 'widgets/image_view.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productSlug;
  const ProductDetailsScreen({Key? key, required this.productSlug}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const description = "<font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">প্রদর্শিত বিক্রয়মূল্য এবং লাভের পরিমাণ পরিবর্তনশীল। বাজার এবং&nbsp;</span></font><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Sans&quot;, sans-serif; font-size: 16px; letter-spacing: -0.3px;\">বিক্রেতার</span><font color=\"#000000\" face=\"Noto Sans, sans-serif\" style=\"letter-spacing: 0.14px;\"><span style=\"font-size: 16px; letter-spacing: -0.3px;\">&nbsp;বিবেচনার উপর নির্ভরশীল।</span></font> ";
    return Scaffold(
      appBar: AppBar(title: const Text('প্রোডাক্ট ডিটেইল'),),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () =>  Navigator.of(context).pop(),
                child: CustomTextFiled(
                  actionType: TextInputAction.search,
                  hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন',
                  absorbing: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      AssetsImage.search,
                      color: kIconColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              SizedBox(
                width: SizeConfig.screenWidth,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: false,
                    //aspectRatio: 3/4,
                    enlargeCenterPage: true,
                    height: SizeConfig.screenHeight! * .4,
                    viewportFraction: .7,
                  ),
                  items: const [
                    ImageView(imgLink: 'https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1383/%E0%A6%B8%E0%A6%9C_4.png'),
                    ImageView(imgLink: 'https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1383/%E0%A6%B8%E0%A6%9C_4.png'),
                    ImageView(imgLink: 'https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1383/%E0%A6%B8%E0%A6%9C_4.png'),
                    ImageView(imgLink: 'https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1383/%E0%A6%B8%E0%A6%9C_4.png'),
                    ImageView(imgLink: 'https://d1ojphegpburrh.cloudfront.net/media/images/product/None/1383/%E0%A6%B8%E0%A6%9C_4.png')
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 20, top: 25, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'মোজাম্মেল সিদ্ধ খুদ- ৫০ কেজি',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                              fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20),
                          child: Row(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'ব্র্যান্ডঃ ',
                                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: kSecondaryTextColor,
                                          fontFamily: GoogleFonts.balooDa2().fontFamily
                                      ),),
                                    TextSpan(
                                      text: ' Rice',
                                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: GoogleFonts.balooDa2().fontFamily
                                      ),),
                                  ],
                                ),),
                              Container(
                                alignment: Alignment.bottomCenter,
                                padding:
                                const EdgeInsets.only(
                                    left: 10,
                                    right: 10),
                                child: const Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: kPrimaryColor,
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'ডিস্ট্রিবিউটরঃ ',
                                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: kSecondaryTextColor,
                                          fontFamily: GoogleFonts.balooDa2().fontFamily
                                      ),),
                                    TextSpan(
                                      text: 'SupplyLine',
                                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: GoogleFonts.balooDa2().fontFamily
                                      ),),
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: RichText(
                                  text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'ডক্রয়মূল্যঃ ',
                                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                            fontSize: 22,
                                          color: kPrimaryColor,
                                        ),),
                                      TextSpan(
                                        text: '${Constants.kCurrency} 100',
                                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                          fontSize: 22,
                                          color: kPrimaryColor,
                                        ),),
                                    ],
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          'বিক্রয়মূল্যঃ ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                              fontSize: 16,),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: SizeConfig.screenWidth! / 2 - 55,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: kCounterButtonBg,
                                            borderRadius: BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                height: 32,
                                                width: 32,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: kCounterDecrementIconBg,
                                                ),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  Icons.remove,
                                                  color: kWhiteColor,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '10 পিস',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1
                                                  ?.copyWith(color: kPrimaryColor),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 32,
                                                width: 32,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  gradient: kButtonGradient,
                                                ),
                                                alignment: Alignment.center,
                                                child: const Icon(
                                                  Icons.add,
                                                  color: kWhiteColor,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          '${Constants.kCurrency} 100',
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                            fontSize: 16,),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const CustomSeparator(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'লাভঃ ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                        fontSize: 16,),
                                    ),
                                    Text(
                                      '${Constants.kCurrency} 100',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                        fontSize: 16,),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8,),
                            ],
                          ),
                        ),
                        Container(
                          height: 54,
                          padding: const EdgeInsets.only(bottom: 0),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'বিস্তারিত',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(
                                fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12),
                        child: CustomPaint(
                          size: Size(
                              90,
                              (90 * 1.0886075949367089)
                                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: CustomPainterNew(),
                        ),
                      ),
                      productSlug == '-vgzj'
                          ? Container()
                          : Positioned(
                        right: 0,
                        top: 10,
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kCounterButtonBg,
                            border: Border.all(
                              color: kWhiteColor,
                              width: 1.5,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '5',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                  fontSize: 16, height: 1.0),
                            ),
                          ),
                        ),
                      ),
                      productSlug == '-vgzj'
                          ? Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            'এটি',
                            style: Theme.of(context)
                                .textTheme.subtitle1?.copyWith(
                              fontSize: 16,
                              color: kWhiteColor,
                            ),
                          ),
                          Text(
                            'কিনুন',
                            style: Theme.of(context)
                                .textTheme.subtitle1?.copyWith(
                              fontSize: 16,
                              color: kWhiteColor,
                            ),
                          ),
                        ],
                      )
                          : Column(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AssetsImage.shoppingBag,
                            height: 28,
                            width: 28,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'কার্ট',
                            style: Theme.of(context)
                                .textTheme.subtitle1?.copyWith(
                              fontSize: 16,
                              color: kWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding:const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Utils().htmlToString(description),
                      style: GoogleFonts.balooDa2(
                        fontSize: 18,
                        color: kSecondaryTextColor,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
