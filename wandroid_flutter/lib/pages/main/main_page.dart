import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wandroid_flutter/Iconfont.dart';
import 'package:wandroid_flutter/pages/home/home_page.dart';
import 'package:wandroid_flutter/pages/navigation/navigation_page.dart';
import 'package:wandroid_flutter/pages/project/project_page.dart';
import 'package:wandroid_flutter/pages/public/public_page.dart';
import 'package:wandroid_flutter/pages/system/system_page.dart';
import 'package:wandroid_flutter/theme/app_theme.dart';
import 'package:wandroid_flutter/widgets/alive_keeper.dart';

import 'main_controller.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _pageList = [
    Aliveer(child: HomePage()),
    Aliveer(child: ProjectPage()),
    Aliveer(child: SystemPage()),
    Aliveer(child: NavigationPage()),
    Aliveer(child: PublicPage())
  ];
  List<String> _appBarTitles = ['首页', '项目', '体系', '导航', '公众号'];
  List<BottomNavigationBarItem> _list;
  PageController _pageController = PageController();

  List<BottomNavigationBarItem> _buildBottomNavigationBarItem() {
    if (_list == null) {
      var _tabImages = [
        [Icon(Iconfont.home), Icon(Iconfont.home)],
        [Icon(Iconfont.project), Icon(Iconfont.project)],
        [Icon(Iconfont.tixi), Icon(Iconfont.tixi)],
        [Icon(Iconfont.daohang), Icon(Iconfont.daohang)],
        [Icon(Iconfont.gongzhonghao), Icon(Iconfont.gongzhonghao)],
      ];
      _list = List.generate(_tabImages.length, (i) {
        return BottomNavigationBarItem(
          icon: _tabImages[i][0],
          activeIcon: _tabImages[i][1],
          label: _appBarTitles[i],
        );
      });
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        builder: (controller) => Scaffold(
              bottomNavigationBar: Obx(() => BottomNavigationBar(
                    items: _buildBottomNavigationBarItem(),
                    currentIndex: controller.state.index.value,
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: kPrimaryColor,
                    unselectedItemColor: kPrimaryLightColor,
                    onTap: (index) => {
                      controller.changeIndex(index),
                      _pageController.jumpToPage(index)
                    },
                  )),
              body: PageView(
                controller: _pageController,
                children: _pageList,
                onPageChanged: onPageChanged,
                physics: NeverScrollableScrollPhysics(), // 禁止滑动
              ),
            ));
  }

  void onPageChanged(int index) {
    print(index);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
}
