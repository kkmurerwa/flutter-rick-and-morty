
import 'package:rickandmortytest/domain/model/response_info.dart';
import 'package:rickandmortytest/domain/model/response_result.dart';

class CharactersResponse {

  ResponseInfo info;
  ResponseResult results;

  CharactersResponse({
    required this.info,
    required this.results,
  });

  CharactersResponse.fromJson(Map<String, dynamic> jsonString):
      info = ResponseInfo.fromJson(jsonString['info']),
      results = ResponseResult.fromJsonList(jsonString['results']);
}