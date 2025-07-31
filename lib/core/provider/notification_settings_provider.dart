import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationSettings {
  final bool all;
  final bool transfers;
  final bool invoices;

  NotificationSettings({
    required this.all,
    required this.transfers,
    required this.invoices,
  });

  NotificationSettings copyWith({bool? all, bool? transfers, bool? invoices}) {
    return NotificationSettings(
      all: all ?? this.all,
      transfers: transfers ?? this.transfers,
      invoices: invoices ?? this.invoices,
    );
  }

  static NotificationSettings initial() =>
      NotificationSettings(all: true, transfers: true, invoices: true);
}

class NotificationSettingsNotifier extends StateNotifier<NotificationSettings> {
  NotificationSettingsNotifier() : super(NotificationSettings.initial());

  void toggleAll(bool value) {
    state = state.copyWith(all: value);
  }

  void toggleTransfers(bool value) {
    state = state.copyWith(transfers: value);
  }

  void toggleInvoices(bool value) {
    state = state.copyWith(invoices: value);
  }
}

final notificationSettingsProvider =
    StateNotifierProvider<NotificationSettingsNotifier, NotificationSettings>(
      (ref) => NotificationSettingsNotifier(),
    );
