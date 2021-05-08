import 'package:app/app/modules/authentication/provider/authentication_provider.dart';
import 'package:app/app/modules/authentication/views/profile_event_maker_view.dart';
import 'package:app/app/modules/authentication/views/profile_food_provider_view.dart';
import 'package:app/app/modules/authentication/views/sign_up_event_macker_view.dart';
import 'package:app/app/modules/authentication/views/sign_up_food_provider_view.dart';
import 'package:app/app/modules/authentication/views/user_route_view.dart';
import 'package:app/app/modules/notifaction/views/notifaction_view.dart';
import 'package:app/app/modules/notifaction/bindings/notifaction_binding.dart';
import 'package:app/app/modules/contact/views/contact_add_view.dart';
import 'package:app/app/modules/contact/views/contact_list_add_view.dart';
import 'package:app/app/modules/contact/views/contact_list_detail_view.dart';
import 'package:app/app/modules/contact/views/contact_view.dart';
import 'package:app/app/modules/contact/bindings/contact_binding.dart';
import 'package:app/app/modules/event/bindings/event_binding.dart';
import 'package:app/app/modules/event/views/event_add_view.dart';
import 'package:app/app/modules/event/views/event_detail_view.dart';
import 'package:app/app/modules/event/views/event_share_view.dart';
import 'package:app/app/modules/event/views/event_view.dart';
import 'package:app/app/modules/foodProvider/views/food_provider_detail_view.dart';
import 'package:app/app/modules/foodProvider/views/food_provider_list_view.dart';
import 'package:app/app/modules/offer/views/offer_view.dart';
import 'package:app/app/modules/offer/bindings/offer_binding.dart';
import 'package:app/app/modules/authentication/views/authentication_view.dart';
import 'package:app/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:app/app/modules/authentication/views/forget_password_view.dart';
import 'package:app/app/modules/authentication/views/introduction_view.dart';
import 'package:app/app/modules/authentication/views/sign_in_view.dart';
import 'package:app/app/modules/authentication/views/sign_up_view.dart';
import 'package:app/app/modules/authentication/views/splash_view.dart';
import 'package:app/app/modules/eventMacker/bindings/event_macker_binding.dart';
import 'package:app/app/modules/eventMacker/views/event_macker_view.dart';
import 'package:app/app/modules/foodProvider/bindings/food_provider_binding.dart';
import 'package:app/app/modules/foodProvider/views/food_provider_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.Splash;

  static final routes = [
    GetPage(
      name: Routes.UserRouteView,
      page: () => UserRouteView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.SignUpFoodProviderView,
      page: () => SignUpFoodProviderView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.SignUpEventMackerView,
      page: () => SignUpEventMackerView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.Splash,
      page: () => SplashView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.SignIn,
      page: () => SignInView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.Introduction,
      page: () => IntroductionView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.SignUp,
      page: () => SignUpView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.ForgetPassword,
      page: () => ForgetPasswordView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.FOOD_PROVIDER,
      page: () => FoodProviderView(),
      binding: FoodProviderBinding(),
    ),
    GetPage(
      name: Routes.EVENT_MACKER,
      page: () => EventMackerView(),
      binding: EventMackerBinding(),
    ),
    GetPage(
      name: Routes.OFFER,
      page: () => OfferView(),
      binding: OfferBinding(),
    ),
    GetPage(
      name: Routes.CONTACT,
      page: () => ContactView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Routes.ContactAddView,
      page: () => ContactAddView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Routes.ContactListAddView,
      page: () => ContactListAddView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Routes.ContactListDetailView,
      page: () => ContactListDetailView(),
      binding: ContactBinding(),
    ),
    GetPage(
      name: Routes.EVENT,
      page: () => EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: Routes.EventAddView,
      page: () => EventAddView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: Routes.EventShareView,
      page: () => EventShareView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: Routes.EventDetailView,
      page: () => EventDetailView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: Routes.FoodProviderListView,
      page: () => FoodProviderListView(),
      binding: FoodProviderBinding(),
    ),
    GetPage(
      name: Routes.FoodProviderDetailView,
      page: () => FoodProviderDetailView(),
      binding: FoodProviderBinding(),
    ),
    GetPage(
      name: Routes.NOTIFACTION,
      page: () => NotifactionView(),
      binding: NotifactionBinding(),
    ),
    GetPage(
      name: Routes.ProfileEventMakerView,
      page: () => ProfileEventMakerView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: Routes.ProfileFoodProviderView,
      page: () => ProfileFoodProviderView(),
      binding: AuthenticationBinding(),
    ),
  ];
}
