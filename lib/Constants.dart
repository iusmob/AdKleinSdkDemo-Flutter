import 'dart:io';class Constants {  // 单例  static Constants instance = Constants();  static String appKey() {    if (Platform.isIOS) {      return "194254620";    } else {      return "1956136";    }  }  static String bannerPosid() {    if (Platform.isIOS) {      return "106467382054";    } else {      return "159333597571";    }  }  static String fullScreenPosid() {    if (Platform.isIOS) {      return "159261486405";    } else {      return "180137065971";    }  }  static String interPosid() {    if (Platform.isIOS) {      return "123993067264";    } else {      return "131659759523";    }  }  static String nativePosid() {    if (Platform.isIOS) {      return "104839529683";    } else {      return "174765521629";    }  }  static String splashPosid() {    if (Platform.isIOS) {      return "141846962557";    } else {      return "176350483261";    }  }  static String rewardPosid() {    if (Platform.isIOS) {      return "123505912353";    } else {      return "174668882862";    }  }}