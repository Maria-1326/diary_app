import 'package:diaryapp/Home/profile.dart';
import 'package:diaryapp/Model/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<MainDrawer> drawerwork = [
    MainDrawer(
      icon: Icons.account_circle_outlined,
      text: "Profile",
    ),
    MainDrawer(
      icon: Icons.help_outline,
      text: "Help & FAQ",
    ),
    MainDrawer(icon: Icons.star_border, text: "Rate Us"),
    MainDrawer(icon: Icons.share_outlined, text: "Share"),
    MainDrawer(icon: Icons.logout, text: "Logout"),
  ];

  List classss = [Profile()];
  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: Border.all(
          color: Color(0xff808D9E),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Color(0xffFFB347),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 106,
                    height: 28,
                    child: Row(
                      children: [
                        Image.asset("images/frame 2.png"),
                        Text(
                          "  TO DO",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/abdul.jpeg"),
                      ),
                      title: Text(
                        'Taimoor Ahmed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Text(
                        'mta.chughtai4@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListView.builder(
                  itemCount: drawerwork.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        index == 0
                            ? Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ))
                            : SizedBox();
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 2.0),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff808D9E)),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: ListTile(
                            leading: Icon(drawerwork[index].icon,
                                color: Colors.orangeAccent),
                            title: Text(drawerwork[index].text)),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ));
  }
}
