import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterflow/Controller/logos_controller.dart';
import 'package:flutterflow/Utils/colors_screen.dart';
import 'package:flutterflow/Widget/text_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LogosController logosController = Get.put(LogosController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kBackGroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                color: AppColors.kBackGroundColor,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(children: [
                      Image.asset(
                        'images/logo.png',
                        width: 150,
                        height: 40,
                      ),
                      const SizedBox(width: 20),
                      const Expanded(
                        flex: 6,
                        child: DefaultTabController(
                          length: 7,
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            unselectedLabelColor: Colors.white,
                            tabs: [
                              Text("Feature"),
                              Text("Pricing"),
                              Text("Docs"),
                              Text("Blog"),
                              Text("Careers"),
                              Text("Enterprise"),
                              Text("Experts"),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                        flex: 1,
                        child: TextBottun(
                          buttonColor: Colors.white12,
                          textColor: AppColors.kWhiteColor,
                          clickCallback: () {},
                          text: "Sign In",
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: TextBottun(
                          buttonColor: Colors.blue,
                          textColor: AppColors.kWhiteColor,
                          clickCallback: () {},
                          text: "Start for free",
                        ),
                      ),
                    ])),
              ),
              const SizedBox(height: 20),
              Container(
                color: AppColors.kBackGroundColor,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Text(
                      "Build applications faster \n than ever",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: <Color>[
                                Colors.pinkAccent,
                                Colors.deepPurpleAccent,
                                Colors.red
                                //add more color here.
                              ],
                            ).createShader(
                                const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0))),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      child: const Text(
                        "Create beautiful UI, generate clean code, and deploy to the app stores or web in one click. Fully extensible with custom code.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.kWhiteColor,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 50),
                      child: Container(
                        height: 600,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.kWhiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text("Build Different",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 120,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 20),
                    const Text(
                        "Trusted by users at leading companies around the world",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white24,
                        )),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 50),
                      child: GridView.builder(
                          itemCount: logosController.getLogosData.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 2 / 1,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return SvgPicture.asset(
                              logosController.getLogosData[index].img
                                  .toString(),
                              height: 30,
                              width: 30,
                            );
                          }),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "images/Logos/9.svg",
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(width: 10),
                        SvgPicture.asset(
                          "images/Logos/10.svg",
                          height: 40,
                          width: 40,
                        ),
                      ],
                    ),
                    const SizedBox(height: 200),
                    const Text("Try a demo of FlutterFlow",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: AppColors.kWhiteColor,
                        )),
                    const SizedBox(height: 20),
                    const Text(
                        "See what it's like to build in FlutterFlow, no login required!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white24,
                        )),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: buildCard(),
                        ),
                        Expanded(child: buildCard()),
                        Expanded(
                          child: buildCard(),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Card buildCard() {
    return Card(
      color: Colors.white12,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.kBlackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("images/phone/phone1.png"),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Text("Responsive Fintech App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.kWhiteColor,
              )),
          const SizedBox(height: 10),
          const Text(
              "A nice responsive fintech template for you to start building in Flutterflow.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                color: Colors.white24,
              )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextBottun(
              text: "Flutter Flow",
              clickCallback: () {},
              textColor: AppColors.kBlackColor,
              buttonColor: AppColors.kWhiteColor,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
