import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:texa1_app/constants/paginate.dart';

PagingController<int, ItemType> usePagingController<ItemType>({
  PagingState<int, ItemType>? initialState,
  required FutureOr<List<ItemType>> Function(int pageKey) fetchPage,
}) {
  return use(
    _PagingControllerHook<ItemType>(
      initialState: initialState,
      fetchPage: (key) async {
        final res = await fetchPage(key);
        return res;
      },
    ),
  );
}

class _PagingControllerHook<ItemType>
    extends Hook<PagingController<int, ItemType>> {
  const _PagingControllerHook({this.initialState, required this.fetchPage});

  final PagingState<int, ItemType>? initialState;
  final FutureOr<List<ItemType>> Function(int pageKey) fetchPage;

  @override
  HookState<
    PagingController<int, ItemType>,
    Hook<PagingController<int, ItemType>>
  >
  createState() => _PagingControllerHookState<ItemType>();
}

class _PagingControllerHookState<ItemType>
    extends
        HookState<
          PagingController<int, ItemType>,
          _PagingControllerHook<ItemType>
        > {
  late final PagingController<int, ItemType> _controller;

  int _lastPageSize = 0;

  @override
  void initHook() {
    _controller = PagingController<int, ItemType>(
      value: hook.initialState,
      fetchPage: (pageKey) async {
        final result = await hook.fetchPage(pageKey);
        _lastPageSize = result.length;
        return result;
      },
      getNextPageKey: (state) {
        final currentPage = state.keys?.last ?? 1;

        if (state.keys?.last == null) {
          return 1;
        }

        if (_lastPageSize < pageSize) return null;

        return currentPage + 1;
      },
    );
  }

  @override
  PagingController<int, ItemType> build(BuildContext context) => _controller;

  @override
  void dispose() {
    _controller.dispose();
  }
}
