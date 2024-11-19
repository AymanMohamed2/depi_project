import 'package:cancer/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

import 'permession_handler.dart';

class ImagePickerHelper {
  final ImagePicker picker;
  final PermessionHandler permessionHandler;

  ImagePickerHelper({required this.picker, required this.permessionHandler});

  Future<Either<Failure, XFile?>> pickImageMethod() async {
    bool checkPermession = await PermessionHandler().checkStoragePermission();
    XFile? pickedFile;
    try {
      if (checkPermession) {
        pickedFile = await picker.pickImage(source: ImageSource.gallery);
      }
      return Right(pickedFile);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
