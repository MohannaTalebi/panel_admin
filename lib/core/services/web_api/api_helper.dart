class ApiHelper {
  final String _apiUri = "https://api.topinbiz.com/";
  final String _mapUri = "https://api.topinbiz.com/";
  final String _token = "?token=AgC44qfHUw4ua5Fo";

  String get apiUri => _apiUri;

  String get mapUri => _mapUri;
  final String verifyOtp = "user/authentication/email/verify";
  final String login = "user/authentication/login";
  final String email = "user/authentication/email/request";
  final String userProfile = "user/profile/view";
  final String updateUserProfile = "user/update";
  final String supportList = "content/support/list";
  final String supportAdd = "content/support/add";
  final String supportGet = "content/support/get";
  final String supportReply = "content/support/reply";
  final String categoryList = "content/category/list";

  String get token => _token;
}