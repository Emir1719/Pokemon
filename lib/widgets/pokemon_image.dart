import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/constants/images.dart';
import 'package:pokemon/model/pokemon_model.dart';

import '../constants/constants.dart';

class PokemonImage extends StatelessWidget {
  const PokemonImage({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(alignment: Alignment.bottomRight, child: ProjectImages.pokeball),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? 'image/pokeball.png',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              width: Constants.calculatePokeballSize(),
              height: Constants.calculatePokeballSize(),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
