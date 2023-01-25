import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coopa/screens/home/components/brands.dart';
import 'package:coopa/screens/home/components/discount_banner.dart';
import 'package:coopa/screens/home/components/popular_product.dart';
import 'package:coopa/screens/home/components/special_offers.dart';
import 'package:coopa/size_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Brands(),
            // SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(brnadName: "Nike"),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(brnadName: "Adidas"),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(brnadName: "Sparx"),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(brnadName: "Puma"),
            SizedBox(height: getProportionateScreenWidth(90)),
            //  GridDashboard(),
          ],
        ),
      ),
    );
  }
}
