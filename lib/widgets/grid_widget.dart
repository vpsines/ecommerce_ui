import 'dart:ui';

import 'package:ecommerce_ui/screens/item_screen.dart';
import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
   GridWidget({super.key});

var products = [
  "Apple Watch -M2",
  "White Tshirt",
  "Nike Shoe",
  "Ear Headphone"
];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics:const NeverScrollableScrollPhysics() ,
      itemCount: products.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
      ),
      itemBuilder: (context,index){
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0XFFD4ECF7),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                spreadRadius: 2                )
            ]

          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                        Text("30% OFF",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                        Icon(Icons.favorite,color: Colors.redAccent,)
                  ],
                ),
                const SizedBox(height: 10,),
                Padding(padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ItemScreen()));
                  },
                  child: Image.asset("assets/images/${products[index]}.png",
                  height: 100,
                  width: 100,),
                ),
                
                ),
                const SizedBox(height: 15,),
                Padding(padding: const EdgeInsets.all(8),
                
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(products[index],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text("\$100",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w500
                      ),),
                      const SizedBox(width: 5,),
                      Text("\$130",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black.withOpacity(0.4),
                        decoration: TextDecoration.lineThrough
                      ),),
                    ],
                  )
                ],
               ), )
              ],
            ),
          ),
        );
      },
    );
  }
}