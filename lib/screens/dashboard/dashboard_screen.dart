import 'package:flutter/material.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/models/my_fields.dart';
import 'package:panel_admin/screens/dashboard/components/dashoard_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:panel_admin/screens/dashboard/components/mystorage_card.dart';
import 'package:panel_admin/screens/dashboard/components/storage_detail.dart';
import 'package:flutter_svg/flutter_svg.dart';
class dashboard_screen extends StatefulWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  State<dashboard_screen> createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 16,right: 16,bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Files',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                              ),
                            ),
                            ElevatedButton.icon(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.all(16),
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text('Add New'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GridView.builder(
                          itemCount: demoMyFiles.length,
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 16,
                          ),
                          itemBuilder: (context, index) => FileInfocard(
                            info: demoMyFiles[index],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 2,
                  child: storege_detail(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FileInfocard extends StatelessWidget {
  const FileInfocard({
    super.key,
    this.info
  });

 final CloudStorageInfo? info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: info?.color?.withOpacity(0.1),

                ),
                child: SvgPicture.asset(info!.svgSrc),
              ),
              Icon(Icons.more_vert,color: Colors.white54,)
            ],
          ),
          SizedBox(height: 16,),
          Text(
            info!.title,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18
            ),
          )
        ],
      ),
    );
  }
}
