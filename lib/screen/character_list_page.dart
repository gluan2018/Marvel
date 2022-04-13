import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/screen/character_viewmodel.dart';
import 'package:marvel/view/card_character.dart';

class CharacterList extends StatefulWidget {
  final CharacterInterface characterInterface;

  const CharacterList({
    Key? key,
    required this.characterInterface,
  }) : super(key: key);

  @override
  State<CharacterList> createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  final PagingController<int, Character> _pageController = PagingController(firstPageKey: 0);
  late final CharacterViewModel _viewModel = CharacterViewModel(characterInterface: widget.characterInterface);

  @override
  void initState() {
    _pageController.addPageRequestListener((pageKey) {
      _viewModel.all(_pageController);
    });
    _viewModel.all(_pageController);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PagedListView<int, Character>(
          pagingController: _pageController,
          builderDelegate: PagedChildBuilderDelegate<Character>(
            itemBuilder: (context, item, index) {
              return CardCharacter(
                character: item,
                callback: () {},
              );
            },
            firstPageProgressIndicatorBuilder: (context) {
              return const CircularProgressIndicator();
            },
            newPageProgressIndicatorBuilder: (context) {
              return const CircularProgressIndicator();
            },
            firstPageErrorIndicatorBuilder: (context) {
              return Text('error');
            },
            newPageErrorIndicatorBuilder: (context) {
              return Text('error');
            },
          ),
        ),
      ),
    );
  }
}
