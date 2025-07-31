import 'package:flutter/material.dart';
import 'package:texa1_app/constants/paginate.dart';
import 'package:texa1_app/src/notifications/model/notification_model.dart';

Future<List<NotificationModel>> fetchNotificationsPage(int pageKey) async {
  await Future.delayed(const Duration(milliseconds: 500));
  final int startIndex = pageKey * pageSize;
  final int endIndex = startIndex + pageSize;

  if (startIndex >= _allNotifications.length) {
    return [];
  }

  final res = _allNotifications.sublist(
    startIndex,
    endIndex > _allNotifications.length ? _allNotifications.length : endIndex,
  );
  return res;
}

final List<NotificationModel> _allNotifications = List.generate(100, (index) {
  if (index % 3 == 0) {
    return const NotificationModel(
      type: NotificationType.transferSuccess,
      icon: Icons.info_outline,
      date: '11/16/2024 13:37',
    );
  } else if (index % 3 == 1) {
    return const NotificationModel(
      type: NotificationType.newProject,
      icon: Icons.work_outline,
      date: '11/15/2024 09:21',
    );
  } else {
    return const NotificationModel(
      type: NotificationType.balanceUsage,
      icon: Icons.attach_money,
      date: '11/14/2024 17:03',
    );
  }
});
