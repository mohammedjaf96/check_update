

import 'package:check_update/check_update.dart';

Future<void> main() async {
  CheckUpdateService checkUpdateService = CheckUpdateService();
  bool isNeedUpdate = await checkUpdateService.needUpdate("1.2.3");

  print(isNeedUpdate); // if the app need update .. return "true"
}