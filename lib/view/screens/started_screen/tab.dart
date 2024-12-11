import 'package:flutter/material.dart';

class CustomTabWidget extends StatelessWidget {
  final List<String> tabTitles;
  final List<Widget> tabViews;
  final Color selectedTabColor;
  final Color unselectedTabColor;
  final Color indicatorColor;

  CustomTabWidget({
    required this.tabTitles,
    required this.tabViews,
    required this.selectedTabColor,
    required this.unselectedTabColor,
    required this.indicatorColor,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitles.length,
      child: Column(
        children: [
          TabBar(
            indicator: BoxDecoration(color: Colors.transparent),
            dividerHeight: 0,
            labelColor: selectedTabColor,
            unselectedLabelColor: unselectedTabColor,
            indicatorColor: indicatorColor,
            tabs: tabTitles.map((title) => Tab(text: title)).toList(),
          ),
          Expanded(
            child: TabBarView(
              children: tabViews,
            ),
          ),
        ],
      ),
    );
  }
}
