import 'package:sprint_clone/app/app.logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String userOnBoardingStatusKey = 'user_onboarding_status_key';

class SharedPreferenceService {
  final log = getLogger('SharedPreferenceService');
  
  static Future<void> setUserOnBoardingStatus(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(userOnBoardingStatusKey, value);
  }

  static Future<bool> getUserOnBoardingStatus() async{
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(userOnBoardingStatusKey) ?? false;
  }
}
