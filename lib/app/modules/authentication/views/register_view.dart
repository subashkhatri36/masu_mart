import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masu_mart/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/utils/validators.dart';
import 'package:masu_mart/app/widgets/custome_button.dart';
import 'package:get/get.dart';
import 'package:masu_mart/app/widgets/custome_input_field.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthenticationController>();
    return Center(
      child: Form(
        key: controller.formkey,
        child: Padding(
          padding: const EdgeInsets.all(verticalheight),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: verticalheight * 6,
                  width: verticalheight * 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    'assets/images/masulogo.png',
                    width: verticalheight * 6,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(height: verticalheight),
                Text(register),
                SizedBox(height: verticalheight),
                CustomTextFieldForm(
                  controller: controller.usernameController,
                  hintText: username,
                  round: true,
                  validator: (value) =>
                      validateMinLength(string: value, length: 2),
                  prefixIcon: Icons.account_box,
                ),
                SizedBox(height: verticalheight),
                CustomTextFieldForm(
                  controller: controller.remailController,
                  hintText: email,
                  round: true,
                  validator: (value) => validateEmail(string: value),
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: verticalheight),
                Obx(() => CustomTextFieldForm(
                      controller: controller.rpasswordController,
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
                      validator: (value) => validatePassword(string: value),
                      prefixIcon: Icons.lock,
                      obscureText: controller.passwordshow.value,
                    )),
                SizedBox(height: verticalheight),
                Obx(() => CustomTextFieldForm(
                      controller: controller.repasswordController,
                      hintText: rpassword,
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
                      validator: (value) => validatePassword(string: value),
                      prefixIcon: Icons.lock,
                      obscureText: controller.passwordshow.value,
                    )),
                SizedBox(height: verticalheight),
                CustomTextFieldForm(
                  controller: controller.mobileController,
                  hintText: mobile,
                  round: true,
                  validator: (value) => validateMinMaxLength(
                      string: value, minLegth: 10, maxLength: 10),
                  prefixIcon: Icons.phone,
                ),

                SizedBox(height: verticalheight),
                CustomButton(
                  label: register,
                  onPressed: () {
                    controller.registerAccount();
                  },
                  labelColor: Colors.white,
                  btnColor: Theme.of(context).backgroundColor,
                  borderRadius: verticalheight,
                ),
                SizedBox(height: verticalheight),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: verticalheight),
                //   child: Row(
                //     children: [
                //       Expanded(
                //           child: CustomButton(
                //         label: logIn,
                //         btnColor: Theme.of(context).backgroundColor,
                //         labelColor: Colors.white,
                //         onPressed: () {
                //           controller.register.toggle();
                //         },
                //         borderRadius: verticalheight,
                //       )),
                //       SizedBox(width: verticalheight),
                //       Expanded(
                //           child: CustomButton(
                //         label: register,
                //         onPressed: () {},
                //         labelColor: Colors.white,
                //         btnColor: Theme.of(context).backgroundColor,
                //         borderRadius: verticalheight,
                //       )),
                //     ],
                //   ),
                // ),
                Row(
                  children: [
                    Expanded(
                        child: Divider(
                      color: Theme.of(context).backgroundColor.withOpacity(0.5),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: verticalheight),
                      child: Text('OR'),
                    ),
                    Expanded(
                        child: Divider(
                      color: Theme.of(context).backgroundColor.withOpacity(0.5),
                    )),
                  ],
                ),
                SizedBox(height: verticalheight),
                CustomButton(
                  label: logIn,
                  btnColor: Theme.of(context).backgroundColor,
                  labelColor: Colors.white,
                  onPressed: () {
                    controller.register.toggle();
                  },
                  borderRadius: verticalheight,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
