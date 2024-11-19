import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cancer/core/helper/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'pick_image_state.dart';

class PickImageCubit extends Cubit<PickImageState> {
  PickImageCubit(this.imagePickerHelper) : super(PickImageInitial());
  static PickImageCubit get(context) => BlocProvider.of(context);
  final ImagePickerHelper imagePickerHelper;
  XFile? imageXFile;
  File? imageFile;
  Future<void> pickImage() async {
    var result = await imagePickerHelper.pickImageMethod();

    result.fold((l) => emit(PickImageFailure(l.errMessage)), (r) {
      if (r != null) {
        imageXFile = r;
      }
      convertToFile(r);

      emit(PickImageSuccess());
    });
  }

  void convertToFile(XFile? r) {
    if (r != null) {
      imageFile = File(r.path);
    }
  }
}
