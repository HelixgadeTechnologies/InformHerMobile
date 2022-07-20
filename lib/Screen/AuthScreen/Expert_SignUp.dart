import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inform_her/Styles/colors.dart';
import '../../Provider/AuthProvider/user_authentication.dart';
import '../DashBoardScreen/Home.dart';
import 'AuthVerification.dart';

class ExpertSignUp extends StatefulWidget {
  const ExpertSignUp({Key? key}) : super(key: key);

  @override
  State<ExpertSignUp> createState() => _ExpertSignUpState();
}

class _ExpertSignUpState extends State<ExpertSignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF2F2F2),
        body: isLoading == false
            ? Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create Account As Expert",
                      style: GoogleFonts.workSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColor.textInputColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Can we know your name",
                      style: GoogleFonts.workSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: AppColor.textInputColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff7772D3)),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              controller: nameController,
                              style: const TextStyle(
                                  color: Color(0xff7772D3)),
                              keyboardType: TextInputType.name,
                              onSaved: (value) {},
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColor.backgroundColor,
                                border: InputBorder.none,
                                hintText: 'Name ',
                                helperStyle: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff7772D3)),
                                hintStyle: const TextStyle(
                                  color: Color(0xff7772D3),
                                ),
                                contentPadding: const EdgeInsets.all(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff7772D3)),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              controller: emailController,
                              style: const TextStyle(
                                  color: Color(0xff7772D3)),
                              keyboardType: TextInputType.name,
                              onSaved: (value) {},
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColor.backgroundColor,
                                border: InputBorder.none,
                                hintText: 'Email ',
                                helperStyle: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff7772D3)),
                                hintStyle: const TextStyle(
                                  color: Color(0xff7772D3),
                                ),
                                contentPadding: const EdgeInsets.all(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Passqord",
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff7772D3)),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              controller: passwordController,
                              style: const TextStyle(
                                  color: Color(0xff7772D3)),
                              keyboardType: TextInputType.name,
                              onSaved: (value) {},
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColor.backgroundColor,
                                border: InputBorder.none,
                                hintText: 'password ',
                                helperStyle: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff7772D3)),
                                hintStyle: const TextStyle(
                                  color: Color(0xff7772D3),
                                ),
                                contentPadding: const EdgeInsets.all(20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
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
                                onPressed: () {
                                  setState(() {
                                    isLoading = true;
                                  });
                                  AuthClass()
                                      .createAccount(
                                    name: nameController.text.trim(),
                                      email:
                                      emailController.text.trim(),
                                      password: passwordController
                                          .text
                                          .trim())
                                      .then((value) => {
                                    if (value ==
                                        "Account Created")
                                      {
                                        setState(() {
                                          isLoading = false;
                                        }),
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const HomeDashboardScreen()))
                                      }
                                    else
                                      {
                                        ScaffoldMessenger.of(
                                            context)
                                            .showSnackBar(
                                            SnackBar(
                                                content: Text(
                                                    value)))
                                      }
                                  });
                                },
                                child: Text(
                                  "Continue",
                                  style: GoogleFonts.workSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: const Color(0xffFFFFFF)),
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
            : Center(
          child: const CircularProgressIndicator(),
        ));
  }
}
