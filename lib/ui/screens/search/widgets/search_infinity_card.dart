import 'package:flutter/material.dart';
import 'package:flutter_task/models/rp_products_model.dart';
import 'package:flutter_task/utils/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/assets.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/constants.dart';
import '../../details/product_details_screen.dart';

class SearchInfinityCard extends StatelessWidget {
  final int index;
  final ProductList product;

  const SearchInfinityCard({
    Key? key,
    required this.index,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    productSlug: product.slug ?? '',
                  )),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 15,
            ),
            height: SizeConfig.screenHeight! / 3,
            child: Card(
              elevation: 1,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 8,
                  bottom: 15,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(
                            child: Padding(
                              padding: EdgeInsets.only(top: (product.stock ?? 0) == 0 ? 15 : 0),
                              child: ClipRRect(
                                clipBehavior: Clip.hardEdge,
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(15),
                                    bottom: Radius.zero),
                                child: FadeInImage.assetNetwork(
                                  placeholder: AssetsImage.placeholder,
                                  image: product.image ?? '',
                                  fit: BoxFit.cover,
                                  imageErrorBuilder: (BuildContext context,
                                      Object exception, StackTrace? stackTrace) {
                                    return Image.asset(
                                      AssetsImage.placeholder,
                                      fit: BoxFit.cover,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -10,
                            right: 0,
                            child: (product.stock ?? 0) == 0 ? Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kStockOutTextBg,
                              ),
                              child: Text(
                                'স্টকে নেই',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: kStockOutTextColor),
                              )) : const SizedBox(),),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Text(product.productName ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                fontFamily: GoogleFonts.balooDa2().fontFamily
                              ),),
                          Row(
                            children: [
                              Text(
                                'ক্রয়',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: kSecondaryTextColor),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${Constants.kCurrency} ${double.parse(product.charge?.currentCharge ?? '').round()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    ?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: kPrimaryColor,
                                    ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                '${Constants.kCurrency} ${(double.parse(product.charge?.currentCharge ?? '') + (product.charge?.discountCharge ?? 0)).round()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      color: kPrimaryColor,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: kPrimaryColor,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'বিক্রয়',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: kSecondaryTextColor),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${Constants.kCurrency} ${double.parse(product.charge?.sellingPrice ?? '').round()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: kSecondaryTextColor,
                                    ),
                              ),
                              Expanded(child: Container()),
                              Text(
                                'লাভ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: kSecondaryTextColor,
                                    ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${Constants.kCurrency} ${double.parse(product.charge?.profit ?? '').round()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: kSecondaryTextColor,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        index == 2 || index == 3
            ? AnimatedSwitcher(
                duration: const Duration(milliseconds: 100),
                transitionBuilder: ((child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                }),
                child: index == 3
                    ? InkWell(
                        onTap: () {},
                        child: Container(
                          height: 36,
                          width: 36,
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
                      )
                    : Container(
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
              )
            : Container(),
      ],
    );
  }
}
