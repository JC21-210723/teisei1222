import 'package:flutter/material.dart';

import '../DB/Database.dart';

class AllAnotherData{

  static List<bool> boolList3 = [];
  static List<String> valueList3= [];
  static List<String> valueCheck3 = [];
  static String hAnother = "";


  void addMethod3(String nam) {
    valueList3.add(nam);
    boolList3.add(false);
    debugPrint(valueList3.toString());
  }


  List<String> getValue3() {
    return valueList3;
  }

  List<bool> getBool3() {
    return boolList3;
  }

  void HanteiAnother(){
    valueCheck3.clear();
    for(int x = 0;x < boolList3.length; x++){
      if(boolList3[x] == true){
        valueCheck3.add(valueList3[x]);
      }
    }
    debugPrint(valueCheck3.toString());
  }

  List<String> getValueCheck3(){
    return valueCheck3;
  }

  String getValueCheckString3(){
    hAnother = "";
    for(int x = 0;x < valueCheck3.length; x++){
      if(x == 0 || x == valueCheck3.length){
        hAnother = '$hAnother${valueCheck3[x]}';
      }else{
        hAnother = '$hAnother\n${valueCheck3[x]}';
      }
    }
    return hAnother;
  }

  void AllResetAnother(){
    debugPrint(getValue3().length.toString());
  /*うまくいってない
    if(boolList3.isNotEmpty){
      boolList3 = [];
      for(int n = 1 ; n <= boolList3.length ; n++ ){
        boolList3.add(false);
      }
    }

   */
    valueCheck3 = [];
    hAnother = "";
  }
  /*
  String getValueString3() {
    debugPrint(valueList3.length.toString());
    return valueList3.toString();
  }

   */

  /*
//追加成分のinsert処理
  void insertAllResetAnother() async {
    debugPrint('insertAllResetAnotherに来ました');
    final dbProvider = DBProvider.instance;
    CheckValue.clear();//CheckValueのクリア
    CheckValue = getValueCheck3();
    for (int x = 0; x < CheckValue.length; x++) {
      Gimu.forEach((key, value) { //foodidのみを出力
        if (value == CheckValue[x]) { //もしGimuリストのaddidとCheckValueのfoodNameが一致したら
          foodid.add(key as String); // foodidリストにGimuリストのfoodidを格納
        }
      });
    }
    final int userid = await dbProvider.selectUserId(AllUserData.sUserName);// ユーザーIDを非同期で取得
    for (int x = 0; x < foodid.length; x++) {
      final result2 = await dbProvider.insertfood(userid, foodid[x]);// ここでDBにuseridとCheckKeyを渡す（insert）
      debugPrint('insert処理した内容:$result2');
    }
    debugPrint(CheckValue.toString());
  }

   */
}

