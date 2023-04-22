import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:panel_admin/constants.dart';
import 'package:panel_admin/models/my_fields.dart';



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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Text(
            info!.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20
            ),
          ),
          LinearProgressBar(
            maxSteps: 100,
            minHeight: 6,
            progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
            currentStep: info?.percentage,
            progressColor:info?.color,
            backgroundColor: info?.color?.withOpacity(0.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${info?.numOfFiles} Files',
                style: TextStyle(
                    color: Colors.white70
                ),),
              Text(info!.totalStorage,
                style: TextStyle(
                    color: Colors.white
                ),),
            ],
          )
        ],
      ),
    );
  }
}