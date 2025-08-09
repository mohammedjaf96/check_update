import 'dart:math';

import 'package:package_info_plus/package_info_plus.dart';

class CheckUpdateService {

  Future<String> getCurrentAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  }

  List<int> splitVersion(String version){
    List<String> array = version.split(".");
    List<int> intList = array.map(int.parse).toList().reversed.toList();
    return intList;
  }

  int sumValueOfVersion(List<int> parts){
    int result = 0;
    for (int i = 0; i < parts.length; i++) {
      int multiplier = (i == 0) ? 1 : pow(10, 3 + i - 1).toInt();
      result += parts[i] * multiplier;
    }
    return result;
  }

  Future<bool> needUpdate(String requiredVersionAsString) async {
    List<int> requiredVersion = splitVersion(requiredVersionAsString);
    List<int> currentVersion = splitVersion(await getCurrentAppVersion());

    int requiredValue = sumValueOfVersion(requiredVersion);
    int currentValue = sumValueOfVersion(currentVersion);

    return requiredValue > currentValue;

  }

}




