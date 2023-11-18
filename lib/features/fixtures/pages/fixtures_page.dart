import 'package:app/features/fixtures/cubit/fixtures_bloc.dart';
import 'package:app/features/fixtures/widgets/section_fixtures.dart';
import 'package:app/features/fixtures/widgets/section_title1.dart';
import 'package:app/features/tables/widgets/section_ads.dart';

import 'package:app/features/tables/widgets/section_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FixturesPage extends StatelessWidget {
  const FixturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FixturesBloc(),
      child: BlocBuilder<FixturesBloc, FixturesState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
                child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                SectionTile1(),
                SizedBox(
                  height: 20,
                ),
                SectionFilter(),
                SizedBox(
                  height: 20,
                ),
                SectionFixtures(),
                SizedBox(
                  height: 20,
                ),
                //   SectionFixtures(),
                SectionAds(),
              ],
            )),
          );
        },
      ),
    );
  }
}
