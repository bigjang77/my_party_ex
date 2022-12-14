import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggamf_front/views/common_components/custom_icons_icons.dart';
import 'package:ggamf_front/views/pages/join_party/join_party_list/join_party_list.dart';
import 'package:ggamf_front/views/pages/my_ggamf/my_ggamf_list_page/my_ggamf_list_page.dart';
import 'package:ggamf_front/views/pages/my_party/create_party/create_party_page.dart';
import 'package:ggamf_front/views/pages/my_party/my_recruitment_party_list/my_recruitment_party_list.dart';
import 'package:ggamf_front/views/pages/profile/my_profile/my_profile_page.dart';
import 'package:ggamf_front/views/pages/recommend_ggamef/recommend_ggamf_list/recommend_ggamf_list.dart';

const List<Widget> commonPages = [
  JoinPartyList(),
  MyRecruitmentPartyList(),
  MyGgamfListPage(),
  RecommendGgamfList(),
  MyProfilePage(),
];

class AllPages extends StatefulWidget {
  const AllPages({Key? key}) : super(key: key);

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> with AutomaticKeepAliveClientMixin {
  int _selectedIndex = 3;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  void changeState(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: commonPages,
      ),
      bottomNavigationBar: _buildFlashyTabBar(),
    );
  }

  FlashyTabBar _buildFlashyTabBar() {
    return FlashyTabBar(
      animationDuration: Duration(milliseconds: 200),
      items: <FlashyTabBarItem>[
        FlashyTabBarItem(
          icon: Icon(CustomIcons.joinparty, size: 25),
          title: Text('파티 참가'),
        ),
        FlashyTabBarItem(
          icon: Icon(CustomIcons.myparty),
          title: Text('나의 파티'),
        ),
        FlashyTabBarItem(
          icon: Icon(CustomIcons.mygamf),
          title: Text('내 껨프'),
        ),
        FlashyTabBarItem(
          icon: Icon(CustomIcons.recomgamf),
          title: Text('추천 껨프'),
        ),
        FlashyTabBarItem(
          icon: Icon(CustomIcons.myprofile),
          title: Text('내 프로필'),
        ),
      ],
      animationCurve: Curves.linear,
      selectedIndex: _selectedIndex,
      showElevation: true,
      onItemSelected: (value) {
        changeState(value);
      },
    );
  }
}
