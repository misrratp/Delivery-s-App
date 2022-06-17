import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
//components

import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:deliver_app_yt/src/features/presentation/profile_detail_page/view/components/avatar_view.dart';
import 'package:deliver_app_yt/src/features/presentation/profile_detail_page/view/components/textfields_view.dart';
import 'package:deliver_app_yt/src/utils/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';
import 'package:deliver_app_yt/src/utils/extensions/screen_size.dart';

class ProfileDetailPage extends StatefulWidget {
  ProfileDetailPage({Key? key}) : super(key: key);

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        title: headerText(texto: 'Edit profile', fontSize: 17),
        backgroundColor: white,
        elevation: 0.4,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 10.0),
              child: headerText(
                  texto: 'Done',
                  color: orange,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              width: screenWidth?.getScreenWidth(context: context),
              height: screenHeight?.getScreenHeight(
                  context: context, multiplier: 0.65),
              decoration: CreateBoxDecorationWShadows(),
              margin: EdgeInsets.only(
                  top: screenHeight!
                      .getScreenHeight(context: context, multiplier: 0.1),
                  left: 15,
                  right: 15),
              child: Column(
                children: [
                  Transform.translate(
                      offset: Offset(0, -60),
                      child: AvatarView(
                          backgroundImage:
                              'https://images.unsplash.com/photo-1655013090015-4ee419d8db1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')),
                  TextFieldsProfileDetailView()
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
