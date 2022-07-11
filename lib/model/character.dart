import 'package:flutter/material.dart';

class Character {

  int id;
  String name;
  String status;
  String species;
  String type;
  String gender;
  String image;
  String url;
  String created;

  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.image,
    required this.url,
    required this.created
  });

  Character.fromJson(Map<String, dynamic> jsonString):
        id = jsonString['id'],
        name = jsonString['name'],
        status = jsonString['status'],
        species = jsonString['species'],
        type = jsonString['type'],
        gender = jsonString['gender'],
        image = jsonString['image'],
        url = jsonString['url'],
        created = jsonString['created'];

}