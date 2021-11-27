import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:gridvide/Models/product_grid.dart';
import 'package:gridvide/Models/partner_card.dart';
import 'package:gridvide/Widget/buttontextfield.dart';
import 'package:gridvide/Widget/custom_banner.dart';
import 'package:gridvide/Widget/custom_grid_card.dart';
import 'package:gridvide/Widget/custom_partner.card.dart';
import 'package:gridvide/Widget/custom_profile.dart';
import 'package:gridvide/Widget/discount.dart';
import 'package:gridvide/Widget/field_titlemarketscreen.dart';
import 'package:gridvide/Widget/slideshow_banner.dart';
import 'package:gridvide/Widget/slideshow_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
//Create List for show Grid products or catigory food
  List<ProductGrid> listProduct = [
    ProductGrid(
      image: 'assets/MaskGroup.png',
      title: 'ABC Park Cafe(TK)  rdtrtdedtrdtrdedt',
      subtitle: 'Healthy & Delicious',
      stackPro: 'Only Today',
      price: 5.49,
      discountPrice: 4.29,
    ),
    ProductGrid(
      image: 'assets/grid_image2.png',
      title: 'ABC burger(TK)',
      subtitle: 'Healthy & Delicious',
      stackPro: 'Only Today',
      price: 5.49,
      discountPrice: 4.29,
    ),
    ProductGrid(
      image: 'assets/grid_image3.png',
      title: 'ABC Park Cafe(TK)',
      subtitle: 'Healthy & Delicious',
      stackPro: 'Only Today',
      price: 5.49,
      discountPrice: 4.29,
    ),
    ProductGrid(
      image: 'assets/grid_image4.png',
      title: 'ABC burger(TK)',
      subtitle: 'Healthy & Delicious',
      stackPro: 'Only Today',
      price: 5.49,
      discountPrice: 4.29,
    ),
  ];
//Create List for show Partner Logo
  List<PartnerCard> listPartnerLogo = [
    PartnerCard(
      imagepartner: 'assets/Park _Cafe1.png',
      titlePartner: 'Park Cafe',
    ),
    PartnerCard(
      imagepartner: 'assets/Park _Cafe3.png',
      titlePartner: 'Pizza TK',
    ),
    PartnerCard(
      imagepartner: 'assets/Park_Cafe4.png',
      titlePartner: 'Natural Food',
    ),
    PartnerCard(
      imagepartner: 'assets/ParkCafe2.png',
      titlePartner: 'Circle K',
    ),
    PartnerCard(
      imagepartner: 'assets/Park_Cafe4.png',
      titlePartner: 'Circle K',
    ),
    PartnerCard(
      imagepartner: 'assets/Park _Cafe3.png',
      titlePartner: 'Pizza TK',
    ),
  ];
  //create List for slide show grid banner home page
  List< SlideBanner> listBannerImageSlid = [
    SlideBanner(
      imagebanner: 'assets/group_slide.png',
    ),
    SlideBanner(
      imagebanner: 'assets/group_slide.png',
    ),
    SlideBanner(
      imagebanner: 'assets/group_slide.png',
    ),
  ];

  //Creaite List for Slideshow imag card grid
  List<SlideShowCard> imageShowGrid = [
    SlideShowCard(imagecardGrid: 'assets/slide_card_grid.png'),
    SlideShowCard(imagecardGrid: 'assets/slide_card_grid.png'),
    SlideShowCard(imagecardGrid: 'assets/slide_card_grid.png'),
    SlideShowCard(imagecardGrid: 'assets/slide_card_grid.png'),
    SlideShowCard(imagecardGrid: 'assets/slide_card_grid.png'),
  ];

  //end all Create List

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F50A4),
        title: const Text('Marketplace'),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Image.asset('assets/cic_logo.png'),
        ),
        actions: const [
          Center(child: CustomProfile(imgUrl: "assets/Ellipse.png")),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 12, right: 12),
        margin:const EdgeInsets.only(top: 18),
        color: Colors.white.withOpacity(0.6),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // #slideImageCarousel////banner image
              CustomBanner(imgSliderList:listBannerImageSlid),
             
              //end slid show image Carousel
              const SizedBox(height: 20),
              //Text Field Search------------------
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: ButtonTextFieldSearch(
                      feildSearch: 'Search',
                      iconFieldSearch: 'assets/Search.png',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Discount(
                      iconDiscount: 'assets/icon_mainsearch.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              //Slidesho Logo partner/////////////
              Container(
                color: Colors.transparent,
                width: double.infinity,
                height: 120,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: listPartnerLogo
                        .map((e) => CustomPartner(
                              imagePartner: e.imagepartner,
                              titlePartner: e.titlePartner,
                            ))
                        .toList(),
                  ),
                ),
              ),
              //end partner logo slide////////////////////////
              TitleFieldMarketScreen(
                fieldTitleMarketscreen: 'Nearest to you',
              ),
              const SizedBox(
                height: 20,
              ),
              //end title main

              //Start Grid card///////
              GridView.builder(
                  shrinkWrap: true,
                  primary: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? 2
                        : 2,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    childAspectRatio: MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? 1.6
                        : 0.80,
                  ),
                  itemCount: listProduct.length,
                  itemBuilder: (context, index) {
                    return CustomCard(
                      image: listProduct[index].image,
                      titleProduct: listProduct[index].title,
                      subProduct: listProduct[index].subtitle,
                      stackProduct: listProduct[index].stackPro,
                      priceProduct: listProduct[index].price.toString(),
                      discountPrice:
                          listProduct[index].discountPrice!.toString(),
                    );
                  }),
              const SizedBox(
                height: 18,
              ),
              TitleFieldMarketScreen(
                fieldTitleMarketscreen: 'Recommended for you',
              ),
              const SizedBox(
                height: 18,
              ),
              //Show Card Image//
              Container(
                color: Colors.transparent,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: imageShowGrid
                        .map((z) => SlideShowCard(
                              imagecardGrid: z.imagecardGrid,
                            ))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
