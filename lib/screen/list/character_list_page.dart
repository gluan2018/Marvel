import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';
import 'package:marvel/screen/details/character_details_page.dart';
import 'package:marvel/screen/viewmodel/character_viewmodel.dart';
import 'package:marvel/view/card/card_character.dart';
import 'package:marvel/view/message_error.dart';

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
      _viewModel.all(pageController: _pageController);
    });
    _viewModel.all(pageController: _pageController);
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
      appBar: AppBar(
        title: const Text('Marvel'),
      ),
      body: SafeArea(
        child: PagedListView<int, Character>(
          pagingController: _pageController,
          builderDelegate: PagedChildBuilderDelegate<Character>(
            itemBuilder: (_, item, index) => CardCharacter(
              character: item,
              callback: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CharacterDetailsPage(
                    character: item,
                    characterInterface: widget.characterInterface,
                  ),
                ),
              ),
            ),
            firstPageProgressIndicatorBuilder: (context) => const Center(child: CircularProgressIndicator()),
            newPageProgressIndicatorBuilder: (context) => const Center(child: CircularProgressIndicator()),
            firstPageErrorIndicatorBuilder: (context) => MessageError(
              message: 'Não foi possível carregar os personagens',
              callback: () {
                _pageController.refresh();
                _viewModel.all(pageController: _pageController, isReload: true);
              },
            ),
            newPageErrorIndicatorBuilder: (context) => MessageError(
              message: 'Não foi possível carregar mais personagens',
              callback: () {
                _pageController.refresh();
                _viewModel.all(pageController: _pageController, isReload: true);
              },
            ),
          ),
        ),
      ),
    );
  }
}
