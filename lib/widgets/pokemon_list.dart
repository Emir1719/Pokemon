import 'package:flutter/material.dart';
import 'package:pokemon/constants/ui_helper.dart';
import 'package:pokemon/widgets/pokemon_item.dart';
import '../model/pokemon_model.dart';
import '../service/pokedex_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonList;

  @override
  void initState() {
    super.initState();
    _pokemonList = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> list = snapshot.data!;
          return GridView.builder(
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isPortrait() ? 2 : 4,
            ),
            itemBuilder: (context, index) => PokemonListItem(pokemon: list[index]),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("Hata Oluştu! Detay: ${snapshot.error}"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
