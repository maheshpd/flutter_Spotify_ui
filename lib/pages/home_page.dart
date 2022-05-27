import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spotify_ui/json/songs_json.dart';
import 'package:flutter_spotify_ui/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(song_type_1.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        right: 25,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMenu1 = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song_type_1[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: activeMenu1 == index ? primary : grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            activeMenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                      children: List.generate(songs.length - 5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: primary,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              songs[index]['title'],
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: white,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 180,
                              child: Text(
                                songs[index]['description'],
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12,
                                    color: grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(song_type_1.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            right: 25,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                activeMenu1 = index;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  song_type_1[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: activeMenu1 == index ? primary : grey,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                activeMenu1 == index
                                    ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                                    : Container()
                              ],
                            ),
                          ),
                        );
                      })),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                      children: List.generate(songs.length - 5, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: GestureDetector(
                            child: Column(
                              children: [
                                Container(
                                  width: 180,
                                  height: 180,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(songs[index]['img']),
                                          fit: BoxFit.cover),
                                      color: primary,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  songs[index]['title'],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 180,
                                  child: Text(
                                    songs[index]['description'],
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: grey,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: black,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Explore",
              style: TextStyle(
                  fontSize: 20, color: white, fontWeight: FontWeight.bold),
            ),
            Icon(Entypo.list)
          ],
        ),
      ),
    );
  }
}
