import 'package:diaryapp/Home/Drawer.dart';
import 'package:diaryapp/Home/gridview.dart';
import 'package:diaryapp/Home/model_sheet.dart';
import 'package:diaryapp/Model/home_mode.dart';
import 'package:diaryapp/custom_Widget/Custom_ElevatedButton.dart';
import 'package:diaryapp/custom_Widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  List coloue = [Colors.accents, Colors.black];

  List<HomeMode> userWork = [
    HomeMode(
        col: const Color(0xff24CAFF),
        title: "Research Work",
        time: "Mon, Dec 11, 2023 03:30 PM",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Running"),
    HomeMode(
        col: const Color(0xffE964FF),
        title: "Meeting",
        time: "Sat, Dec 16, 2023 03:30 PM",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Upcomming"),
    HomeMode(
        col: const Color(0xffFF9A24),
        title: "Office Work",
        time: "Sat, Dec 09, 2023 03:30 PM",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Incomplete"),
    HomeMode(
        col: const Color(0xff00B61D),
        title: "Home Work",
        time: "6 hours",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Completed"),
    HomeMode(
        col: const Color(0xff00B61D),
        title: "Books purchase",
        time: "2 Days",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Completed"),
    HomeMode(
        col: const Color(0xff00B61D),
        title: "Bike Tuning",
        time: "Week",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et",
        complete: "Completed"),
  ];

  bool choseList = false;

  bool listshow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff808D9E),
                  ),
                  borderRadius: BorderRadius.circular(7)),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.dehaze_sharp,
                    color: Color(0xff808D9E),
                  )),
            ),
          ),
          title: const Text("Notes"),
          titleSpacing: 30,
          actions: [
            GestureDetector(
              onTap: () {
                choseList = true;

                setState(() {});
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff808D9E),
                    )),
                child: const Icon(
                  Icons.grid_view,
                  color: Color(0xff808D9E),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                choseList = false;

                setState(() {});
              },
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color(0xff808D9E),
                    )),
                child: const Icon(
                  Icons.tune,
                  color: Color(0xff808D9E),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            const TextFieldWidget(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff808D9E),
                ),
                hintText: "Search something here"),
            const SizedBox(
              height: 15,
            ),
            choseList == false
                ? Expanded(
                    child: ListView.builder(
                      itemCount: userWork.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  // width: 1,
                                  color: const Color(0xffE2E8F0))),
                          margin: const EdgeInsets.only(bottom: 7),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: 6,
                                        height: 65,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: userWork[index].col,
                                        )),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        //  color: Colors.amber,
                                        width: 280,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              userWork[index].title!,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              userWork[index].time!,
                                              style: const TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Wrap(children: [
                                        SizedBox(
                                          width: 260,
                                          child: Text(
                                            userWork[index].subtitle!,
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                        ),
                                      ]),
                                      SizedBox(
                                        width: 260,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            userWork[index].complete,
                                            style: TextStyle(
                                              color: userWork[index].col,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ]),
                          ),
                        );
                      },
                    ),
                  )
                : GridviewScreen(),
            MainButton(
              text: "Add New Note",
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.white,
                    context: context,
                    builder: (context) => ButtomSheet());
              },
            )
          ]),
        ),

        //Drawer
        drawer: const DrawerScreen());
  }
} //dehazi_outline
