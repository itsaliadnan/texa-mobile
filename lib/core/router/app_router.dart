import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/models/transactions_model.dart';
import 'package:texa1_app/src/auth/controller/auth_controller.dart';
import 'package:texa1_app/src/auth/view/login_page.dart';
import 'package:texa1_app/src/home/view/home_page.dart';
import 'package:texa1_app/src/home/view/widgets/transfer_page.dart';
import 'package:texa1_app/src/nav_bar/nav_bar.dart';
import 'package:texa1_app/src/notifications/view/notifications_page.dart';
import 'package:texa1_app/src/projects/project_details/view/project_details_page.dart';
import 'package:texa1_app/src/filter/filter/filter_widgets.dart';

import 'package:texa1_app/src/transactions/invoice_page.dart';
import 'package:texa1_app/src/transactions/money_transfer.dart';
import 'package:texa1_app/src/transactions/transaction_details.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      return ref
          .watch(authControllerProvider)
          .maybeWhen(
            data: (data) {
              if (data == null) {
                return '/login';
              }

              final loggingIn = state.uri.path == '/login';

              if (loggingIn) {
                return '/home';
              }

              return null;
            },
            error: (error, stackTrace) {
              return '/login';
            },
            orElse: () {
              if (state.uri.path != '/login') {
                return '/login';
              }
              return null;
            },
          );
    },

    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return NavBar();
        },
        routes: [
          GoRoute(path: '/home', builder: (context, state) => const HomePage()),
        ],
      ),

      // Pages without BottomNavigationBar
      GoRoute(
        path: '/money-transfer/details',
        builder: (context, state) {
          final transaction = state.extra as TransactionsModel;
          return TransactionDetailsPage(transaction: transaction);
        },
      ),
      GoRoute(
        path: '/notifications',
        builder: (context, state) => const NotificationsPage(),
      ),
      GoRoute(
        path: '/money-transfer',
        builder: (context, state) => const MoneyTransferPage(),
      ),
      GoRoute(
        path: '/invoice',
        builder: (context, state) {
          final transaction = state.extra as TransactionsModel;
          return InvoicePage(transaction: transaction);
        },
      ),
      GoRoute(
        path: '/filter',
        builder: (context, state) => const FilterWidget(),
      ),
      GoRoute(
        path: '/projects/details',
        builder: (context, state) => const ProjectDetailsPage(),
      ),
      GoRoute(
        path: '/transfer-page',
        builder: (context, state) => const TransferPage(),
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    ],
  );
});
