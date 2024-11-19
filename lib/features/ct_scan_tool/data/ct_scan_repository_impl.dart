import 'package:cancer/core/errors/failures.dart';
import 'package:cancer/core/networking/api_constance.dart';
import 'package:cancer/core/networking/api_end_points.dart';
import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/features/ct_scan_tool/data/ct_scan_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class CtScanRepositoryImpl extends CtScanRepository {
  final ApiServices apiServices;

  CtScanRepositoryImpl(this.apiServices);
  @override
  Future<Either<Failure, String>> predictImage(XFile imageFile) async {
    final formData = await convertImageData(imageFile);
    try {
      final result = await apiServices.post(
        url: ApiConstance.baseUrl + ApiEndPoints.ctScanEndPoint,
        body: formData,
      );
      return right(result['message']);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  Future<FormData> convertImageData(XFile imageFile) async {
    return FormData.fromMap({
      'image': await MultipartFile.fromFile(
        imageFile.path,
        filename: imageFile.name,
      ),
    });
  }
}
