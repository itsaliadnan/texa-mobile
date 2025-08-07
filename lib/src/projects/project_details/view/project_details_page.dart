import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:texa1_app/core/data/api/message_api.dart';
import 'package:texa1_app/models/message_model.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/extensions/enums_translation.dart';
import 'package:texa1_app/core/hooks/paging_controller_hook.dart';
import 'package:texa1_app/src/shared/widgets/balance_card.dart';
import 'package:texa1_app/src/shared/widgets/clipped_container.dart';
import 'package:texa1_app/src/shared/widgets/gradinet_container.dart';
import 'package:texa1_app/src/shared/widgets/message_details.dart';
import 'package:texa1_app/translation/translations.g.dart';

class ProjectDetailsPage extends HookConsumerWidget {
  const ProjectDetailsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureBalance = useState(true);
    final selectedMessageType = useState<MessageType>(MessageType.whatsapp);

    final pagingController = usePagingController(
      fetchPage: (pageKey) async {
        final x = await ref
            .read(messageApiProvider)
            .getMessages(page: pageKey, type: selectedMessageType.value.name);
        return x.data;
      },
    );
    return Scaffold(
      body: SafeArea(
        child: GradientContainer(
          child: Column(
            children: [
              ClippedContainer(
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: context.pop,
                            icon: SvgPicture.asset(
                              'lib/assets/icons/back.svg',
                              width: 24,
                              height: 24,
                            ),
                            color: context.colorScheme.onPrimary,
                          ),
                          SizedBox(
                            height: 49,
                            child: Column(
                              children: [
                                Text(
                                  context.t.projects.title,
                                  style: TextStyle(
                                    color: context.colorScheme.onPrimary,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Cairo',
                                  ),
                                ),
                                Text(
                                  context.t.projects.bexy,
                                  style: TextStyle(
                                    fontFamily: 'Cairo',

                                    color: context.colorScheme.onPrimary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -28),
                child: Column(
                  children: [
                    BalanceCard(
                      obscure: obscureBalance.value,
                      onToggle: () =>
                          obscureBalance.value = !obscureBalance.value,
                    ),

                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MessageTypeButton(
                            messageType: MessageType.whatsapp,
                            isSelected:
                                selectedMessageType.value ==
                                MessageType.whatsapp,

                            onTap: () {
                              selectedMessageType.value = MessageType.whatsapp;
                              pagingController.refresh();
                            },
                          ),

                          MessageTypeButton(
                            messageType: MessageType.outsideIraq,
                            isSelected:
                                selectedMessageType.value ==
                                MessageType.outsideIraq,
                            onTap: () {
                              selectedMessageType.value =
                                  MessageType.outsideIraq;
                              pagingController.refresh();
                            },
                          ),
                          MessageTypeButton(
                            messageType: MessageType.insideIraq,
                            isSelected:
                                selectedMessageType.value ==
                                MessageType.insideIraq,
                            onTap: () {
                              selectedMessageType.value =
                                  MessageType.insideIraq;
                              pagingController.refresh();
                            },
                          ),

                          ////
                          // ...MessageType.values.map(
                          //   (type) => MessageTypeButton(
                          //     messageType: type,
                          //     isSelected: selectedMessageType.value == type,
                          //     onTap: () => selectedMessageType.value = type,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: PagingListener(
                        controller: pagingController,
                        builder: (context, state, fetchNextPage) =>
                            PagedListView.separated(
                              separatorBuilder: (_, __) =>
                                  const SizedBox(height: 12),
                              padding: const EdgeInsets.all(16),
                              builderDelegate:
                                  PagedChildBuilderDelegate<MessageModel>(
                                    itemBuilder: (context, item, index) =>
                                        MessageItem(item: item),
                                    noMoreItemsIndicatorBuilder: (context) =>
                                        const SizedBox.shrink(),
                                  ),
                              state: state,
                              fetchNextPage: fetchNextPage,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageItem extends StatelessWidget {
  const MessageItem({super.key, required this.item});
  final MessageModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        tileColor: context.colorScheme.surfaceContainerLowest,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(item.receiverPhoneNumber),
        leading: Icon(
          Icons.message_outlined,
          color: context.colorScheme.primary,
        ),
        subtitle: Text(item.messageType),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(item.messageType),
            Text(
              item.status.translate(context),
              style: TextStyle(color: item.status.color(context)),
            ),
          ],
        ),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => MessageDetailsDialog(message: item),
          );
        },
      ),
    );
  }
}

class MessageTypeButton extends StatelessWidget {
  const MessageTypeButton({
    super.key,
    required this.messageType,
    this.isSelected = false,
    required this.onTap,
  });
  final MessageType messageType;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        spacing: 8,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isSelected
                  ? context.colorScheme.primary
                  : context.colorScheme.surfaceContainerLowest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: messageType.icon(
              isSelected
                  ? context.colorScheme.onPrimary
                  : context.colorScheme.onSurface,
            ),
          ),
          Text(
            messageType.translate(context),
            style: context.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text('145 message', style: context.textTheme.labelSmall),
        ],
      ),
    );
  }
}
