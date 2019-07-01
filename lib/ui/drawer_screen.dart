import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DrawerScreenState();
  }
}

class DrawerScreenState extends State<DrawerScreen> {
  bool isLogin = false;
  String username = "未登录";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: InkWell(
              child: Text(
                username,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
              ),
              onTap: () {},
            ),
            currentAccountPicture: InkWell(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/ic_default_avatar.png"),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "我的收藏",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            leading: Icon(
              Icons.collections,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "设置",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            leading: Icon(
              Icons.settings,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "关于我们",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            leading: Icon(
              Icons.info,
              size: 22,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "退出登录",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            leading: Icon(
              Icons.power_settings_new,
              size: 22,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}