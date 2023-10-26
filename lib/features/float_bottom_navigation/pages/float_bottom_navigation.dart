import 'package:app/features/float_bottom_navigation/cubit/bottom_navigation_bloc.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatBottomNavigation extends StatelessWidget {
  const FloatBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
      builder: (context, state) {
        return Container(
          width: ScreenUtil().screenWidth,
          padding: EdgeInsets.symmetric(vertical: 15.h),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  XImage.bottom,
                ),
                fit: BoxFit.fill),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(PageIndex.values.length, (i) {
              final element = PageIndex.values[i];
              if (element == PageIndex.home) {
                return Expanded(child: SizedBox.fromSize());
              }

              return Expanded(
                child: GestureDetector(
                  onTap: () =>
                      context.read<BottomNavigationBloc>().onItemTapped(i),
                  child: Text(
                    element.lableOf(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
      buildWhen: (p, c) => p.pageIndex != c.pageIndex,
    );
  }
}
