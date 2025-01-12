import 'package:diaryapp/Model/home_mode.dart';
import 'package:diaryapp/New%20Notes/add_new_notes1.dart';
import 'package:flutter/material.dart';

class ButtomSheet extends StatefulWidget {
  const ButtomSheet({super.key});

  @override
  State<ButtomSheet> createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheet> {
//  bool choseList = false;

  bool listshow = false;
  bool statusshow = false;
  List<HomeMode> arrList = [
    HomeMode(
        col: const Color(0xff24CAFF), complete: "Running", text: "Personal"),
    HomeMode(
        col: const Color(0xffE964FF), complete: "Upcomming", text: "Shopping"),
    HomeMode(
        col: const Color(0xffFF9A24), complete: "Incomplete", text: "Wishlist"),
    HomeMode(col: const Color(0xff00B61D), complete: "Completed", text: "Work")
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 180,
                height: 5,
                decoration: BoxDecoration(
                    color: const Color(0xffE2E8F0),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              'List',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: const Color(0xffE2E8F0), width: 2),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("  Default"),
                    IconButton(
                        onPressed: () {
                          statusshow = false;
                          listshow == true ? listshow = false : listshow = true;
                          setState(() {});
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined)),
                  ]),
            ),
            listshow == true
                ? Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(0, 2),
                        spreadRadius: 2,
                        color: Colors.grey.shade400,
                      )
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                          padding: EdgeInsets.all(0),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Text(arrList[index].complete);
                          },
                          separatorBuilder: (context, index) => Divider(
                                height: 20,
                              ),
                          itemCount: arrList.length),
                    ),
                  )
                : SizedBox(),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Status',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0xffE2E8F0), width: 2)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("  Default"),
                    IconButton(
                        onPressed: () {
                          listshow = false;
                          statusshow == true
                              ? statusshow = false
                              : statusshow = true;
                          setState(() {});
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined)),
                  ]),
            ),
            statusshow == true
                ? Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5,
                          // blurStyle: BlurStyle.inner,
                          offset: Offset(0, 2),
                          spreadRadius: 2)
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Text(arrList[index].text!,
                              style: TextStyle(color: arrList[index].col));
                        },
                        separatorBuilder: (context, index) => Divider(
                          height: 25,
                        ),
                        itemCount: arrList.length,
                      ),
                    ),
                  )
                : SizedBox(),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56,
                  width: 157,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Clear",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF9F9F9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: 157,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNewNotes1(),
                          ));
                    },
                    child: const Text(
                      "Go",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFB347),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
