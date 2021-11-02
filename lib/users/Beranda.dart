import 'package:flutter/material.dart';
import 'package:mittora/constant.dart';
import 'package:mittora/users/depanpage.dart';
import 'package:mittora/users/kategoripage.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon:
                  Icon(Icons.search, color: MittoraPalette.menuBluebird),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: Colors.white),
              ),
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        backgroundColor: MittoraPalette.menuBluebird,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: MittoraPalette.menuBluebird,
          labelColor: MittoraPalette.menuBluebird,
          unselectedLabelColor: Colors.black,
          labelPadding: EdgeInsets.all(0),
          tabs: [Tab(text: 'Beranda'), Tab(text: 'Kategori')],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          DepanPage(),
          KategoriPage(),
        ],
      ),
    );
  }
}
