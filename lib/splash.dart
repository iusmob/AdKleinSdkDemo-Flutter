import 'package:ad_klein_flutter_sdk/ad_klein_ad.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  var _splashAd;

  @override
  Widget build(BuildContext context) {
    showSplashAd();
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash"),
      ),
      body: Center(),
    );
  }

  // 开屏
  // 显示开屏广告请保证当时app内没有其他地方显示开屏广告，否则会有冲突
  void showSplashAd() {
    if (_splashAd != null) {
      return;
    }
    _splashAd = ADKleinSplashAd(Constants.splashPosid(), "splash_placeholder");
    _splashAd.onClosed = () {
      print("开屏广告关闭了");
      // 在加载失败和关闭回调后关闭广告
      releaseSplashAd();
    };
    _splashAd.onFailed = () {
      print("开屏广告失败了");
      // 在加载失败和关闭回调后关闭广告
      releaseSplashAd();
    };
    _splashAd.onExposed = () {
      print("开屏广告曝光了");
    };
    _splashAd.onSucced = () {
      print("开屏广告成功了");
    };
    _splashAd.onClicked = () {
      print("开屏广告点击了");
    };
    _splashAd.loadAndShow();
  }

  void releaseSplashAd() {
    _splashAd?.release();
    _splashAd = null;
    Navigator.pop(context);
  }

  @override
  void dispose() {
    releaseSplashAd();
    super.dispose();
  }
}
