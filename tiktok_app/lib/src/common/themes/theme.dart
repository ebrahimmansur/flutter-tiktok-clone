// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:tiktok_app/src/common/themes/colors.dart';
import 'package:tiktok_app/src/common/themes/typographys.dart';

class AppThemeDate extends Equatable {
  final AppColorData appColorData;
  final AppTypographyDate appTypographyDate;
  const AppThemeDate._({
    required this.appColorData,
    required this.appTypographyDate,
  });

  factory AppThemeDate.dark() => AppThemeDate._(
      appColorData: AppColorData.dark(),
      appTypographyDate: AppTypographyDate.mobile());

  @override
  List<Object?> get props => [
        appTypographyDate,
        appColorData,
      ];
}
