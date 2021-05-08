import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:masu_mart/app/modules/authentication/views/register_view.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/utils/validators.dart';
import 'package:masu_mart/app/widgets/custome_button.dart';
import 'package:masu_mart/app/widgets/custome_input_field.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  backgroundColor: Theme.of(context).backgroundColor,
        body: Obx(
      () => controller.register.value
          ? RegisterView()
          : Center(
              child: Form(
                key: controller.formkey,
                child: Padding(
                  padding: const EdgeInsets.all(verticalheight),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: verticalheight * 10,
                          width: verticalheight * 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/images/masulogo.png',
                            width: verticalheight * 10,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(height: verticalheight),
                        Text(logIn),
                        SizedBox(height: verticalheight),
                        CustomTextFieldForm(
                          controller: controller.emailController,
                          hintText: email,
                          round: true,
                          validator: (value) => validateEmail(string: value),
                          prefixIcon: Icons.email,
                        ),
                        SizedBox(height: verticalheight),
                        Obx(() => CustomTextFieldForm(
                              controller: controller.passwordController,
                              hintText: password,
                              round: true,
                              suffixIcon: controller.passwordshow.value
                                  ? IconButton(
                                      onPressed: () {
                                        controller.passwordshow.toggle();
                                      },
                                      icon: Icon(Icons.view_agenda))
                                  : IconButton(
                                      onPressed: () {
                                        controller.passwordshow.toggle();
                                      },
                                      icon: Icon(FontAwesomeIcons.eye)),
                              validator: (value) =>
                                  validatePassword(string: value),
                              prefixIcon: Icons.lock,
                              obscureText: controller.passwordshow.value,
                            )),
                        SizedBox(height: verticalheight),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Text(forgetPassword),
                          ),
                        ),
                        // SizedBox(height: verticalheight),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: verticalheight),
                          child: Row(
                            children: [
                              Expanded(
                                  child: CustomButton(
                                label: logIn,
                                btnColor: Theme.of(context).backgroundColor,
                                labelColor: Colors.white,
                                onPressed: () {
                                  controller.signIn();
                                },
                                borderRadius: verticalheight,
                              )),
                              SizedBox(width: verticalheight),
                              Expanded(
                                  child: CustomButton(
                                label: register,
                                onPressed: () {
                                  controller.register.toggle();
                                },
                                labelColor: Colors.white,
                                btnColor: Theme.of(context).backgroundColor,
                                borderRadius: verticalheight,
                              )),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Divider(
                              color: Theme.of(context)
                                  .backgroundColor
                                  .withOpacity(0.5),
                            )),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: verticalheight),
                              child: Text('OR'),
                            ),
                            Expanded(
                                child: Divider(
                              color: Theme.of(context)
                                  .backgroundColor
                                  .withOpacity(0.5),
                            )),
                          ],
                        ),
                        SizedBox(height: verticalheight),
                        CustomButton(
                          label: googleSingIn,
                          onPressed: () {
                            controller.googleSingIn();
                          },
                          labelColor: Colors.white,
                          btnColor: Theme.of(context).backgroundColor,
                          borderRadius: verticalheight,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
    ));
  }
}
