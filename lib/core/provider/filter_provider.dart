import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:texa1_app/core/enums.dart';

final selectedProjectProvider = StateProvider<ProjectType?>((ref) => null);
final selectedKindProvider = StateProvider<TransactionKind?>((ref) => null);
final selectedDateProvider = StateProvider<DateTime?>((ref) => null);
final amountRangeProvider = StateProvider<RangeValues>(
  (ref) => const RangeValues(0, 150000),
);
