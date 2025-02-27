import 'package:flutter/material.dart';
import 'package:test_app/controllers/auth_controller.dart';
import 'package:test_app/utils.dart';
import 'package:test_app/widgets/Register_widget.dart';
import 'package:test_app/widgets/login_widget.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  //inject controller to the ui
  AuthController authController = Get.put(AuthController());
  buildTab(text, selected, context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 40,
      child: Center(
        child: Text(
          text,
          style: selected
              ? textStyle(22, Colors.blueAccent, FontWeight.bold)
              : textStyle(22, Colors.grey, FontWeight.w500),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Wishly',
                style:
                    textStyle(35, Colors.lightBlue.shade400, FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              //! obx updates the ui.
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => authController.changeTab("Login"),
                        child: buildTab('Login',
                            authController.tab.value == "Login", context),
                      ),
                      InkWell(
                        onTap: () => authController.changeTab("Register"),
                        child: buildTab('Register',
                            authController.tab.value == "Register", context),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Obx(() => authController.tab.value == "Login"
                  ? LoginWidget()
                  : RegisterWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
