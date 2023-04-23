import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/models/RecentFile.dart';


class recent_file extends StatelessWidget {
  const recent_file({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recents Files', style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('File Name', style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
              Text('Date', style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text('Size', style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),),
              ),
            ],
          ),
          SizedBox(height: 16,),
          SizedBox(
            height: 500,
            child: ListView.separated(
              itemBuilder: (contex,index)=>Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        width: 130,
                        child: Row(
                          children: [
                            SvgPicture.asset(demoRecentFiles[index].icon),
                            SizedBox(width: 10,),
                            Text(demoRecentFiles[index].title,style: TextStyle(
                                color: Colors.white
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Text(demoRecentFiles[index].date,style: TextStyle(
                          color: Colors.white
                      )),
                    ),
                    Container(
                      width: 50,
                      child: Text(demoRecentFiles[index].size,style: TextStyle(
                          color: Colors.white
                      )),
                    )
                  ],
                ),
              ),
              separatorBuilder: (contex,indax)=>Divider(
                color: Colors.white24,
              ),
              itemCount:demoRecentFiles.length,
            ),
          ),
        ],

      ),
    );
  }
}