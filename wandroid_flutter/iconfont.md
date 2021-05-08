icon 网站：https://www.iconfont.cn/home/index?spm=a313x.7781069.1998910419.2

- 1、将需要的图标添加到项目中， 然后选择 `Unicode` 下载至本地，将下载文件夹中的 `demo_index.html`和iconfont.ttf 放到项目 `assets/fonts`文件夹下

- 2、安装`iconfont_builder`
```
flutter pub global activate iconfont_builder
注：执行上一步成功后，需配置环境变量
export PATH="$PATH":"$HOME/.pub-cache/bin"
// 使用下面的语句直接生成
iconfont_builder --from ./assets/fonts --to ./lib/Iconfont.dart
```
