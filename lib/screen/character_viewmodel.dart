import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';

class CharacterViewModel {
  CharacterViewModel({
    required this.characterInterface,
  });

  final CharacterInterface characterInterface;

  int _currentPage = 0;

  void all(PagingController<int, Character> pageController) async {
    final response = await characterInterface.all(50, _currentPage).catchError((error) {
      pageController.error = error;
    });
    if (response.isSuccessful) {
      _currentPage++;
      final canLoadMore = response.data.length == 50;
      if (canLoadMore) {
        pageController.appendPage(response.data, _currentPage);
      } else {
        pageController.appendLastPage(response.data);
      }
    } else {
      pageController.error = response.response;
    }
  }

}
