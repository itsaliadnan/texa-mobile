import 'package:flutter/material.dart';

enum NotificationType { transferSuccess, newProject, balanceUsage }

class NotificationModel {
  final NotificationType type;
  final IconData icon;
  final String date;

  const NotificationModel({
    required this.type,
    required this.icon,
    required this.date,
  });
}
