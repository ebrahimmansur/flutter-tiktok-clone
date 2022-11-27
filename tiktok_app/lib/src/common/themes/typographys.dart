// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppTypographyDate extends Equatable {
  final TextStyle title;
  final TextStyle paragraph;
  final TextStyle label;

  const AppTypographyDate._({
    required this.title,
    required this.paragraph,
    required this.label,
  });

  factory AppTypographyDate.mobile() => const AppTypographyDate._(
      title: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
      ),
      paragraph: TextStyle(
        fontSize: 20,
      ),
      label: TextStyle(
        fontSize: 16,
      ));

  @override
  List<Object?> get props => [
        title,
        label,
        paragraph,
      ];
}
