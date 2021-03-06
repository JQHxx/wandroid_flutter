class LoginBean {
/*
{
  "admin": false,
  "chapterTops": [
    null
  ],
  "coinCount": 0,
  "collectIds": [
    null
  ],
  "email": "",
  "icon": "",
  "id": 82504,
  "nickname": "513960124@qq.com",
  "password": "",
  "publicName": "513960124@qq.com",
  "token": "",
  "type": 0,
  "username": "513960124@qq.com"
} 
*/

  bool admin;
  List<String> chapterTops;
  int coinCount;
  List<String> collectIds;
  String email;
  String icon;
  int id;
  String nickname;
  String password;
  String publicName;
  String token;
  int type;
  String username;

  LoginBean({
    this.admin,
    this.chapterTops,
    this.coinCount,
    this.collectIds,
    this.email,
    this.icon,
    this.id,
    this.nickname,
    this.password,
    this.publicName,
    this.token,
    this.type,
    this.username,
  });
  LoginBean.fromJson(Map<String, dynamic> json) {
    admin = json["admin"];
    coinCount = json["coinCount"]?.toInt();
    email = json["email"]?.toString();
    icon = json["icon"]?.toString();
    id = json["id"]?.toInt();
    nickname = json["nickname"]?.toString();
    password = json["password"]?.toString();
    publicName = json["publicName"]?.toString();
    token = json["token"]?.toString();
    type = json["type"]?.toInt();
    username = json["username"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["admin"] = admin;
    data["coinCount"] = coinCount;
    data["email"] = email;
    data["icon"] = icon;
    data["id"] = id;
    data["nickname"] = nickname;
    data["password"] = password;
    data["publicName"] = publicName;
    data["token"] = token;
    data["type"] = type;
    data["username"] = username;
    return data;
  }
}
