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
