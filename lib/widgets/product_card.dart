import 'package:flutter/material.dart';
import 'package:grocery_app_ui/constants.dart';
import 'package:grocery_app_ui/models/product.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  final bool isRecommended;
  ProductCard({this.product,this.isRecommended});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170.0,
      padding: EdgeInsets.all(2.0),
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
         color: kWhiteColor,
         borderRadius: BorderRadius.circular(15.0),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          isRecommended ? Chip(label: Text("Top",style:kChipStyle),backgroundColor: kRedColor,padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),):Container(),

          Expanded(child: Center(
            child: Image.asset(product.image,fit: BoxFit.cover,),
          )),

          ListTile(
            title: Text(product.name,overflow: TextOverflow.ellipsis,style: kTitle1Style,),
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("\$${product.price}",style: kSubtitleStyle,),
                Text("00",style: kSubtitle2Style,)
              ],
            ),
            trailing: Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kOrangeColor),
              ),
              child: Icon(Icons.add,color:kOrangeColor),
            ),
          ),
          
        ],
      ),
      
    );
  }
}