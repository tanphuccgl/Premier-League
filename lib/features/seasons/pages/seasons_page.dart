import 'package:app/features/tables/widgets/section_ads.dart';

import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeasonsPage extends StatelessWidget {
  const SeasonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Số lượng tab
      child: Scaffold(
        backgroundColor: XColors.primary4,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: XColors.primary1,
          title: Text('Seasons'),
          bottom: TabBar(
            labelStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            indicatorColor: XColors.primary,
            tabs: [
              Tab(text: 'Players'),
              Tab(text: 'Clubs'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Nội dung cho Tab 1
            ListView(
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  height: 47.h,
                  color: XColors.primary3,
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Season",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "2022/23",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        XImage.icon1,
                        width: 8,
                        height: 8,
                      )
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().screenWidth,
                  height: 47.h,
                  color: Colors.white,
                  child: Image.asset(XImage.logo2),
                ),
                SizedBox(
                  height: 10,
                ),
                item(),
                item(),
                item(),
                item(),
                item(),
                SectionAds()
              ],
            ),
            // Nội dung cho Tab 2
            ListView(
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  height: 47.h,
                  color: XColors.primary3,
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Season",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "2022/23",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        XImage.icon1,
                        width: 8,
                        height: 8,
                      )
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().screenWidth,
                  height: 47.h,
                  color: Colors.white,
                  child: Image.asset(XImage.logo2),
                ),
                SizedBox(
                  height: 10,
                ),
                item2(),
                item2(),
                item2(),
                item2(),
                item2(),
                SectionAds()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget item() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        width: ScreenUtil().screenWidth,
        height: 50.h,
        color: XColors.primary1,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Harry Kane",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Tottenham Hotspur",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Image.asset(
                XImage.logo,
                width: 30,
                height: 30,
              ),
            )
          ],
        ));
  }

  Widget item2() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        width: ScreenUtil().screenWidth,
        height: 50.h,
        color: XColors.primary5,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                "Manchester City",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.asset(
                XImage.logo,
                width: 30,
                height: 30,
              ),
            ),
            Expanded(flex: 1, child: Icon(Icons.arrow_forward)),
          ],
        ));
  }
}
