import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

@immutable
class AvatarView extends StatelessWidget {
  final String? backgroundImage;

  AvatarView({required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: CreateBoxDecorationWShadows(
              borderRadius: BorderRadius.circular(65)),
          child: CircleAvatar(
            backgroundImage: NetworkImage(backgroundImage!),
          ),
        ),
        Transform.translate(
            offset: Offset(0, -35),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: rosa, borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.camera_alt_outlined,
                color: white,
                size: 20,
              ),
            ))
      ],
    );
  }
}
