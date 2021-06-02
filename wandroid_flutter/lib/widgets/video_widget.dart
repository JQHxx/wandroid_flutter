import 'package:flutter/material.dart';
import 'package:fijkplayer/fijkplayer.dart';

// ignore: must_be_immutable
class VideoWidget extends StatefulWidget {
  final String _playUrl;
  final bool _loop;
  int _startSeconds = 0; //播放起始时间

  VideoWidget(
    this._playUrl,
    this._loop, {
    int startSeconds,
  }) {
    _startSeconds = startSeconds;
  }

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  final FijkPlayer _player = FijkPlayer();
  bool _hold = true;

  @override
  void initState() {
    super.initState();
    //视频路径
    _player.setDataSource(widget._playUrl, showCover: true);
    ////0表示使用av解码器，1表示使用媒体解码器
    //_player.setOption(FijkOption.playerCategory, "mediacodec", 1);

    //循环播放
    if (widget._loop) {
      _player.setLoop(0);
    }

    _player.prepareAsync();
  }

  @override
  void dispose() {
    _player.release();
    _player.removeListener(_ijkValueListener);
    super.dispose();
  }

  ///用于监听播放器状态
  void _ijkValueListener() async {
    if (_player.state == FijkState.prepared) {
      final int initSeconds = widget._startSeconds;
      if (initSeconds > 0) {
        _player.seekTo(initSeconds);
      }
      if (_hold) {
        setState(() {
          _hold = false;
        });
      }
      _player.start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return _hold
        ? PlayerHolder()
        : FijkView(
            fit: FijkFit.fitWidth,
            color: Colors.black,
            player: _player,
          );
  }
}

//视频缓冲过程中显示这个页面，可以加个loading效果
class PlayerHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
    );
  }
}
