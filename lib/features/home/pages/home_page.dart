import 'package:app/features/home/widgets/logo_widget.dart';
import 'package:app/features/home/widgets/section_feature.dart';
import 'package:app/features/home/widgets/section_matchday_live.dart';
import 'package:app/features/home/widgets/section_news.dart';
import 'package:app/features/home/widgets/section_schedule.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          shrinkWrap: true,
          children: [
            LogoWidget(),
            SectionMatchdayLive(),
            SizedBox(
              height: 20,
            ),
            SectionFeature(),
            SizedBox(
              height: 20,
            ),
            SectionNews(),
            SizedBox(
              height: 10,
            ),
            SectionSchedule()
          ],
        ),
      ),
    );
  }
}
