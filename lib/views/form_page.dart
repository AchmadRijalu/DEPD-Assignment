import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week2dped_assignment/common/styles.dart';
import 'package:week2dped_assignment/views/main_content.dart';

class FormPage extends StatefulWidget {
  static const routeNames = "Form Page";
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  String? nameV = "";
  String? emailV = "";
  String? phoneV = "";
  String? cityV = "";

  // late String? phoneVConv = phoneV.toString();

  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void initState() {
    this.nameV;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Contact Information",
            style: TextStyle(color: primaryColor),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: primaryColor),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              primaryColor,
              Colors.white,
            ],
          )),
          child: ListView(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(children: [
                          TextField(
                            controller: nameController,
                            onChanged: ((name) {
                              nameV = name;
                            }),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffEAF6F6),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                labelText: "Name"),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            onChanged: (email) {
                              emailV = email;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffEAF6F6),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                labelText: "Email"),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            controller: phoneController,
                            onChanged: (phone) {
                              phoneV = phone;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffEAF6F6),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                labelText: "Phone Number"),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          TextField(
                            controller: cityController,
                            onChanged: (city) {
                              cityV = city;
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xffEAF6F6),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                labelText: "City"),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: (() {
                                if (nameV != "" &&
                                    emailV != "" &&
                                    phoneV != "" &&
                                    cityV != "") {
                                  showDialog(
                                      context: context,
                                      builder: ((context) {
                                        return AlertDialog(
                                          title: Text("Contact Information"),
                                          content: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("Name: " +
                                                    nameController.text),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text("Email: " +
                                                    emailController.text),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text("Phone: " +
                                                    phoneController.text),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Text("Email: " +
                                                    cityController.text),
                                              ]),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          actions: <Widget>[
                                            TextButton(
                                                onPressed: (() {
                                                  Navigator.pop(context);
                                                }),
                                                child: Text("Back")),
                                            TextButton(
                                                onPressed: (() {
                                                  Navigator
                                                      .pushNamedAndRemoveUntil(
                                                          context,
                                                          MainContent
                                                              .routeNames,
                                                          (route) => false);
                                                }),
                                                child: Text("Yes"))
                                          ],
                                        );
                                      }));
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: ((context) {
                                        return AlertDialog(
                                          title: Text("Warning"),
                                          content: Text(
                                              "Please Fill the Contact Information"),
                                          actions: <Widget>[
                                            TextButton(
                                                onPressed: (() {
                                                  Navigator.of(context)!
                                                      .pop(context);
                                                }),
                                                child: Text("Ok"))
                                          ],
                                        );
                                      }));
                                }
                              }),
                              child: Text(
                                "Buy Now",
                                style: Theme.of(context)!
                                    .textTheme
                                    .subtitle2!
                                    .copyWith(color: Colors.white),
                              )),
                        ]),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
