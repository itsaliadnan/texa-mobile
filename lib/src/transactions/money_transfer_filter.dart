// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:texa_app/core/extensions/context_extensions.dart';
// import 'package:texa_app/translation/translations.g.dart';

// class MoneyTransferFilterPage extends StatelessWidget {
//   const MoneyTransferFilterPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final t = context.t;
//     final colors = context.colorScheme;

//     return Scaffold(
//       appBar: AppBar(title: Text(t.transfer.filter_title)),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               t.home.account_balance,
//               style: Theme.of(context).textTheme.titleMedium,
//             ),
//             const SizedBox(height: 12),

//             Wrap(
//               spacing: 12,
//               children: [
//                 FilterChip(
//                   label: Text(t.transfer.type_transfer),
//                   selected: true,
//                   onSelected: (_) {},
//                   selectedColor: colors.primary.withValues(alpha: 0.2),
//                   backgroundColor: colors.surfaceContainerHighest,
//                   labelStyle: TextStyle(color: colors.onSurface),
//                 ),
//                 FilterChip(
//                   label: Text(t.transfer.type_deposit),
//                   selected: false,
//                   onSelected: (_) {},
//                   selectedColor: colors.primary.withValues(alpha: 0.2),
//                   backgroundColor: colors.surfaceContainerHighest,
//                   labelStyle: TextStyle(color: colors.onSurface),
//                 ),
//               ],
//             ),

//             const Spacer(),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () => context.pop(),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: colors.primary,
//                   foregroundColor: colors.onPrimary,
//                 ),
//                 child: Text(t.transfer.apply_filter),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
