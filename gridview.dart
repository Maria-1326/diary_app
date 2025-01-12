import 'package:diaryapp/Model/home_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ignore: must_be_immutable
class GridviewScreen extends StatelessWidget {
  GridviewScreen({super.key});
  List coloue = [Colors.accents, Colors.black];

  List<HomeMode> userWork = [
    HomeMode(
        col: Color(0xff24CAFF),
        title: "Research Work",
        time: "Mon, Dec 11, ",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et. Auctor enim lorem pharetra sed integer et.",
        complete: "Running"),
    HomeMode(
        col: Color(0xffE964FF),
        title: "Meeting",
        time: "Sat, Dec 16, ",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Upcomming"),
    HomeMode(
        col: Color(0xffFF9A24),
        title: "Office Work",
        time: "Sat, Dec 09, ",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Incomplete"),
    HomeMode(
        col: Color(0xff00B61D),
        title: "Home Work",
        time: "6 hours",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et.",
        complete: "Completed"),
    HomeMode(
        col: Color(0xff00B61D),
        title: "Books purchase",
        time: "2 Days",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et Auctor enim lorem pharetra sed integer et..",
        complete: "Completed"),
    HomeMode(
        col: Color(0xff00B61D),
        title: "Bike Tuning",
        time: "Week",
        subtitle:
            "Lorem ipsum dolor sit amet consectetur. Auctor enim lorem pharetra sed integer et",
        complete: "Completed"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MasonryGridView.count(
        itemCount: userWork.length,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    // width: 1,
                    color: Color(0xffE2E8F0))),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    width: 6,
                    height: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: userWork[index].col,
                    )),
                SizedBox(
                  width: 7,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            userWork[index].title!,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            userWork[index].time!,
                            style: TextStyle(
                              fontSize: 5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Text(
                        userWork[index].subtitle!,
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Container(
                      width: 140,
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
              ]),
            ),
          );
        },
      ),
    );
  }
}
