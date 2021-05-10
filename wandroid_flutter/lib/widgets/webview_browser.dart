import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewBrowser extends StatefulWidget {
  @override
  _WebViewBrowserState createState() {
    return _WebViewBrowserState();
  }
}

class _WebViewBrowserState extends State<WebViewBrowser> {
  /// 当前页的标题
  String _title = "";

  /// 获取当前标题
  void _getNavTitle() async {
    _title =
        _webViewController != null ? await _webViewController.getTitle() : "";
  }

  /// WebViewController对象
  WebViewController _webViewController;

  /// 页面加载结束
  bool _loadingEnded = true;

  /// 是否可以返回
  bool _canGoBack = false;

  /// 操作面板按钮
  IconButton _shareButton;

  @override
  void initState() {
    super.initState();

    _loadingEnded = true;
    _canGoBack = false;

    /// 根据加载状态显示分享按钮还是进度提示
    _shareButton = IconButton(
        icon: Icon(Icons.more_horiz_rounded),
        onPressed: () {
          _operationAction();
        });
  }

  @override
  Widget build(BuildContext context) {
    var _url = (ModalRoute.of(context).settings.arguments).toString() ??
        "https://www.baidu.com";

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.dark,
          automaticallyImplyLeading: true,
          toolbarHeight: kToolbarHeight,
          elevation: 1,
          title: _loadingEnded
              ? Text(_title, style: TextStyle(fontSize: 14), maxLines: 2)
              : CupertinoActivityIndicator(),
          centerTitle: false,
          leadingWidth: 54,

          /// 返回按键
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () async {
                if (_canGoBack == true) {
                  _webViewController.goBack();
                } else {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                }
              }),

          /// 分享按钮和关闭按钮
          actions: _canGoBack == true
              ? [
                  //关闭当前页面
                  IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      }),
                  // 弹出操作面板
                  _shareButton
                ]
              : [_shareButton]),
      body: WebView(
        initialUrl: _url,
        javascriptMode: JavascriptMode.unrestricted,
        gestureNavigationEnabled: true,
        debuggingEnabled: true,
        onWebViewCreated: (webViewController) async {
          _webViewController = webViewController;
          _loadingEnded = false;
          _canGoBack = await _webViewController.canGoBack();
          _getNavTitle();
          setState(() {});
        },
        onPageStarted: (currentUrl) async {
          _loadingEnded = false;
          _title = currentUrl;
          _canGoBack = await _webViewController.canGoBack();
          _getNavTitle();
          setState(() {});
        },
        onPageFinished: (currentUrl) async {
          _loadingEnded = true;
          _canGoBack = await _webViewController.canGoBack();
          _getNavTitle();
          setState(() {});
        },
        onWebResourceError: (error) {
          _title = error.description;
          setState(() {});
        },
        navigationDelegate: (delegate) {
          // if (delegate.url.startsWith('alipay:') ||
          //     delegate.url.startsWith('weixin:')) {
          //   return NavigationDecision.prevent;
          // }
          return NavigationDecision.navigate;
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// 在这里显示操作面板
  void _operationAction() {}
}
