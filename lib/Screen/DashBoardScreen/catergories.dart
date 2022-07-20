import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Screen/DashBoardScreen/Home.dart';
import 'package:inform_her/Styles/colors.dart';
import 'package:inform_her/Styles/font_size.dart';

class CarteogriesPage extends StatefulWidget {
  const CarteogriesPage({Key? key}) : super(key: key);

  @override
  State<CarteogriesPage> createState() => _CarteogriesPageState();
}

class _CarteogriesPageState extends State<CarteogriesPage> {
  CollectionReference fireStore =
      FirebaseFirestore.instance.collection("interest2");
  List<String> selectedValue = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                     GestureDetector(
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeDashboardScreen()));

                       },
                       child: Icon(Icons.arrow_back,
                        color: AppColor.textInputColor,
                    ),
                     ),
                    const SizedBox(height: 15,),
                    Text("Choose the area you’re passionate About ",
                      style: GoogleFonts.workSans( fontSize: AppSize.headerTextSize, color: AppColor.textInputColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10,),
                    Text("Select at least 2 areas",
                      style: GoogleFonts.poppins(fontSize: AppSize.textFiledFont, color: AppColor.textInputColor),

                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10,),
            FutureBuilder<QuerySnapshot>(
              future: fireStore.get(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {

                if (snapshot.hasData) {
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text('No interest');
                  } else {
                    final data = snapshot.data!.docs;

                    List interest = data[0].get('interest');

                    return Wrap(
                      children: List.generate(interest.length, (index) {
                        final allInterest = interest[index];

                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: FilterChip(
                            labelStyle: TextStyle(color: AppColor.textInputColor, fontSize: AppSize.textFiledFont),
                              selected: selectedValue.contains(allInterest),
                              selectedColor: AppColor.primaryColor,
                              onSelected: (value) {
                                setState(() {
                                  if (selectedValue.contains(allInterest)) {
                                    selectedValue.remove(allInterest);
                                  } else {
                                    selectedValue.add(allInterest);
                                  }
                                });
                              },
                              label: Text(allInterest)),
                        );
                      }),
                    );
                  }
                } else {
                  return  const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all<Color>(
                    const Color(0xff7772D3)),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(4),
                    )),
              ),
              onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.only(top: 17, left: 130, right: 130, bottom: 17),
                  child: Text("Proceed"),
                ),
            )

          ],

        ),

      ),
    );
  }
}
