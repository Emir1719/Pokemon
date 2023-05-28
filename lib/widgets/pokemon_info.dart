import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/constants/constants.dart';
import 'package:pokemon/constants/ui_helper.dart';
import '../model/pokemon_model.dart';

class PokemonInformation extends StatelessWidget {
  const PokemonInformation({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: isPortrait()
            ? BorderRadius.only(
                topLeft: Radius.circular(10.w),
                topRight: Radius.circular(10.w),
              )
            : BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _createRowInfo("Name", pokemon.name),
            _createRowInfo("Height", pokemon.height),
            _createRowInfo("Weight", pokemon.weight),
            _createRowInfo("Spawn Time", pokemon.spawnTime),
            _createRowInfo("Weaknesses", pokemon.weaknesses),
            _createRowInfo("Prev Evolution", pokemon.prevEvolution),
            _createRowInfo("Next Evolution", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _createRowInfo(String label, dynamic value) {
    var style = Constants.pokemonNameInfoStyle();
    var styleTitle = Constants.pokemonNameStyle();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(label, style: styleTitle)),
        if (value is List && value.isNotEmpty)
          Text(value.join(", "), style: style)
        else if (value == null)
          const Text("Not Avaiable")
        else
          Text(value.toString(), style: style),
      ],
    );
  }
}
