import 'package:app/features/fixtures/cubit/fixtures_bloc.dart';
import 'package:app/network/model/match_model.dart';
import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionFixtures extends StatelessWidget {
  const SectionFixtures({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FixturesBloc, FixturesState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Sunday 2023 May 21",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            if (state.data.id != null) item(state.data),
            SizedBox(
              height: 15,
            ),
          ],
        );
      },
    );
  }

  Widget item(MatchModel data) {
    return Container(
      height: 55.h,
      padding: EdgeInsets.only(left: 5, right: 5),
      margin: EdgeInsets.symmetric(vertical: 5),
      width: ScreenUtil().screenWidth,
      color: XColors.primary1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Text(
                    data.clubHome?.clubName?.name ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Image.network(
                    data.clubHome?.clubName?.image ?? XImage.network,
                    width: 15,
                    height: 15,
                  ),
                ],
              )),
          Expanded(
            flex: 3,
            child: Container(
              width: 77.w,
              height: 31.h,
              margin: EdgeInsets.symmetric(horizontal: 35),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: Center(
                child: Text(
                  data.matchTime ?? "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Image.network(
                    data.clubAway?.clubName?.image ?? XImage.network,
                    width: 15,
                    height: 15,
                  ),
                  Text(
                    data.clubAway?.clubName?.name ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
