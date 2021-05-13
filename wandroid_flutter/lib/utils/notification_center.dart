typedef NotificationResult = Function(dynamic object);

class NotificationCenter {
  // 工厂模式
  factory NotificationCenter() => _getInstance();

  static NotificationCenter get instance => _getInstance();
  static NotificationCenter _instance;

  NotificationCenter._internal() {
    // 初始化
  }

  static NotificationCenter _getInstance() {
    if (_instance == null) {
      _instance = new NotificationCenter._internal();
    }
    return _instance;
  }

  //创建Map来记录名称
  Map<String, Map<String, List<NotificationResult>>> postNameMap = Map();

  //添加监听者方法
  addObserver(String postName, String tag, NotificationResult object) {
    ArgumentError.checkNotNull(object, 'object');
    try {
      Map<String, List<NotificationResult>> map = postNameMap[postName] ?? Map();
      List<NotificationResult> results = map[tag] ?? [];
      results.add(object);
      map[tag] = results;
      postNameMap[postName] = map;

    } catch (e) {

    }
  }

  //发送通知传值
  postNotification(String postName, dynamic object) {
    //检索Map是否含有postName
    try {
      if (postNameMap.containsKey(postName)) {
        Map<String, List<NotificationResult>> map = postNameMap[postName];
        if (map != null) {
          map.values.forEach((element) {
            List<NotificationResult> values = element;
            values.forEach((e) {
              e(object);
            });
          });
        }
      }
    } catch (e) {}
  }

  //移除通知
  removeNotification(String postName, String tag) {
    if (postNameMap.containsKey(postName)) {
      Map map = postNameMap[postName];
      if (map.containsKey(tag)) {
        map.remove(tag);
      }
    }
  }

  //移除通知
  removeAllNotification(String postName) {
    if (postNameMap.containsKey(postName)) {
      postNameMap.remove(postName);
    }
  }
}
