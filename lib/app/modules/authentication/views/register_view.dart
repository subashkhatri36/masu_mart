import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masu_mart/app/constants/constants.dart';
import 'package:masu_mart/app/constants/theme_data.dart';
import 'package:masu_mart/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:masu_mart/app/utils/size_config.dart';
import 'package:masu_mart/app/utils/string_utils.dart';
import 'package:masu_mart/app/utils/validators.dart';
import 'package:masu_mart/app/widgets/common%20ui/app_big_logo.dart';
import 'package:masu_mart/app/widgets/common%20ui/or_widget.dart';
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
          padding: const EdgeInsets.all(paddingbig),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBigLogo(),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                Text(
                  register.tr,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: fontheading),
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                CustomTextFieldForm(
                  controller: controller.usernameController,
                  hintText: username.tr,
                  round: true,
                  validator: (value) =>
                      validateMinLength(string: value, length: 2),
                  prefixIcon: Icons.account_box,
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                CustomTextFieldForm(
                  controller: controller.remailController,
                  hintText: email.tr,
                  round: true,
                  validator: (value) => validateEmail(string: value),
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                Obx(() => CustomTextFieldForm(
                      controller: controller.rpasswordController,
                      hintText: password.tr,
                      round: true,
                      suffixIcon: controller.passwordshow.value
                          ? IconButton(
                              onPressed: () {
                                controller.passwordshow.toggle();
                              },
                              icon: Icon(Icons.view_agenda,
                                  color: AppTheme.primaryColor))
                          : IconButton(
                              onPressed: () {
                                controller.passwordshow.toggle();
                              },
                              icon: Icon(FontAwesomeIcons.eye,
                                  color: AppTheme.primaryColor)),
                      validator: (value) => validatePassword(string: value),
                      prefixIcon: Icons.lock,
                      obscureText: controller.passwordshow.value,
                    )),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                Obx(() => CustomTextFieldForm(
                      controller: controller.repasswordController,
                      hintText: rpassword.tr,
                      round: true,
                      suffixIcon: controller.passwordshow.value
                          ? IconButton(
                              onPressed: () {
                                controller.passwordshow.toggle();
                              },
                              icon: Icon(Icons.view_agenda,
                                  color: AppTheme.primaryColor))
                          : IconButton(
                              onPressed: () {
                                controller.passwordshow.toggle();
                              },
                              icon: Icon(FontAwesomeIcons.eye,
                                  color: AppTheme.primaryColor)),
                      validator: (value) => validatePassword(string: value),
                      prefixIcon: Icons.lock,
                      obscureText: controller.passwordshow.value,
                    )),
                SizedBox(height: SizeConfig.heightMultiplier),
                CustomTextFieldForm(
                  controller: controller.mobileController,
                  hintText: mobile.tr,
                  round: true,
                  validator: (value) => validateMinMaxLength(
                      string: value, minLegth: 10, maxLength: 10),
                  prefixIcon: Icons.phone,
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                CustomButton(
                  label: register.tr,
                  onPressed: () {
                    controller.registerAccount();
                  },
                  borderRadius: borderoutlineRadius,
                ),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                OptionOrWidget(),
                SizedBox(height: 2 * SizeConfig.heightMultiplier),
                CustomButton(
                  label: logIn.tr,
                  onPressed: () {
                    controller.register.toggle();
                  },
                  borderRadius: borderoutlineRadius,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
