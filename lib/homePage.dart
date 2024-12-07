import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kaamwalibais_crm/assets/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> image = [
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
    "lib/assets/images/icons8-winter-sales-48.png",
    "lib/assets/images/total_leads.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(color: whiteColor),
        ),
        centerTitle: true,
        backgroundColor: PrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Welcome !",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent),
                ),
              ),
              const Text(
                "Leads",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: PrimaryColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 30,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          child: Column(children: [
                            // const SizedBox(
                            //   height: 15,
                            // ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                height: 98,
                                width: 200,
                                color: const Color.fromARGB(255, 226, 226, 226),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      image[index],
                                      height: 60,
                                    ), // Icon inside the grid item

                                    Text(
                                      'Item $index',
                                      style: const TextStyle(
                                          color: PrimaryColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("Hii")
                          ]),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                "Opportunity Leads",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: PrimaryColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 30,
                      childAspectRatio: 1.6,
                    ),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: const Color.fromARGB(255, 226, 226, 226),
                          child: Column(children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 70,
                              width: 200,
                              color: const Color.fromARGB(255, 226, 226, 226),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    image[index],
                                    height: 50,
                                  ), // Icon inside the grid item

                                  Text(
                                    'Item $index',
                                    style: const TextStyle(
                                        color: PrimaryColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("Hii")
                          ]),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
