import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/authentication/views/register_view.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/utils/validators.dart';
import 'package:masu_mart/app/widgets/common%20ui/app_big_logo.dart';
import 'package:masu_mart/app/widgets/common%20ui/or_widget.dart';
import 'package:masu_mart/app/widgets/custome_button.dart';
import 'package:masu_mart/app/widgets/custome_input_field.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => controller.register.value
          ? RegisterView()
          : Center(
              child: Form(
                key: controller.formkey,
                child: Padding(
                  padding: const EdgeInsets.all(paddingmiddle),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        AppBigLogo(),

                        SizedBox(height: 4 * SizeConfig.heightMultiplier),
                        CustomTextFieldForm(
                          controller: controller.emailController,
                          hintText: email.tr,
                          round: true,
                          validator: (value) => validateEmail(string: value),
                          prefixIcon: Icons.email,
                        ),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier),
                        Obx(() => CustomTextFieldForm(
                              controller: controller.passwordController,
                              hintText: password.tr,
                              round: true,
                              suffixIcon: controller.passwordshow.value
                                  ? IconButton(
                                      onPressed: () {
                                        controller.passwordshow.toggle();
                                      },
                                      icon: Icon(
                                        Icons.view_agenda,
                                        color: AppTheme.primaryColor,
                                      ))
                                  : IconButton(
                                      onPressed: () {
                                        controller.passwordshow.toggle();
                                      },
                                      icon: Icon(FontAwesomeIcons.eye,
                                          color: AppTheme.primaryColor)),
                              validator: (value) =>
                                  validatePassword(string: value),
                              prefixIcon: Icons.lock,
                              obscureText: controller.passwordshow.value,
                            )),
                        SizedBox(height: 2 * SizeConfig.heightMultiplier),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Text(
                              forgetPassword.tr,
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                        // SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: paddingmiddle),
                          child: Row(
                            children: [
                              Expanded(
                                  child: CustomButton(
                                label: logIn.tr,
                                labelColor: Colors.white,
                                onPressed: () {
                                  controller.signIn();
                                },
                                borderRadius: borderoutlineRadius,
                              )),
                              SizedBox(width: 3 * SizeConfig.widthMultiplier),
                              Expanded(
                                  child: CustomButton(
                                label: register.tr,
                                onPressed: () {
                                  controller.register.toggle();
                                },
                                borderRadius: borderoutlineRadius,
                              )),
                            ],
                          ),
                        ),
                        OptionOrWidget(),
                        SizedBox(height: 10),
                        CustomButton(
                          label: googleSingIn.tr,
                          onPressed: () {
                            controller.googleSingIn();
                          },
                          borderRadius: borderoutlineRadius,
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
