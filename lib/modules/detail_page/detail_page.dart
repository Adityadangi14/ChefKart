import 'package:chefkart/modules/detail_page/getx/detail_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _controller = Get.put(DetailPageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<DetailPageController>(
            init: _controller,
            builder: (_controller) {
              return _controller.isLoading.value
                  ? Center(child: const CircularProgressIndicator())
                  : Stack(
                      children: [
                        Positioned(
                          right: -10,
                          top: 40,
                          child: pinkContainer()),
                         Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: const Icon(Icons.keyboard_arrow_left),
                              ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                              
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               
                                SizedBox(
                                  height: 80,
                                ),
                                Row(
                                  children: [
                                    Text(_controller.response.name,
                                        style: GoogleFonts.openSans(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      height: 15,
                                      width: 27,
                                      decoration: BoxDecoration(
                                          color: Colors.lightGreen,
                                          borderRadius: BorderRadius.circular(2)),
                                      child: const Center(
                                          child: Text(
                                        '4.2',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                                 SizedBox(
                                  height:6,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *0.6,
                                  child: Text(
                                    'Mughlai Masala is a style of cookery developed in the Indian Subcontinent by the imperial kitchens of the Mughal Empire.',
                                    style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/Set_time-01.png'),
                                    const Text('1 Hour')
                                  ],
                                ),
                                SizedBox(
                                  height: 31,
                                ),
                                Divider(thickness: 2,color: Colors.grey.shade200,),
                                Text('Ingridents',style: GoogleFonts.openSans(
                                  fontSize:16,
                                  fontWeight:FontWeight.w700,
                                ),),
                                Text('For 2 people',style: GoogleFonts.openSans(
                                  fontSize:10,
                                  color: Colors.grey
                                ),),
                                SizedBox(
                                  height: 16,
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text('Vegetables',style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    Icon(Icons.arrow_drop_down,)
                                  ],
                                ),
                                Container(
                                  height: 70,
                                  child: ListView.builder(
                                    itemCount: _controller.response.ingredients.vegetables.length,
                                    itemBuilder: (context,index){
                                      return Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(_controller.response.ingredients.vegetables[index].name,style: TextStyle(fontSize: 12),),
                                            Text(_controller.response.ingredients.vegetables[index].quantity,style: TextStyle(fontSize: 12))
                                
                                        ]),
                                      );
                                    }),
                                ),
                                 Row(
                                  children: [
                                    Text('Spices',style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    Icon(Icons.arrow_drop_down,)
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  child: ListView.builder(
                                    itemCount: _controller.response.ingredients.spices.length,
                                    itemBuilder: (context,index){
                                      return Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(_controller.response.ingredients.spices[index].name,style: TextStyle(fontSize: 12)),
                                            Text(_controller.response.ingredients.spices[index].quantity,style: TextStyle(fontSize: 12))
                                
                                        ]),
                                      );
                                    }),
                                ),
                                 Row(
                                  children: [
                                    Text('Appliences',style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w600,
                                    ),),
                                    Icon(Icons.arrow_drop_down,)
                                  ],
                                ),
                                 Container(
                                   height: 90,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: _controller.response.ingredients.appliances.length,
                                    itemBuilder: (context,index){
                                      return Column(
                                        children: [
                                          Container(
                                            height: 70,
                                            child: Image(image: AssetImage('assets/images/refrig.png')),
                                          ),
                                          Text(_controller.response.ingredients.appliances[index].name,style: TextStyle(fontSize: 12))
                                        ],
                                      );
                                    }),
                                )


                              ]),
                        ),
                        Positioned(
                          top: 170,
                          right: -120,
                          child: Image.asset('assets/images/Mask Group 17.png')),
                        Positioned(
                          right: -100,
                          top: 130,
                          child: Image.asset('assets/images/pngtree-herbal-ingredients-transparent-image-png-image_3206949-removebg-preview.png'))
                      ],
                    );
            }),
      ),
    );
  }
}

Container pinkContainer(){

  return Container(
    height: 192,
    width: 192,
    decoration: BoxDecoration(
      color: Color(0xfffff9f2),
      shape: BoxShape.circle,
    ),
  );
}