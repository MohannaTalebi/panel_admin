import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';



class searchfield extends StatelessWidget {
  const searchfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.white38
        ),
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor,
            ),
            child: Icon(
                Icons.search
            ),
          ),
        ),
      ),

    );
  }
}


class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Spacer(),
        Expanded(
          child: searchfield(),
        ),
        profile_card(),
      ],
    );
  }
}




class profile_card extends StatelessWidget {
  const profile_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12),
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white10),
        color: secondaryColor,
      ),
      child: Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(
              horizontal:16,
            ),
            child: Text(
              'Mohanna Talebi',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
class mychart extends StatelessWidget {
  const mychart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: [
                PieChartSectionData(
                  color: primaryColor,
                  value: 25,
                  showTitle: false,
                  radius: 25,
                ),
                PieChartSectionData(
                  color: Color(0xFF26E5FF),
                  value: 20,
                  showTitle: false,
                  radius: 22,
                ),
                PieChartSectionData(
                  color: Color(0xFFFFCF26),
                  value: 10,
                  showTitle: false,
                  radius: 19,
                ),
                PieChartSectionData(
                  color: Color(0xFFEE2727),
                  value: 15,
                  showTitle: false,
                  radius: 16,
                ),
                PieChartSectionData(
                  color: primaryColor.withOpacity(0.1),
                  value: 25,
                  showTitle: false,
                  radius: 13,
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '29.1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'of 128GB',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}