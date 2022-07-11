import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:rickandmortytest/containers/character_container.dart';
import 'package:rickandmortytest/model/characters_response.dart';
import 'package:rickandmortytest/network/urls.dart';

import '../model/character.dart';
import '../network/api_client.dart';
import '../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var characters = <Character>[];

  @override
  void initState() {

    fetchCharacters();

    super.initState();
  }

  void fetchCharacters() async {
    var charactersUri = Uri.parse(Urls.characters);

    final response = await ApiClient().returnConnection().get(charactersUri);

    var charactersResponse = CharactersResponse.fromJson(jsonDecode(response.body));

    setState(() {
      characters = charactersResponse.results.characters;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, index) {
          var character = characters[index];

          var characterContainer = CharacterContainer(character: character);

          return characterContainer.characterCard();
        },
      )
    );
  }
}
