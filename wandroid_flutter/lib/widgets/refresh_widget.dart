import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

// 不能这样做
// ignore: must_be_immutable
class RefreshWidget extends StatelessWidget {
  bool enablePullDown = true;
  final bool enablePullUp;
  final RefreshController controller;
  final Widget child;
  // 下拉刷新回调
  Function onRefresh;
  // 上拉加载
  Function onLoading;

  RefreshWidget(
      {Key key,
      this.enablePullDown,
      this.enablePullUp,
      this.controller,
      this.onRefresh,
      this.onLoading,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: this.enablePullDown,
      enablePullUp: this.enablePullUp,
      onRefresh: this.onRefresh,
      onLoading: this.onLoading,
      header: ClassicHeader(
        releaseText: '松开刷新',
        completeText: '刷新完成',
        refreshingText: '加载中...',
        idleText: '下拉刷新',
      ),
      footer: ClassicFooter(
        idleText: '上拉刷新',
        canLoadingText: '松开加载更多',
        loadingText: '加载中...',
        noDataText: '没有更多了',
      ),
      controller: this.controller,
      child: this.child,
    );
  }
}
