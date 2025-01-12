import 'package:diaryapp/New%20Notes/add_new_notes2.dart';
import 'package:diaryapp/custom_Widget/Custom_ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddNewNotes1 extends StatefulWidget {
  AddNewNotes1({super.key});

  @override
  State<AddNewNotes1> createState() => _AddNewNotes1State();
}

class _AddNewNotes1State extends State<AddNewNotes1> {
  List arrText = ["Personal", "Shopping", "Wishlist", "Work"];

  bool listshow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC3D4E9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: const Icon(Icons.arrow_back_ios_new)),
                ),
                Text(
                  "New Note",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  child: Text(
                    "Save",
                    style: TextStyle(color: Color(0xffFFB347), fontSize: 20),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'Task Name',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff90A3BF))),
                  hintText: 'Enter Task Here '),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'Due Date',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Color(0xff90A3BF))),
                  hintText: 'dd / mm / yyyy',
                  suffixIcon: Icon(Icons.date_range_rounded)),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'Add As',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xff90A3BF))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("  Default"),
                    IconButton(
                        onPressed: () {
                          listshow == true ? listshow = false : listshow = true;
                          setState(() {});
                        },
                        icon: Icon(Icons.keyboard_arrow_down_outlined)),
                  ]),
            ),

//List view
//List view
            SizedBox(
              height: 10,
            ),
            listshow == true
                ? Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.shade400, // Shadow color with opacity
                          spreadRadius: 2, // How much the shadow spreads
                          blurRadius: 5, // How soft the shadow is
                          offset:
                              Offset(0, 2), // Horizontal and vertical offset
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: ListView.separated(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(0),
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Text(
                              arrText[index],
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              height: 30,
                            );
                          },
                          itemCount: arrText.length),
                    ),
                  )
                : SizedBox(),

            Expanded(child: SizedBox(height: double.infinity)),
            MainButton(
              text: "Next",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddNewNotes2(),
                    ));
              },
            ),
          ]),
        ));
  }
}
