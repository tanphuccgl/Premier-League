import 'package:app/features/tables/cubit/tables_bloc.dart';
import 'package:app/network/model/table_model.dart';
import 'package:app/theme/colors.dart';
import 'package:app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTable extends StatelessWidget {
  const SectionTable({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TableBloc, TableState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              color: XColors.primary3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text("Pos"),
                  text("Club"),
                  text("P"),
                  text("W"),
                  text("D"),
                  text("L"),
                  text("GD"),
                  text("Pts"),
                ],
              ),
            ),
            Container(
              color: XColors.primary1,
              child: Column(
                children: [
                  if (state.data.id != null) item(state.data),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget text(String text) {
    return Expanded(
      flex: 1,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget item(TableModel data) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 54.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text(data.position.toString()),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  data.clubName?.image ?? XImage.network,
                  width: 20.w,
                  height: 20.w,
                ),
                Text(
                  data.clubName?.name.toString() ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          text(data.points.toString()),
          text(data.won.toString()),
          text(data.draw.toString()),
          text(data.lose.toString()),
          text(data.gd.toString()),
          text(data.ga.toString())
        ],
      ),
    );
  }
}
