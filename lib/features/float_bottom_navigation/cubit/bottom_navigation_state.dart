part of 'bottom_navigation_bloc.dart';

class BottomNavigationState extends Equatable {
  final PageIndex pageIndex;

  const BottomNavigationState({this.pageIndex = PageIndex.home});

  @override
  List<Object> get props => [
        pageIndex,
      ];

  BottomNavigationState copyWith({
    PageIndex? pageIndex,
  }) {
    return BottomNavigationState(
      pageIndex: pageIndex ?? this.pageIndex,
    );
  }
}

enum PageIndex {
  fixtures,
  tables,
  home,

  seasons,
  news;
}

extension PageIndexExt on PageIndex {
  String lableOf() {
    switch (this) {
      case PageIndex.home:
        return "Home";
      case PageIndex.tables:
        return "Tables";
      case PageIndex.fixtures:
        return "Fixtures";
      case PageIndex.news:
        return "News";
      case PageIndex.seasons:
        return "Seasons";
      default:
        return '';
    }
  }

  Widget get page {
    switch (this) {
      case PageIndex.home:
        return const HomeWrapperPage();
      case PageIndex.tables:
        return const TablesWrapperPage();
      case PageIndex.fixtures:
        return const FixturesWrapperPage();
      case PageIndex.news:
        return const NewsWrapperPage();
      case PageIndex.seasons:
        return const SeasonsWrapperPage();

      default:
        return const EmptyWidget();
    }
  }
}
