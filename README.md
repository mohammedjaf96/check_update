# check_update

Flutter package to check for app updates
A simple and efficient way to determine if the current app version is lower than the required version, allowing you to prompt users to update the app or redirect them to the store automatically.



## Installation

### Android
No additional setup is required.

### iOS
No additional setup is required.






```
dependencies:
check_update:

```

import 'package:live_location_plus/live_location_plus.dart';
```

## Usage/Examples

```dart
import 'package:check_update/check_update.dart';

Future<void> main() async {
  CheckUpdateService checkUpdateService = CheckUpdateService();
  bool isNeedUpdate = await checkUpdateService.needUpdate("1.2.3");

  print(isNeedUpdate); // if the app need update .. return "true"
}
```


## Support

For support, email mohammedjjaff@gmail.com.com .


## Follow me at Instagram

- Instagram : https://instagram.com/m9_6m?igshid=YTQwZjQ0NmI0OA==

