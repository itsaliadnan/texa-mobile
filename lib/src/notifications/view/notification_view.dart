import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:texa1_app/src/notifications/model/notification_model.dart';
import 'widgets/notification_item.dart';

class NotificationsView extends StatelessWidget {
  final PagingController<int, NotificationModel> pagingController;

  const NotificationsView({super.key, required this.pagingController});

  @override
  Widget build(BuildContext context) {
    return PagingListener(
      controller: pagingController,
      builder: (context, state, fetchNextPage) => PagedListView.separated(
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        padding: const EdgeInsets.all(16),
        builderDelegate: PagedChildBuilderDelegate<NotificationModel>(
          itemBuilder: (context, item, index) => NotificationItem(item: item),
          noMoreItemsIndicatorBuilder: (context) => const SizedBox.shrink(),
        ),
        state: state,
        fetchNextPage: fetchNextPage,
      ),
    );
  }
}
