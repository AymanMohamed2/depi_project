import 'package:permission_handler/permission_handler.dart';

class PermessionHandler {
  Future<void> requestPermission() async {}

  Future<bool> checkStoragePermission() async {
    var storageStatus = await Permission.storage.status;
    var photosStatus = await Permission.photos.status;

    if (storageStatus.isGranted || photosStatus.isGranted) {
      return true;
    } else if (storageStatus.isPermanentlyDenied) {
      await openAppSettings();
      if (storageStatus.isGranted || photosStatus.isGranted) {
        return true;
      } else {
        return false;
      }
    } else {
      await Permission.photos.request();
      await Permission.storage.request();

      if (storageStatus.isGranted || photosStatus.isGranted) {
        return true;
      } else {
        await openAppSettings();
        return false;
      }

      // Request permission if not granted
    }
  }
}
