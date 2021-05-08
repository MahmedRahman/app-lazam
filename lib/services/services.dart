import 'package:app/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

const KuserToken = 'usertoken';
const KuserRole = 'userRole';
const KIntroduction = 'introduction';

class Services extends GetxService {
  String userToken;
  String userRole;
  GetStorage storage = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

 void setUserIntroduction() {
    storage.write(KuserToken, 1);
  }
  void setUserToken(String value) {
    storage.write(KuserToken, value);
  }

  String getUserToken() {
  
    return storage.read(KuserToken);
  }

  void setUserRole(String value) {
    storage.write(KuserRole, value);
  }

  String getUserRole() {
    return GetStorage().read(KuserRole);
  }

  void userRoute() {


    if (isLogin() == true) {
      switch (getUserRole()) {
        case 'Event Maker':
          Get.toNamed(Routes.EVENT_MACKER);
          break;
        case 'Food Provider':
          Get.toNamed(Routes.FOOD_PROVIDER);
          break;
        default:
      }
    } else {
      Get.toNamed(Routes.SignIn);
    }
  }

  bool isLogin() {
    if (getUserToken() == null || getUserRole() == null) {
      return false;
    } else {
      return true;
    }
  }

  void signOut() {
    storage.remove(KuserToken);
    storage.remove(KuserRole);
    Get.toNamed(Routes.SignIn);
  }

  Map<String, String> getUserHeader() {
    Map<String, String> header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ',
    };

    header.update('Authorization', (value) {
      return 'Bearer ' + getUserToken();
    });

    return header;
  }

  void sendEmailVerification() {}
}
