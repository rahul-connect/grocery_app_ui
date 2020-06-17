import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app_ui/constants.dart';
import './pickup_tab.dart';
import 'delivery_tab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(children: <Widget>[
                    RichText(text:TextSpan(
                      children: [
                        TextSpan(text: "ASAP - ",style:kTitle1Style),
                         TextSpan(text: "Kormanagala ",style:kTitle2Style.copyWith(fontWeight: FontWeight.w500)),

                      ],
                    ) ),
                    Spacer(),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:Border.all(color:kGreyColor,)
                      ),
                      child: Icon(Icons.more_horiz),

                    ),
                    SizedBox(width:15),
                     Container(
                      width: 40.0,
                      height: 40.0,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: kOrangeAccentColor,
                        shape: BoxShape.circle,
                        border:Border.all(color:kGreyColor,)
                      ),
                      child: SvgPicture.asset('assets/slider.svg')

                    ),
                   
                  ],),
                  ),

                  //? TabBar 
                  Align(
                    alignment: Alignment.topLeft,
                    child: TabBar(
                      isScrollable: true,
                      labelStyle: kTitle1Style,
                      labelColor: kOrangeColor,
                      unselectedLabelColor: kGreyColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: kOrangeColor,
                      tabs: [
                        Container(
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/delivery.svg",width: 30.0,),
                              SizedBox(width: 15.0,),
                             Tab(
                               text: "Delivery",
                             ),

                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset("assets/pickup.svg",width: 30.0,),
                              SizedBox(width: 15.0,),
                             Tab(
                               text: "Pickup",
                             ),

                            ],
                          ),
                        ),
                      ],
                      ),
                  ),
                ],
              ),
            )
            ),
        ),

        body: TabBarView(
          children: [
            DeliveryTab(),
            PickupTab(),
          ],
          
          ),
      ),
      
    );
  }
}