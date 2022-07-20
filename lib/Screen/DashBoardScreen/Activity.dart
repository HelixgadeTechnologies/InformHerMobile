import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Styles/colors.dart';

import 'Home.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  late List<dynamic>  countries = [];
  @override
  void initState() {
    super.initState();

    countries.add({"id: 1", "label: india"});
    countries.add({"id: 1", "label: india"});
    countries.add({"id: 1", "label: india"});
    countries.add({"id: 1", "label: india"});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDashboardScreen()));
                  },

                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Text("Activities",
                    style: GoogleFonts.workSans(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff7772D3)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("Roll ALL",
                    style: GoogleFonts.workSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff7772D3)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              children: [
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),
                ListTile(
                    tileColor: AppColor.activityColor.withOpacity(0.9),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),

                    ),
                    leading:  const Image(image: AssetImage("assets/images/quest.png")),
                    title:  Text(
                      "A new question has been added",
                      style: GoogleFonts.workSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),

                    ),
                    subtitle:
                    Text('10 min ago',
                      style: GoogleFonts.workSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff7772D3)),
                    ),
                    onTap: () => print("ListTile")

                ),
                const SizedBox(height: 14,),


              ],
            )
          ],
        ),
      ),
    );
  }
}
