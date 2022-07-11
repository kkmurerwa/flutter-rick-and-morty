import 'package:rickandmortytest/model/character.dart';

class ResponseResult {

  List<Character> characters;

  ResponseResult({
    required this.characters,
  });

  ResponseResult.fromJsonList(List<dynamic> jsonList):
      characters = jsonList.map((element) => Character.fromJson(element)).toList();

}