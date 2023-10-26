part of 'bottom_navigation_bloc.dart';

class BottomNavigationState extends Equatable {
  final PageIndex pageIndex;

  const BottomNavigationState({this.pageIndex = PageIndex.fixtures});

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
  profile,
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
      case PageIndex.profile:
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
      case PageIndex.profile:
        return const ProfileWrapperPage();

      default:
        return const EmptyWidget();
    }
  }
}
