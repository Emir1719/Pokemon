import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemon/constants/ui_helper.dart';
import 'package:pokemon/model/pokemon_model.dart';
import 'package:pokemon/widgets/poke_type_name.dart';
import 'package:pokemon/widgets/pokemon_info.dart';

class PokemonDetail extends StatelessWidget {
  const PokemonDetail({super.key, required this.pokemon});
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return isPortrait() ? buildPortraidUI(context) : buildLandscapeUI(context);
  }

  Scaffold buildPortraidUI(BuildContext context) {
    return Scaffold(
      backgroundColor: UI.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UI.defaultPadding(),
              child: IconButton(
                iconSize: 24,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
            PokemonNameAndType(pokemon: pokemon),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset("images/pokeball.png", height: 0.15.sh, fit: BoxFit.fitHeight),
                  ),
                  Positioned(
                    top: 0.12.sh,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: PokemonInformation(pokemon: pokemon),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(imageUrl: pokemon.img ?? "", height: 0.20.sh, fit: BoxFit.fitHeight),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold buildLandscapeUI(BuildContext context) {
    return Scaffold(
      backgroundColor: UI.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UI.defaultPadding(),
              child: IconButton(
                iconSize: 24,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PokemonNameAndType(pokemon: pokemon),
                          Hero(
                            tag: pokemon.id!,
                            child:
                                CachedNetworkImage(imageUrl: pokemon.img ?? "", height: 0.20.sw, fit: BoxFit.fitHeight),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: PokemonInformation(pokemon: pokemon),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
