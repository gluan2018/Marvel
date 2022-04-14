import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:marvel/api/model/character.dart';
import 'package:marvel/api/service/character_interface.dart';

class CharacterViewModel {
  CharacterViewModel({
    required this.characterInterface,
  });

  final CharacterInterface characterInterface;

  int _currentPage = 1;

  void all({
    required PagingController<int, Character> pageController,
    bool isReload = false,
  }) async {
    final response = await characterInterface.all(50, _currentPage).catchError((error) {
      pageController.error = Error();
    });

    if (response.isSuccessful) {
      if (!isReload) {
        _currentPage++;
      }
      final list = response.data.castList<Character>();

      final canLoadMore = list.length == 50;
      if (canLoadMore) {
        pageController.appendPage(list, _currentPage);
      } else {
        pageController.appendLastPage(list);
      }
    } else {
      pageController.error = response.response;
    }
  }
}
