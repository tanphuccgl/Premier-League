part of 'bottom_navigation_bloc.dart';

class BottomNavigationState extends Equatable {
  final PageIndex pageIndex;

  const BottomNavigationState({this.pageIndex = PageIndex.news});

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
  home,
  tables,
  fixtures,
  news,
}

extension PageIndexExt on PageIndex {
  String lableOf() {
    switch (this) {
      case PageIndex.home:
        return "Home";
      case PageIndex.tables:
        return "Calendar";
      case PageIndex.fixtures:
        return "Student Card";
      case PageIndex.news:
        return "Profile";
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

      default:
        return const EmptyWidget();
    }
  }
}
