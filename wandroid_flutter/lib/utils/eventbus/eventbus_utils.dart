import 'package:event_bus/event_bus.dart';

///event bus
class EventBusUtils {
  static EventBus _eventBus;

  static EventBus getInstance() {
    if (_eventBus == null) {
      _eventBus = EventBus();
    }
    return _eventBus;
  }
}

/*

// 事件
class TestEvent{
  String msg;
  int state;

  TestEvent(this.msg,this.state);
}

// 监听
EventBusUtils.getInstance().on<TestEvent>().listen((event) {
  print("event bus msg is ="+event.msg +"   state info is  = "+event.state.toString());
});

// 销毁
EventBusUtils.getInstance().destroy();

// 发送事件
EventBusUtils.getInstance().fire(TestEvent("你是猪么", 200));

*/
