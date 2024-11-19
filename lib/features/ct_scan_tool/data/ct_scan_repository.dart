import 'package:cancer/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

abstract class CtScanRepository {
  Future<Either<Failure, String>> predictImage(XFile imageFile);
}
