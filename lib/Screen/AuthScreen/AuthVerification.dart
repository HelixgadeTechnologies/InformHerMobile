import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../OnboardingScreen/DoUKnow.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: Container(
        margin:   const EdgeInsets.only(top: 60),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Center(child: Text("Enter",
              style: GoogleFonts.workSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff7772D3)),
            )),
            const SizedBox(height: 20,),
            Text("verify your email, OTP was sent to",
              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),
            ),
            const SizedBox(height: 10,),
            Text("winnymercy@gmail.com",
              style: GoogleFonts.workSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),
            ),
            const SizedBox(height: 10,),
            Text("Edit email",
              style: GoogleFonts.workSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff7772D3)),
            ),
            Form(child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const SizedBox(height: 190,),
                SizedBox(
                  height: 56,
                  width: 72,
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xff1152FD)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: "",
                      hintStyle: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w500, color: const Color(0xff1152FD)),

                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 72,
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xff1152FD)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: "",
                      hintStyle: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w500, color: const Color(0xff1152FD)),

                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 72,
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xff1152FD)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      hintText: "",
                      hintStyle: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w500, color: const Color(0xff1152FD)),

                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 72,
                  child: TextFormField(
                    style: const TextStyle(color: Color(0xff1152FD)),
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: const Color(0xffFFFFFF),
                      hintText: "",
                      hintStyle: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w500, color: const Color(0xff1152FD)),

                    ),
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    textInputAction: TextInputAction.next,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),



              ],


            )),
            ElevatedButton(

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>( Color(0xff7772D3)),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),


                    )

                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoYouKnowScreen() ));

              },
              child: Padding(
                padding: const EdgeInsets.only(top: 17, left: 100, right: 100, bottom: 17),
                child: Text("Continue",

                  style: GoogleFonts.workSans(fontSize: 14, fontWeight: FontWeight.w800, color: const Color(0xffFFFFFF)),


                ),
              ),
            )

          ],

        ),
      ),

    );
  }
}
