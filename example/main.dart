

import 'package:check_new_version/check_new_version.dart';

Future<void> main() async {
  CheckUpdateService checkUpdateService = CheckUpdateService();
  bool isNeedUpdate = await checkUpdateService.needUpdate("1.2.3");

  print(isNeedUpdate); // if the app need update .. return "true"
}