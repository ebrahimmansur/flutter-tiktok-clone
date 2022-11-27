// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppColorData extends Equatable {
  final Color primerColor;
  final Color accentColor;
  final Color titleColor;
  final Color labelColor;
  final Color contentColor;
  final Color actionColor;
  final Color screenBackgroundColor;
  const AppColorData._({
    required this.primerColor,
    required this.accentColor,
    required this.titleColor,
    required this.labelColor,
    required this.contentColor,
    required this.actionColor,
    required this.screenBackgroundColor,
  });

  factory AppColorData.dark() => AppColorData._(
      primerColor: const Color(0xFF089bab),
      accentColor: const Color(0xFF777D74),
      titleColor: const Color(0xFFFFFFFF),
      labelColor: Colors.black54,
      contentColor: Colors.black54,
      actionColor: Colors.red.shade400,
      screenBackgroundColor: Colors.black);

  @override
  List<Object?> get props => [
        accentColor,
        actionColor,
        contentColor,
        labelColor,
        primerColor,
        screenBackgroundColor,
        titleColor,
      ];
}
