import 'package:get/get.dart';
import 'package:masu_mart/app/utils/string_utils.dart';

class TLanguage extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          appName: appName,
          logIn: logIn,
          register: register,
          googleSingIn: googleSingIn,
          email: email,
          password: password,
          rpassword: rpassword,
          forgetPassword: forgetPassword,
          or: or,
          username: username,
          mobile: mobile,
          rs: rs,
          todayPrice: todayPrice,
          search: search,
          total: total,
          qty: qty,
          bonless: bonless,
          noskin: noskin,
          addtocart: addtocart,
          removefromcart: removefromcart,
          preOrder: preOrder,
        },
        'ne_NP': {
          appName: 'मासु',
          logIn: 'लग  इन',
          register: 'दर्ता गर्नु',
          googleSingIn: 'गुगल साइन इन',
          email: 'ईमेल',
          password: 'पासवर्ड',
          forgetPassword: 'पासवोर्ड भुले ?',
          or: 'अथवा',
          username: 'पुरा नाम',
          mobile: 'मोबाइल नम्बर',
          rpassword: 'पुनः पासवर्ड',
          rs: 'रु.',
          todayPrice: 'आजको मूल्य',
          search: 'खोजी गर्नुहोस्',
          total: 'जम्मा',
          qty: 'मात्रा',
          bonless: 'हड्डीविहीन',
          noskin: 'छाला पर्दैन',
          addtocart: 'किन्न छुट्याउनुस्',
          removefromcart: 'कार्टबाट हटाउनुहोस्',
          preOrder: 'पहिलो अर्डर लिनुहोस्',
        }
      };
}
