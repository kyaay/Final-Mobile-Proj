import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

// import 'cropper/ui_helper.dart'
//     if (dart.library.io) 'cropper/mobile_ui_helper.dart'
//     if (dart.library.html) 'cropper/web_ui_helper.dart';

// for picking up image from gallery
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: _file.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
      ],
      //uiSettings: buildUiSettings(),
      // );
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: true),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    return await croppedFile?.readAsBytes();
  }
  print('No Image Selected');
}

// for displaying snackbars
showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}
