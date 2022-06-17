import 'package:deliver_app_yt/src/colors/colors.dart';
import 'package:deliver_app_yt/src/features/presentation/commons_widgets/Headers/headers_text.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'profile-detail'),
              child: _header()),
          _contentProfile()
        ],
      ),
    );
  }
}

Widget _header() {
  return Container(
    height: 250,
    color: bgGreyPage,
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1655013090015-4ee419d8db1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  headerText(
                      texto: 'Team 3',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                        color: gris,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(left: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: rosa,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/crown.png'),
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: headerText(
                          texto: 'VIP Member',
                          color: white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.all(5),
    child: Column(
      children: [
        ListTile(
            leading: Image(
              image: AssetImage("assets/noti.png"),
              width: 29,
              height: 29,
            ),
            title:
                headerText(texto: "Notifications", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        ListTile(
            leading: Image(
              image: AssetImage("assets/payicon.png"),
              width: 29,
              height: 29,
            ),
            title: headerText(
                texto: "Payment methods", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        ListTile(
            leading: Image(
              image: AssetImage("assets/rewardicon.png"),
              width: 29,
              height: 29,
            ),
            title:
                headerText(texto: "Order history", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        ListTile(
            leading: Image(
              image: AssetImage("assets/promoicon.png"),
              width: 29,
              height: 29,
            ),
            title: headerText(
                texto: "My promo codes", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        SizedBox(
          height: 30,
        ),
        ListTile(
            leading: Image(
              image: AssetImage("assets/settingicon.png"),
              width: 29,
              height: 29,
            ),
            title: headerText(texto: "Settings", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        ListTile(
            leading: Image(
              image: AssetImage("assets/inviteicon.png"),
              width: 29,
              height: 29,
            ),
            title: headerText(
                texto: "Invite friends", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        ListTile(
            leading: Image(
              image: AssetImage("assets/helpicon.png"),
              width: 29,
              height: 29,
            ),
            title:
                headerText(texto: "Help center", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
        ListTile(
            leading: Image(
              image: AssetImage("assets/abouticon.png"),
              width: 29,
              height: 29,
            ),
            title: headerText(texto: "About us", fontWeight: FontWeight.w400),
            trailing: Icon(
              Icons.chevron_right_outlined,
              color: gris,
            )),
      ],
    ),
  );
}
