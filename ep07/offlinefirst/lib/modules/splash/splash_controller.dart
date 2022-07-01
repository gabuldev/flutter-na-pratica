import 'package:offlinefirst/modules/splash/splash_state.dart';

import '../../shared/helpers/state.dart';

class SplashController extends SplashState {
  Future<void> syncData() async {
    state = AppState.loading;
    await Future.delayed(const Duration(seconds: 4));
    state = AppState.success;
  }
}
