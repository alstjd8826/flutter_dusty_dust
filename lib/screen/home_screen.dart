import 'package:flutter/material.dart';
import 'package:flutter_dusty_dust/component/category_card.dart';
import 'package:flutter_dusty_dust/component/hourly_cart.dart';
import 'package:flutter_dusty_dust/component/main_app_bar.dart';
import 'package:flutter_dusty_dust/component/main_drawer.dart';
import '../const/colors.dart';
import '../repository/stat_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    final statModels = await StatRepository.fetchData();

    print(statModels);
  }

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
