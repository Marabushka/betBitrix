import 'package:bet_bitrix/utils/colors_repository.dart';
import 'package:bet_bitrix/utils/content_view.dart';
import 'package:bet_bitrix/widgets/blog_mobile/blog_preview_mobile_screen.dart';
import 'package:bet_bitrix/widgets/blog_desctop/blog_prewiew_widget.dart';
import 'package:bet_bitrix/widgets/contacts_mobile/contact_mobile_screen.dart';
import 'package:bet_bitrix/widgets/contacts_desctop/contacts_screen.dart';
import 'package:bet_bitrix/widgets/custom_tab_bar.dart';
import 'package:bet_bitrix/widgets/custom_tab_widget.dart';
import 'package:bet_bitrix/widgets/download_mobile/download_mobile_screen.dart';
import 'package:bet_bitrix/widgets/download_desctop/download_screen_widget.dart';
import 'package:bet_bitrix/widgets/login_desctop/login_dialog_desctop.dart';
import 'package:bet_bitrix/widgets/login_mobile/login_mobile.dart';
import 'package:bet_bitrix/widgets/main_mobile/main_mobile_widget.dart';
import 'package:bet_bitrix/widgets/main_desctop/main_screen_widget.dart';
import 'package:bet_bitrix/widgets/profile_desctop/profile_desctop.dart';
import 'package:bet_bitrix/widgets/profile_desctop/profile_payment.dart';
import 'package:bet_bitrix/widgets/tarifs_mobile/tarifs_mobile_screen.dart';
import 'package:bet_bitrix/widgets/tafis_desctop/tarifs_screem.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late double screenWidth;
  late double screenHeight;
  var currentPage = DrawerSections.main;

  late double sidePadding;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(
        title: 'Главная',
      ),
      content: ProfilePaymentWidget(),
    ),
    ContentView(tab: CustomTab(title: 'Тарифы'), content: TarifsScreenWidget()),
    ContentView(
        tab: CustomTab(title: 'Загрузка'), content: DownloadScreenWidget()),
    ContentView(tab: CustomTab(title: 'Блог'), content: BlogPreviewScreen()),
    ContentView(tab: CustomTab(title: 'Контакты'), content: ContactsScreen()),
  ];
  late TabController tabController;
  late ScrollController itemScrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
    itemScrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.main) {
      container = MainMobileScreen();
    } else if (currentPage == DrawerSections.contacts) {
      container = ContactMobileWidget();
    } else if (currentPage == DrawerSections.download) {
      container = DounloadMobileWidget();
    } else if (currentPage == DrawerSections.blog) {
      container = BlogPreviewMobileWidget();
    } else if (currentPage == DrawerSections.tarifs) {
      container = TarifsMobileWidget();
    }
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: MyDrawerList(),
      key: scaffoldKey,
      body: LayoutBuilder(
        builder: (context, constrains) {
          sidePadding = screenWidth * 0.05;
          if (constrains.maxWidth > 715) {
            return desctopView();
          } else {
            return mobileView(container);
          }
        },
      ),
    );
  }

  Widget desctopView() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/Vector.png',
            ),
            CustomTabBar(
                controller: tabController,
                tabs: contentViews.map((e) => e.tab).toList()),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return LoginDialogDesctop();
                      },
                    );
                  },
                  child: Text(
                    "Войти",
                    style: TextStyle(fontSize: screenWidth * 0.0097),
                  ),
                ),
                Container(
                  width: screenWidth * 0.11,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Регистрация',
                      style: TextStyle(fontSize: screenWidth * 0.0097),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        Expanded(
          child: Container(
            child: TabBarView(
              children: contentViews.map((e) => e.content).toList(),
              controller: tabController,
            ),
          ),
        ),
      ],
    );
  }

  Widget mobileView(var container) {
    return Container(
      width: screenWidth,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/Vector.png',
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return LoginDialogMobile();
                          },
                        );
                      },
                      child: Text('Войти'),
                    ),
                    IconButton(
                        iconSize: screenWidth * 0.08,
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.blue,
                        ),
                        color: Colors.white,
                        splashColor: Colors.transparent,
                        onPressed: () =>
                            scaffoldKey.currentState?.openEndDrawer()),
                  ],
                ),
              ],
            ),
          ),
          Expanded(child: container)
        ],
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Главная", Icons.home,
              currentPage == DrawerSections.main ? true : false),
          menuItem(2, "Контакты", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Загрузка", Icons.download,
              currentPage == DrawerSections.download ? true : false),
          menuItem(4, "Блог", Icons.message,
              currentPage == DrawerSections.blog ? true : false),
          menuItem(5, "Тарифы", Icons.percent,
              currentPage == DrawerSections.tarifs ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? CustomColors.blue : CustomColors.lightBlue,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.main;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.download;
            } else if (id == 4) {
              currentPage = DrawerSections.blog;
            } else if (id == 5) {
              currentPage = DrawerSections.tarifs;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  main,
  contacts,
  download,
  blog,
  tarifs,
}
