import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/provider/filter_provider.dart';

class FilterWidget extends ConsumerWidget {
  const FilterWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = context.colorScheme;
    final project = ref.watch(selectedProjectProvider);
    final kind = ref.watch(selectedKindProvider);
    final date = ref.watch(selectedDateProvider);
    final range = ref.watch(amountRangeProvider);

    Widget section(String title, Widget child) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        color: colors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Center(
              child: SvgPicture.asset(
                'lib/assets/icons/Bar.svg',
                width: 60,
                height: 3.79,
              ),
            ),
            const SizedBox(height: 16),

            section(
              'المشروع',
              Wrap(
                spacing: 8,
                children: ProjectType.values.map((e) {
                  final sel = project == e;
                  return ChoiceChip(
                    label: Text(e.name),
                    selected: sel,
                    selectedColor: colors.primary,
                    onSelected: (_) =>
                        ref.read(selectedProjectProvider.notifier).state = e,
                  );
                }).toList(),
              ),
            ),

            section(
              'النوع',
              Column(
                children: TransactionKind.values.map((k) {
                  return Row(
                    children: [
                      Radio<TransactionKind>(
                        value: k,
                        groupValue: kind,
                        activeColor: colors.primary,
                        onChanged: (v) =>
                            ref.read(selectedKindProvider.notifier).state = v!,
                      ),
                      Text(
                        k == TransactionKind.invoice ? 'الفواتير' : 'التحويلات',
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),

            section(
              'التاريخ',
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () async {
                    final picked = await showDatePicker(
                      context: context,
                      initialDate: date ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (picked != null) {
                      ref.read(selectedDateProvider.notifier).state = picked;
                    }
                  },
                  child: Text(
                    date != null
                        ? DateFormat('yyyy/MM/dd').format(date)
                        : 'تحديد التاريخ',
                    style: TextStyle(color: colors.primary),
                  ),
                ),
              ),
            ),

            section(
              'المبلغ',
              Column(
                children: [
                  RangeSlider(
                    values: range,
                    min: 0,
                    max: 150000,
                    activeColor: colors.primary,
                    labels: RangeLabels(
                      '${range.start.toInt()} د.ع',
                      '${range.end.toInt()} د.ع',
                    ),
                    onChanged: (r) =>
                        ref.read(amountRangeProvider.notifier).state = r,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('0 د.ع'), Text('150,000 د.ع')],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  FloatingActionButton(
                    backgroundColor: colors.surface,
                    child: Icon(Icons.delete, color: colors.primary),
                    onPressed: () {
                      ref.invalidate(selectedProjectProvider);
                      ref.invalidate(selectedKindProvider);
                      ref.invalidate(selectedDateProvider);
                      ref.invalidate(amountRangeProvider);
                    },
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text('تطبيق'),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:intl/intl.dart';
// import 'package:texa_app/core/enums.dart';
// import 'package:texa_app/core/extensions/context_extensions.dart';
// import 'package:texa_app/core/provider/filter_provider.dart';
// import 'filter_section.dart';

// class FilterWidget extends ConsumerWidget {
//   const FilterWidget({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final colors = Theme.of(context).colorScheme;
//     final primaryColor = colors.primary;

//     final selectedProject = ref.watch(selectedProjectProvider);
//     final selectedKind = ref.watch(selectedKindProvider);
//     final selectedDate = ref.watch(selectedDateProvider);
//     final amountRange = ref.watch(amountRangeProvider);

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Scaffold(
//         backgroundColor: context.colorScheme.surface,
//         body: SingleChildScrollView(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 4, top: 1),
//                 child: Center(
//                   child: SvgPicture.asset(
//                     'lib/assets/icons/Bar.svg',
//                     width: 60,
//                     height: 3.79,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),

//               // المشروع
//               FilterSection(
//                 title: 'المشروع',
//                 child: Wrap(
//                   spacing: 8,
//                   children: ProjectType.values.map((type) {
//                     return ChoiceChip(
//                       label: Text(type.name),
//                       selected: selectedProject == type,
//                       onSelected: (_) =>
//                           ref.read(selectedProjectProvider.notifier).state =
//                               type,
//                     );
//                   }).toList(),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // النوع
//               FilterSection(
//                 title: 'النوع',
//                 child: Column(
//                   children: TransactionKind.values.map((kind) {
//                     return Row(
//                       children: [
//                         Radio<TransactionKind>(
//                           value: kind,
//                           groupValue: selectedKind,
//                           onChanged: (value) =>
//                               ref.read(selectedKindProvider.notifier).state =
//                                   value!,
//                           activeColor: primaryColor,
//                         ),
//                         Text(
//                           kind == TransactionKind.invoice
//                               ? 'الفواتير'
//                               : 'عمليات التحويل',
//                         ),
//                       ],
//                     );
//                   }).toList(),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // التاريخ
//               FilterSection(
//                 title: 'التاريخ',
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () async {
//                       final picked = await showDatePicker(
//                         context: context,
//                         initialDate: selectedDate ?? DateTime.now(),
//                         firstDate: DateTime(2000),
//                         lastDate: DateTime(2100),
//                       );
//                       if (picked != null) {
//                         ref.read(selectedDateProvider.notifier).state = picked;
//                       }
//                     },
//                     child: Text(
//                       selectedDate != null
//                           ? DateFormat('yyyy/MM/dd').format(selectedDate)
//                           : 'تحديد التاريخ',
//                       style: TextStyle(color: primaryColor),
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 12),

//               // المبلغ
//               FilterSection(
//                 title: 'المبلغ',
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     RangeSlider(
//                       values: amountRange,
//                       min: 0,
//                       max: 150000,
//                       activeColor: primaryColor,
//                       // divisions: 15,
//                       labels: RangeLabels(
//                         '${amountRange.start.toInt()} د.ع',
//                         '${amountRange.end.toInt()} د.ع',
//                       ),
//                       onChanged: (range) =>
//                           ref.read(amountRangeProvider.notifier).state = range,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: const [Text('0 د.ع'), Text('150,000 د.ع')],
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 24),

//               // أزرار الأسفل
//               Row(
//                 children: [
//                   FloatingActionButton(
//                     onPressed: () {
//                       ref.invalidate(selectedProjectProvider);
//                       ref.invalidate(selectedKindProvider);
//                       ref.invalidate(selectedDateProvider);
//                       ref.invalidate(amountRangeProvider);
//                     },
//                     backgroundColor: Colors.grey[200],
//                     child: const Icon(Icons.delete, color: Colors.green),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         padding: const EdgeInsets.symmetric(vertical: 16),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(32),
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       child: const Text('تطبيق'),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
