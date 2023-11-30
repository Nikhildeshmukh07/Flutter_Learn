import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

class Formdesign extends StatefulWidget {
  const Formdesign({Key? key}) : super(key: key);

  @override
  State<Formdesign> createState() => _FormdesignState();
}

class _FormdesignState extends State<Formdesign> {
  final formKey = GlobalKey<FormState>(); //key for form
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Form Validation Design"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: const Color(0xFFffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formKey, //key for form
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.04),
                const Text(
                  "Here to Get",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                const Text(
                  "Welcomed !",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: "enter name"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
                      return "Enter Correct name";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  decoration:
                  const InputDecoration(labelText: "enter Phone Number"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(
                            r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                            .hasMatch(value)) {
                      return "Enter Phone Number";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: "enter Email"),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return "Enter Correct Email";
                    }
                    return null;
                  },

                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 22, color: Color(0xFF363f93)),
                    ),
                    NeumorphicButton(
                      width: 40,
                      height: 40,
                      backgroundColor: const Color(0xFF363f93),
                      bottomRightShadowColor: Colors.blueGrey,
                      topLeftShadowColor: Colors.blueAccent,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          const snackBar = SnackBar(content: Text('Submitting form'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);

                          // Clear the text controllers
                          nameController.clear();
                          phoneNumberController.clear();
                          emailController.clear();

                          // Reset the form
                          formKey.currentState!.reset();
                        }
                      },
                      child: const Icon(
                        Icons.arrow_right_alt_rounded,
                        color: Colors.white38,
                      ),
                    )

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
