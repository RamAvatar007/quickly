class Apis {
  Apis._();
  static Apis instance = Apis._();
 // final imageBaseUrl = "https://b2bmondo.s3.amazonaws.com/";

 // onboarding .............................................
  final sendOtp = "app/driver/auth/send-otp";
  final verifyOtp = "app/driver/auth/verify-otp";
  final signUp = "driver/auth/sign-up";
  final login = "driver/auth/login";
  final changeOnlineStatus = "app/driver/auth/online-status";
  final profile = "app/auth/get-profile";
  final updateProfile = "app/auth/update-profile";
  final getCompanyList = "common/users-list";
  final addBankAccounts = "app/driver/bank/add-edit";
  final bankAccounts = "app/driver/bank/list";
  final deleteBankAccounts = "app/driver/bank/delete";
  final defaultBankAccounts = "app/driver/bank/mark-default/";
  final support = "app/driver/auth/support";
  final sendUpdateOtp = "driver/auth/send-update-otp";
  final verifyUpdateOtp = "driver/auth/verify-update-otp";
  final notifications = "app/driver/notification/list";
  final readAllNotifications = "app/driver/notification/read";
  final readNotification = "app/driver/notification/read/";
  final deleteNotification = "app/driver/notification/delete/";
  final wallet = "app/driver/wallet/list";
  final walletHistory = "app/driver/wallet/list?type=";
  final deleteAccount = "app/auth/delete-account";
  final orders = "driver/order";
  final currentOrder = "app/driver/auth/home";
  final orderHistory = "app/driver/order/history";
  final changeOrderStatus = "app/driver/order/action";
  final getOrders = "app/driver/order/request";
  final confirmOrRejectOrder = "app/driver/order/confirm-reject";
  final updateSetting = "app/driver/auth/update-setting";
  final ratings = "app/driver/auth/get-rating";
  final emergency = "app/driver/auth/emergency";


  final imageUpload = "common/image-upload";
  final fileUpload = "common/file-upload";
  final aboutQuickly = "common/content/about-us";
  final termsAndConditions = "common/content/driver-terms-and-conditions";
  final privacyPolicy = "common/content/privacy-policy";
  final driverAgreement = "common/content/driver-agreement";



  // google services ........................................
  static const googleApiKey = 'AIzaSyCrfZW4Yn9i6Fk9zq_YEsCwW-sbdXyVCzs';
  static const googleSearchApi = 'https://maps.googleapis.com/maps/api/place/textsearch/json';
  static const googleSearchDetailApi = 'https://maps.googleapis.com/maps/api/place/details/json';


 
}
