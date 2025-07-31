import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/data/api/notification_client.dart';
import 'package:texa1_app/src/notifications/model/notification_model.dart';

final notificationController =
    FutureProvider.family<List<NotificationModel>, int>(
      (ref, pageKey) => fetchNotificationsPage(pageKey),
    );
