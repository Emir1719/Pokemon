import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';
import '../model/pokemon_model.dart';

class PokemonNameAndType extends StatelessWidget {
  const PokemonNameAndType({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(pokemon.name!, style: Constants.pokemonNameInfoStyle()),
              Text("#${pokemon.num}", style: Constants.pokemonNameInfoStyle()),
            ],
          ),
          Chip(label: Text(pokemon.type!.join(" , "), style: Constants.pokemonTypeStyle())),
        ],
      ),
    );
  }
}
