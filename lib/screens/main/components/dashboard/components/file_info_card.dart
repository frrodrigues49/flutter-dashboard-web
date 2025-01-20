import 'package:flutter/material.dart';
import 'package:flutter_dashboard_web/constants.dart';
import 'package:flutter_dashboard_web/models/my_files.dart';
import 'package:flutter_dashboard_web/screens/main/components/dashboard/components/progress_line.dart';
import 'package:flutter_svg/svg.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key,
    required this.info,
  });

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color?.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  colorFilter: ColorFilter.mode(info.color!, BlendMode.srcIn),
                ),
              ),
              const Icon(Icons.more_vert, color: Colors.white54)
            ],
          ),
          Text(info.title!, maxLines: 1, overflow: TextOverflow.ellipsis),
          ProgressLine(
            color: info.color ?? primaryColor,
            percentage: info.percentage ?? 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${info.numOfFiles} Files",
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Colors.white70),
              ),
              const Spacer(),
              Text(
                info.totalStorage!,
                style: Theme.of(context)
                    .textTheme
                     .titleSmall!
                    .copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}


