import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/chatHistory/chatScreen.dart';
import 'package:pro_konnect/widgets/backButtonTop.dart';
import 'package:pro_konnect/widgets/circleAvatarProfile.dart';

import '../../../../../utils/colors.dart';
import '../../../../../widgets/customSearchBar.dart';
import '../../../../../widgets/rectangleCard.dart';

class ProChat extends StatefulWidget {
  const ProChat({Key? key}) : super(key: key);

  @override
  State<ProChat> createState() => _ProChatState();
}

class _ProChatState extends State<ProChat> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            BackButtonTop(
              backBtnclick: () {
                Navigator.pop(context);
              },
              vetorIcon: "",
              backArroText: Colors.black,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: size.width * 0.05),
                      Text("Prochat"),
                      Container(
                          color: Colors.green,
                          child: SvgPicture.asset("assets/icons/threedot.svg"))
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SearchBarRounded(
                    prefix: Icons.search,
                    hintText: "Search here",
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.black,
                      controller: tabController,
                      tabs: [
                        Tab(
                            child: Text(
                          "Student",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )),
                        Tab(
                          child: Text("Proguide",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                        ),
                        Tab(
                          child: Text("Group",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                        )
                      ]),
                  Container(
                    height: size.height * 0.5,
                    child: TabBarView(controller: tabController, children: [
                      ListView.separated(
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ChatScreen()));
                                },
                                child: RectangleCard(
                                  image: "assets/images/proguides (1).png",
                                  name: "Ireno",
                                  subtitle: "Loren Ipsum",
                                  time: "21:21",
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: size.height * 0.02,
                              ),
                          itemCount: 10),
                      ListView.separated(
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ChatScreen()));
                                },
                                child: RectangleCard(
                                  image: "assets/images/proguides (2).png",
                                  name: "Emral ",
                                  subtitle: "Loren Ipsum",
                                  time: "21:21",
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: size.height * 0.02,
                              ),
                          itemCount: 10),
                      ListView.separated(
                          itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ChatScreen()));
                                },
                                child: RectangleCard(
                                  image: "assets/images/proguides (3).png",
                                  name: "Rengsha",
                                  subtitle: "Loren Ipsum",
                                  time: "21:21",
                                ),
                              ),
                          separatorBuilder: (context, index) => SizedBox(
                                height: size.height * 0.02,
                              ),
                          itemCount: 10)
                    ]),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
