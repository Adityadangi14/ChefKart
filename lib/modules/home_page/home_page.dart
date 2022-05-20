import 'dart:ui';

import 'package:chefkart/modules/detail_page/detail_page.dart';
import 'package:chefkart/modules/home_page/getx/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Icon(Icons.keyboard_arrow_left_outlined),
                    const SizedBox(width: 24),
                    Text(
                      'Select Dishes',
                      style: GoogleFonts.openSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 270,
                width: double.maxFinite,
                child: Stack(children: [
                  Container(
                    height: 42,
                    width: double.maxFinite,
                    color: const Color(0xff1c1c1c),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 63,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 23, vertical: 21),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/Select_date-01.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '21 May 2021',
                                style: GoogleFonts.openSans(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const SizedBox(
                                height: 16,
                                child: VerticalDivider(),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Image.asset('assets/images/Set_time-01.png'),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '10:30 Pm- 12-30 Pm',
                                style: GoogleFonts.openSans(
                                    fontSize: 12, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 104,
                    child: SizedBox(
                      height: 20,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 24,
                            width: 76,
                            decoration: BoxDecoration(
                              color: Color(0xfffff9f2),
                              border: Border.all(color: Color(0xffFF941a)),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                                child: Text(
                              'Italian',
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xffFF941a),
                              ),
                            )),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 24,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffBDBDBD)),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                                child: Text(
                              'Indian',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade500),
                            )),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 24,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffBDBDBD)),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                                child: Text(
                              'Indian',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade500),
                            )),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 24,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffBDBDBD)),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                                child: Text(
                              'Indian',
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade500),
                            )),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            height: 24,
                            width: 76,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffBDBDBD)),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Center(
                                child: Text(
                              'Indian',
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade500),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 149,
                    left: 23,
                    child: Text(
                      'Popular Dishes',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 180,
                    left: 0,
                    right: 0,
                    child:
                        GetBuilder<HomePageController>(builder: (_controller) {
                      return _controller.isLoading.value
                          ? SizedBox(
                              height: 30,
                              width: 30,
                              child: CircularLoader())
                          : Container(
                              height: 90,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _controller
                                      .response!.popularDishes!.length,
                                  itemBuilder: (context, index) {
                                    return Stack(
                                      children: [
                                        Container(
                                            padding: EdgeInsets.all(2),
                                            margin: EdgeInsets.all(8),
                                            height: 73,
                                            width: 73,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Color(0xffff941a),
                                                ),
                                                shape: BoxShape.circle),
                                            child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    _controller
                                                        .response!
                                                        .popularDishes![index]
                                                        .image!),
                                                child: Container())),
                                        Container(
                                          padding: EdgeInsets.all(2),
                                          margin: EdgeInsets.all(8),
                                          height: 73,
                                          width: 73,
                                          decoration: BoxDecoration(
                                              color: Colors.black38,
                                              border: Border.all(
                                                color: Color(0xffff941a),
                                              ),
                                              shape: BoxShape.circle),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(6),
                                          margin: EdgeInsets.all(8),
                                          height: 73,
                                          width: 73,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Color(0xffff941a),
                                              ),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Text(
                                              _controller.response!
                                                  .popularDishes![index].name!,
                                              style: GoogleFonts.openSans(
                                                color: Colors.white,
                                                fontSize: 11,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                            );
                    }),
                  )
                ]),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Recommended',
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    Container(
                      height: 22,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Menu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Expanded(
                child: GetBuilder<HomePageController>(
                    init: _controller,
                    builder: (_controller) {
                      return _controller.isLoading.value
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: const CircularLoader())
                          : ListView.builder(
                              itemCount: _controller.response!.dishes!.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 140,
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(horizontal: 23),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    _controller.response!
                                                        .dishes![index].name!,
                                                    style: GoogleFonts.openSans(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Image.asset(
                                                      'assets/images/Group 359.png'),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  Container(
                                                    height: 10,
                                                    width: 22,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Colors.lightGreen,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2)),
                                                    child: Center(
                                                        child: Text(
                                                      _controller
                                                          .response!
                                                          .dishes![index]
                                                          .rating!
                                                          .toString(),
                                                      style: TextStyle(
                                                        fontSize: 6,
                                                        color: Colors.white,
                                                      ),
                                                    )),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/Group 508.png'),
                                                      Text(
                                                        'Refrigator',
                                                        style: TextStyle(
                                                          fontSize: 8,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  SizedBox(width: 10),
                                                  Column(
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/Group 508.png'),
                                                      Text(
                                                        'Refrigator',
                                                        style: TextStyle(
                                                          fontSize: 8,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                      height: 10,
                                                      child: VerticalDivider()),
                                                  Column(
                                                    children: [
                                                      Text('Ingredients',
                                                          style: GoogleFonts
                                                              .openSans(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600)),
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.of(context)
                                                              .push(
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  DetailPage(),
                                                            ),
                                                          );
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Text('View List',
                                                                style: GoogleFonts.openSans(
                                                                    fontSize: 8,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: Colors
                                                                        .amber)),
                                                            Icon(
                                                                Icons
                                                                    .keyboard_arrow_right,
                                                                color: Colors
                                                                    .amber)
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 5),
                                              Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.6,
                                                  child: Text(
                                                      _controller
                                                          .response!
                                                          .dishes![index]
                                                          .description!,
                                                      style:
                                                          GoogleFonts.openSans(
                                                        fontSize: 12,
                                                        color: Colors.grey,
                                                      ))),
                                            ],
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            child: Container(
                                              width: 92,
                                              height: 80,
                                              child: FittedBox(
                                                fit: BoxFit.fill,
                                                child: Image(
                                                    image: NetworkImage(
                                                        _controller
                                                            .response!
                                                            .dishes![index]
                                                            .image!)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Divider()
                                    ],
                                  ),
                                );
                              });
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircularLoader extends StatelessWidget {
  const CircularLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Image(image: AssetImage('assets/images/106177-food-loading.gif'),));
  }
}
