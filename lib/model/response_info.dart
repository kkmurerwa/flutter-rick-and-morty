class ResponseInfo {

  int count;
  int pages;
  String? next;
  String? prev;

  ResponseInfo({
    required this.count,
    required this.pages,
    this.next,
    this.prev,
  });

  ResponseInfo.fromJson(Map<String, dynamic> jsonString):
      count = jsonString['count'],
      pages = jsonString['pages'],
      next = jsonString['next'],
      prev = jsonString['prev'];

}