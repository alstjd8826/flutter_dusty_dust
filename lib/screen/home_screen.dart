import 'package:flutter/material.dart';
import 'package:flutter_dusty_dust/component/category_card.dart';
import 'package:flutter_dusty_dust/component/hourly_cart.dart';
import 'package:flutter_dusty_dust/component/main_app_bar.dart';
import 'package:flutter_dusty_dust/component/main_drawer.dart';
import '../const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: MainDrawer(),
      body: CustomScrollView(
        slivers: [
          MainAppBar(),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CategoryCard(),
                const SizedBox(
                  height: 16.0,
                ),
                HourlyCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
