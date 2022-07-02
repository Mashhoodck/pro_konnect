import 'package:flutter/material.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/proguidesAndstudents/proguideProfile.dart';
import 'package:pro_konnect/Students/studentsScreens/profileScreens/navigationItemScreen/projectCreate/projectList.dart';
import 'package:pro_konnect/widgets/profileHeader.dart';

import '../../../../listData/proguideList.dart';

class FilterdProguideList extends StatelessWidget {
  const FilterdProguideList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProguideList> listofProguides = [
      ProguideList(
        image: "assets/images/proguides (1).png",
        name: "Name",
        description: "description",
      ),
      ProguideList(
        image: "assets/images/proguides (2).png",
        name: "Name",
        description: "description",
      ),
      ProguideList(
        image: "assets/images/proguides (3).png",
        name: "Name",
        description: "description",
      ),
      ProguideList(
        image: "assets/images/proguides (4).png",
        name: "Name",
        description: "description",
      )
    ];

    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderConiatiner(
                tapBack: () {
                  // Navigator.pop(context);
                },
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05, right: size.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Center(
                        child: Text(
                          " Proguide",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProguideProfile()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: Image.asset(
                                        listofProguides[index].image,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(listofProguides[index].name),
                                    Text(listofProguides[index].description)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          itemCount: listofProguides.length,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProguideProfile()));
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black)),
                                      child: Image.asset(
                                        listofProguides[index].image,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(listofProguides[index].name),
                                    Text(listofProguides[index].description)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          itemCount: listofProguides.length,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
