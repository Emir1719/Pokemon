import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/constants/constants.dart';
import 'package:pokemon/constants/ui_helper.dart';
import 'package:pokemon/model/pokemon_model.dart';
import 'package:pokemon/screens/detail.dart';
import 'package:pokemon/widgets/pokemon_image.dart';

class PokemonListItem extends StatelessWidget {
  const PokemonListItem({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, CupertinoPageRoute(builder: (context) => PokemonDetail(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        //shadowColor: Colors.white,
        color: UI.getColorFromType(pokemon.type![0].toString()),
        child: Padding(
          padding: UI.defaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name!, style: Constants.pokemonNameStyle()),
              Chip(label: Text(pokemon.type![0], style: Constants.pokemonTypeStyle())),
              Expanded(child: PokemonImage(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
