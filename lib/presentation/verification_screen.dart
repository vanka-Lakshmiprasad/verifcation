import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:verifcation/core/app_export.dart';
import 'package:verifcation/widgets/custom_elevated_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:logger/logger.dart';

var logger = Logger();

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 380.h,
                          margin: EdgeInsets.only(
                            left: 24.h,
                            right: 23.h,
                          ),
                          child: Text(
                            "Verify Your Details Before offer a ride",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.headlineSmallBlack900,
                          ),
                        ),
                      ),
                      SizedBox(height: 27.v),
                      _buildEleven(context),
                      SizedBox(height: 28.v),
                      _buildFifteen(context),
                      SizedBox(height: 28.v),
                      _buildThirteen(context),
                      SizedBox(height: 28.v),
                      _buildSixteen(context),
                      SizedBox(height: 28.v),
                      _buildFourteen(context),
                      SizedBox(height: 48.v),
                      _buildVerify(context),
                      SizedBox(height: 66.v),
                      SizedBox(
                        height: 463.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            _buildFrameFive(context),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: const EdgeInsets.all(0),
                                color: theme.colorScheme.onPrimary,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(94.0),
                                ),
                                child: Container(
                                  height: 188.v,
                                  width: 217.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.h,
                                    vertical: 32.v,
                                  ),
                                  decoration:
                                      BoxDecoration(
                                        color: theme.colorScheme.onPrimary,
                                    borderRadius:
                                        BorderRadius.circular(94.0),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 9.h),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 40.h,
                                            vertical: 11.v,
                                          ),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: fs.Svg(
                                                ImageConstant.imgGroup8,
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 39.v),
                                              Container(
                                                height: 38.v,
                                                width: 88.h,
                                                decoration: BoxDecoration(
                                                  color: appTheme.amberA700,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    44.h,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          height: 25.v,
                                          width: 30.h,
                                          margin: EdgeInsets.only(left: 29.h),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary,
                                            borderRadius: BorderRadius.circular(
                                              15.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            right: 24.h,
                                            bottom: 8.v,
                                          ),
                                          child: Text(
                                            "D",
                                            style:
                                                theme.textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          height: 39.v,
                                          width: 45.h,
                                          margin: EdgeInsets.only(
                                            left: 29.h,
                                            bottom: 18.v,
                                          ),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme.onPrimary,
                                            borderRadius: BorderRadius.circular(
                                              22.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 35.h,
                                            bottom: 8.v,
                                          ),
                                          child: Text(
                                            "C",
                                            style:
                                                theme.textTheme.displayMedium,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 11.v),
                                          child: Text(
                                            "oRy",
                                            style: CustomTextStyles
                                                .headlineSmallInter,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectAFile(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => _openFilePicker(),
      width: 205.h,
      text: "+ select a file",
      margin: EdgeInsets.only(left: 26.h),
    );
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 41.h,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 7.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Driving Licenc",
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: "e",
                    style: CustomTextStyles.titleMedium_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          _buildSelectAFile(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectAFile1(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => _openFilePicker(),
      width: 205.h,
      text: "+ select a file",
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 41.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Text(
              "Polution Card",
              style: theme.textTheme.titleMedium,
            ),
          ),
          _buildSelectAFile1(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectAFile2(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => _openFilePicker(),
      width: 205.h,
      text: "+ select a file",
    );
  }
  Future<void> _openFilePicker() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        // File picked successfully
        String filePath = result.files.single.path!;
        // Do something with the file path
        logger.d('File picked: $filePath');
      } else {
        // User canceled the file picking
        logger.d('File picking canceled.');
      }
    } catch (e) {
      // Handle any errors that occur during file picking
      logger.d('Error picking file: $e');
    }
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 41.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Text(
              "Bike Picture",
              style: theme.textTheme.titleMedium,
            ),
          ),
          _buildSelectAFile2(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEnterNumberPlate(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
      labelText: 'Enter your Bike Number',
    ),
    );

  }

  /// Section Widget
  Widget _buildSixteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 41.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Text(
              "Number Plate",
              style: theme.textTheme.titleMedium,
            ),
          ),
          _buildEnterNumberPlate(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectAFile3(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () => _openFilePicker(),
      width: 205.h,
      text: "+ select a file",
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 41.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Text(
              "Adhar Card",
              style: theme.textTheme.titleMedium,
            ),
          ),
          _buildSelectAFile3(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVerify(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {},
      height: 56.v,
      width: 211.h,
      text: "Verify",
      buttonStyle: CustomButtonStyles.fillOnPrimary,
      buttonTextStyle: theme.textTheme.headlineSmall!,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildFrameFive(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 98.h,
          vertical: 141.v,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.onPrimary,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 19.v),
            SizedBox(
              width: 230.h,
              child: Text(
                "Connecting Routes\nSharing Commutes",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineMedium!.copyWith(
                  height: 2.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}
