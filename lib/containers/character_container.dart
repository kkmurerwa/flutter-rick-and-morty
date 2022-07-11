import 'package:flutter/material.dart';
import '../model/character.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class CharacterContainer {

  Character character;

  CharacterContainer({
    required this.character,
  });

  Widget characterCard() {
    return Container(
      margin: const EdgeInsets.only(
          left: Constants.cardHorizontalPadding,
          right: Constants.cardHorizontalPadding,
          top: Constants.cardVerticalPadding
      ),
      child: Card(
        shape: Constants.cardBorderRadius,
        elevation: Constants.cardElevation,
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              CircleAvatar(
                radius: Constants.avatarRadius,
                backgroundColor: colorGrayLight,
                backgroundImage: NetworkImage(character.image),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      character.name,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: Constants.sizedBoxHeight1),
                    Text(
                      character.species,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18
                      ),
                    ),
                    const SizedBox(height: Constants.sizedBoxHeight1),
                    Text(
                      character.gender,
                      style: TextStyle(
                          fontSize: 17,
                          color: colorGrayDarker
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}