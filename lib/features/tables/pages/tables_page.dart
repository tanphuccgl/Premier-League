import 'package:app/features/tables/widgets/section_ads.dart';
import 'package:app/features/tables/widgets/section_filter.dart';
import 'package:app/features/tables/widgets/section_table.dart';
import 'package:app/features/tables/widgets/section_title.dart';
import 'package:flutter/material.dart';

class TablesPage extends StatelessWidget {
  const TablesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          SectionTile(),
          SizedBox(
            height: 20,
          ),
          SectionFilter(),
          SizedBox(
            height: 20,
          ),
          SectionTable(),
          SectionAds(),
        ],
      )),
    );
  }
}
