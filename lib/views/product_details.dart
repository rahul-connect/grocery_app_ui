import 'package:flutter/material.dart';
import 'package:grocery_app_ui/constants.dart';
import '../models/product.dart';

class ProductDetail extends StatefulWidget {
  final Product product;
  ProductDetail({this.product});

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {

  int counter=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_horiz,color: kBlackColor,), onPressed: (){})
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: kBlackColor,), onPressed: (){
          Navigator.pop(context);
        }),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(child: Center(child: Image.asset(widget.product.image,fit: BoxFit.fill,),)),
            SizedBox(height: 25.0,),
            Text(widget.product.name,style: kTitle1Style.copyWith(fontSize: 23.0),),
            SizedBox(height: 25.0,),
            Row(
              children: <Widget>[
                GestureDetector(
                                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kGreyColor),
                    ),
                    child: Icon(Icons.remove,color: kOrangeColor,),
                  ),
                ),
                SizedBox(width: 15.0,),
                Text(counter.toString(),style: kTitle1Style,),
                SizedBox( width: 15.0,),
                 GestureDetector(
                                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kOrangeColor),
                      
                    ),
                    child: Icon(Icons.add,color: kOrangeColor,),
                  ),
                ),

                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                     Text("\$${widget.product.price}",style: kTitle1Style.copyWith(fontSize: 25),),
                    Text("00",style: kTitle1Style.copyWith(fontSize: 15),),
                     
                  ],
                ),
              ],
            ),


            SizedBox(height: 25.0,),
            Text("$counter pic (${widget.product.weight}) gram",style: kSubtitleStyle.copyWith(color: kOrangeColor),)
          ,SizedBox(height: 25.0,),

          Text(widget.product.description,style: kDescriptionStyle,)

          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 80.0,
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.favorite_border,color: Colors.red,), onPressed: (){

            }),
            SizedBox(width: 25.0,),
            Expanded(child: RaisedButton(onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            color: kOrangeColor,
            child: Text("Add to bucket",style: kTitle2Style.copyWith(color: Colors.white),),
            )),
          ],
        ),
      ),
      
    );
  }
}