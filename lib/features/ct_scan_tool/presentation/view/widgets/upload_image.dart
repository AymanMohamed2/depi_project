import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view_model/pick_image/pick_image_cubit.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: InkWell(
        onTap: () async {
          await PickImageCubit.get(context).pickImage();
        },
        child: DottedBorder(
          borderType: BorderType.RRect,
          color: AppColors.primary,
          child: BlocBuilder<PickImageCubit, PickImageState>(
              builder: (context, state) {
            return AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: PickImageCubit.get(context).imageXFile != null
                        ? 0
                        : 80),
                child: PickImageCubit.get(context).imageXFile != null
                    ? Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.file(
                            fit: BoxFit.cover,
                            PickImageCubit.get(context).imageFile!,
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          const Center(
                            child: Icon(
                              Icons.upload_file_rounded,
                              size: 50,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Text(
                              'Upload Your Image',
                              style: AppStyles.mediamColored17(context),
                            ),
                          ),
                        ],
                      ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
