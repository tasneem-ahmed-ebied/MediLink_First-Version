import 'package:flutter/material.dart';
import 'package:medi_link/view/add_medicine_pharmacy/screen/add_medicine_pharmacy.dart';
import 'package:medi_link/view/add_to_cart/screen/add_to_cart.dart';
import 'package:medi_link/view/categories/screen/categories.dart';
import 'package:medi_link/view/checkout_page_users/screen/check_out_page.dart';
import 'package:medi_link/view/choose_page/screen/choose_page.dart';
import 'package:medi_link/view/forget_password/screen/forget_password.dart';
import 'package:medi_link/view/home_pharmacy_page/screen/home_pharmacy_page.dart';
import 'package:medi_link/view/home_user_page/screen/home_user_page.dart';
import 'package:medi_link/view/loading_page/screen/loading_page.dart';
import 'package:medi_link/view/login_pharmacy_page/screen/login_pharmacy_page.dart';
import 'package:medi_link/view/login_user_page/screen/login_user.dart';
import 'package:medi_link/view/medisine_date/screen/medisine_date.dart';
import 'package:medi_link/view/nearest_pharmacy/screen/nearest_pharmacy.dart';
import 'package:medi_link/view/not_found_screen/screen/defult_screen.dart';
import 'package:medi_link/view/products_page/screen/product_page.dart';
import 'package:medi_link/view/rewards_page/screen/reward_page.dart';
import 'package:medi_link/view/scan_page/screen/scan_qr_page.dart';
import 'package:medi_link/view/signup_user_page/screen/signup_user_page.dart';
import 'package:medi_link/view/verified_checkout_page/screen/verified_checkout_page.dart';

import '../view/donate_page/screen/donate_page.dart';
import '../view/donation_pharmacy_page/screen/donation_pharmacy_page.dart';
import '../view/splash_screen/screen/splash_screen.dart';
import '../view/verified_forgetpassword_page/screen/verified_forgetpassword_page.dart';
import '../view/view_medicines_page/screen/view_medicines_page.dart';
import '../view/view_medicines_pharmacy/screen/view_medicines_pharmacy.dart';

class RouteManager {
  RouteManager._();

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case RoutesNames.choosePage:
        page = const ChoosePage();
      case RoutesNames.loadingPage:
        page = const LoadingPage();
      case RoutesNames.splash:
        page = const SplashScreen();
      case RoutesNames.loginUsers:
        page = const LoginUsers();
        case RoutesNames.homeUserPage:
        page = const HomeUserPage();
        case RoutesNames.homePharmacyPage:
        page = const HomePharmacyPage();
        case RoutesNames.loginPharmacyPage:
        page = const LoginPharmacy();
        case RoutesNames.signupUserPage:
        page = const SignupUserPage();
        case RoutesNames.forgetPassword:
        page = const ForgetPassword();
        case RoutesNames.verifiedForgetPassword:
        page = const VerifiedForgetpasswordPage();
        case RoutesNames.categories:
        page =  CategoriesPage();
        case RoutesNames.medicineDate:
        page = const ProductDetailsPage();
        case RoutesNames.scan:
        page = const ScanQr();
        case RoutesNames.productsPage:
        page = const ProductsPage(category: 'medicines',);
        case RoutesNames.nearestPharmacy:
        page = const NearestPharmacyPage();
        case RoutesNames.cartPage:
        page = const MyCartPage();
        case RoutesNames.donateMedicinePage:
        page =  DonateMedicinePage();
        case RoutesNames.rewardsDonation:
        page =  RewardsPage();
        case RoutesNames.addMedicinePharmacy:
        page =  AddMedicinePharmacy();
        case RoutesNames.viewOrdersPharmacy:
        page =  ViewOrdersPharmacy();
        case RoutesNames.medicineInventoryPage:
        page =  MedicineInventoryPage();
        case RoutesNames.donationPharmacyPage:
        page =  DonationPharmacyPage();
        case RoutesNames.checkOutPage:
        page =  CheckOutPage();
        case RoutesNames.verifiedCheckOutPage:
        page =  VerifiedCheckOutPage();
      default:
        page = const DefultScreen();
    }
    return MaterialPageRoute(builder: (context) => page, settings: settings);
  }
}

class RoutesNames {
  RoutesNames._();

  static const String choosePage = "/";
  static const String loadingPage = "/loadingPage";
  static const String splash = "/splash";
  static const String loginUsers = "/loginUsers";
  static const String homeUserPage = "/homeUserPage";
  static const String homePharmacyPage = "/homePharmacyPage";
  static const String loginPharmacyPage = "/loginPharmacyPage";
  static const String signupUserPage = "/signupUserPage";
  static const String forgetPassword = "/forgetPassword";
  static const String verifiedForgetPassword = "/verifiedForgetPassword";
  static const String categories = "/categories";
  static const String medicineDate = "/medisineDate";
  static const String scan = "/scan";
  static const String productsPage = "/productsPage";
  static const String nearestPharmacy = "/nearestPharmacy";
  static const String cartPage = "/cartPage";
  static const String donateMedicinePage = "/DonateMedicinePage";
  static const String rewardsDonation = "/rewardsDonation";
  static const String addMedicinePharmacy = "/addMedicine";
  static const String viewOrdersPharmacy = "/viewOrdersPharmacy";
  static const String medicineInventoryPage = "/medicineInventoryPage";
  static const String donationPharmacyPage = "/donationPharmacyPage";
  static const String checkOutPage = "/checkOutPage";
  static const String verifiedCheckOutPage = "/verifiedCheckOutPage";
}
