import 'package:flutter/material.dart';

import '../model/onbourding_page_model.dart';

class Utils {
  Utils._();

  static const String mediLink = "MEDILINK";
  static const String continueAsUser = "Continue as\nUser";
  static const String browseAndOrderMedicines = "Browse and order\nmedicines";
  static const String continueAsPharmacy = "Continue as\nPharmacy";
  static const String manageYourPharmacy = "Manage your\nPharmacy";
  static const String yourHealthcareConnection = "Your Healthcare connection";
  static const String skip = "Skip";
  static const String next = "Next >";
  static const String welcomeBack = "Welcome Back";
  static const String signInToYourAccount = "Sign in to your account";
  static const String emailAddress = "Email Address";
  static const String password = "Password";
  static const String signUp = "Sign Up";
  static const String notHaveAnAccount = "Don't have account?";
  static const String signIn = "Sign in";
  static const String enterEmail = "Enter Email";
  static const String enterPassword = "Enter Password";
  static const String pleaseEnterAValidEmailAddress = "Please enter a valid email address";
  static const String pleaseEnterAValidPassword = "Please enter a valid Password";
  static const String forgetPassword = "Forget password?";
  static const String pharmacyPortal = "Pharmacy Portal";
  static const String manageYourPharmacyOnMedilink = "Manage your pharmacy on MEDILINK";
  static const String signInToPortal = "Sign in to Portal";
  static const String backToRoleSection = "< Back to role section";
  static const String createAccount = "Create Account";
  static const String joinUsToday = "Join Us Today";
  static const String fullName = "Full Name";
  static const String phoneNumber = "Phone Number";
  static const String alreadyHaveAnAccount = "Already have an account?";
  static const String enterYourFullName = "Enter your full name";
  static const String enterYourPhoneNumber = "Enter your phone number";
  static const String pleaseEnterAValidPhoneNumber = "Please enter a valid phone number";
  static const String verifyYourEmail = "Verify your email";
  static const String verifyEmail = "Verify email";
  static const String enterFiveDigitCode = "Enter 5 digit code";
  static const String sendCodeAgain = "Send code again";
  static const String yourIdentityHasBeenVerified = "Your Identity Has Been Verified. you can now reset your password";
  static const String backToSignInPage = "Back To SignIn Page";
  static const String hello = "Hello,";
  static const String letUsStart = "Let's start";
  static const String searchMedicine = "Search medicines..";
  static const String scanRx = "Scan RX";
  static const String nearby = "Nearby";
  static const String donate = "Donate";
  static const String rewards = "Rewards";
  static const String popularMedicines = "popular Medicines";
  static const String viewAll = "View All";
  static const String paracetamol = "Paracetamol";
  static const String amoxicillin = "Amoxicillin";
  static const String vitaminDx = "Vitamin D3";
  static const String ibuprofen = "Ibuprofen";
  static const String aspirin = "Aspirin";
  static const String multiVitamin = "Multi Vitamin";
  static const String painReliefAndFeverReducer = "Pain relief & fever reducer";
  static const String sale5099= "\$5.99";
  static const String sale7050= "\$7.55";
  static const String sale9099= "\$9.99";
  static const String sale8099= "\$8.99";
  static const String sale4040= "\$4.40";
  static const String sale5030= "\$5.30";
  static const String  inStock = "In Stock";
  static const String  bloodThinnerAndPainRelief = "blood Thinner And Pain Relief";
  static const String  antiInflammatory = "anti - Inflammatory";
  static const String  completeDailyNutrition = "complete Daily Nutrition";
  static const String  dailySupplement = "Daily Supplement";
  static const String  antibioticMedicine = "antibiotic Medicine";
  static const String  yourCheckOutHasBeenVerified = "your Check Out Has Been Verified";
  static const String  backToHomePage = "back To HomePage";


  //? models
  
  static List<OnbourdingPageModel> listOnbourdingPages = [
   OnbourdingPageModel(
    title: "Smart Search",
    description: "Find medicines quickly and easily with our intelligent search system",
    icon: Icons.search,
   ),
   OnbourdingPageModel(
    title: "Browse and Order",
    description: "Explore thousands of medicines with detailed information and pricing and order them",
    icon: Icons.shopping_cart,
   ),
   OnbourdingPageModel(
    title: "Scan Prescription",
    description: "Simply scan your prescription to order medicines instantly",
    icon: Icons.document_scanner_outlined,
   ),
    OnbourdingPageModel(
    title: "Find Pharmacies",
    description: "Locate nearest pharmacies and check medicine availability",
    icon: Icons.place,
   ),
  ];
}
