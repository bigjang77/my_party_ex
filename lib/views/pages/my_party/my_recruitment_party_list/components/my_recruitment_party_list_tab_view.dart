import 'package:flutter/material.dart';

class MyRecruitmentPartyListTabView extends StatefulWidget {
  const MyRecruitmentPartyListTabView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  State<MyRecruitmentPartyListTabView> createState() => _MyRecruitmentPartyListTabViewState();
}

class _MyRecruitmentPartyListTabViewState extends State<MyRecruitmentPartyListTabView>
    with SingleTickerProviderStateMixin<MyRecruitmentPartyListTabView> {
  late final TabController _innerTabController;

  final List<String> textIndex = [
    '나의 파티',
    '참가중인 방',
  ];

  @override
  void initState() {
    _innerTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        children: ListView.separated(
      itemCount: 10,
      itemBuilder: (context,index),{
        return ListTile
        },
      separatorBuilder: (context, index),{}
    ));
  }
}
