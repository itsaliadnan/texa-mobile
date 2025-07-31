import 'package:flutter/material.dart';
import 'package:texa1_app/core/hooks/paging_controller_hook.dart';
import 'package:texa1_app/src/notifications/controller/notification_controller.dart';
import 'package:texa1_app/src/notifications/model/notification_model.dart';
import 'package:texa1_app/src/shared/widgets/gradinet_container.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/src/notifications/view/notification_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationsPage extends HookConsumerWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pagingController = usePagingController<NotificationModel>(
      fetchPage: (pageNumber) =>
          ref.read(notificationController(pageNumber).future),
    );
    return Consumer(
      builder: (context, vm, _) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.t.notifications.title),
            backgroundColor: context.colorScheme.primary,
          ),
          body: GradientContainer(
            child: NotificationsView(pagingController: pagingController),
          ),
        );
      },
    );
  }
}
