import 'package:flutter/material.dart';
import 'core.dart';

Widget debugView({
  required BuildContext context,
  required bool visible,
  Widget? child,
}) {
  if (child == null) return Container();
  if (!visible) return Container();
  return Material(
    child: Column(
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: const Center(
            child: Icon(
              MdiIcons.circle,
              size: 14.0,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              child,
              Positioned(
                right: -8,
                bottom: 100,
                child: Container(
                  width: 30.0,
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          if (isDarkMode) {
                            isDarkMode = false;
                            Get.changeTheme(getDefaultTheme());
                          } else {
                            isDarkMode = true;
                            Get.changeTheme(getDarkTheme());
                          }
                        },
                        child: const Icon(
                          MdiIcons.windowOpen,
                          color: Colors.white,
                          size: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      InkWell(
                        onTap: () => Get.to( Container()),
                        child: const Icon(
                          Icons.leaderboard,
                          color: Colors.white,
                          size: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      InkWell(
                        onTap: () => Get.back(),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (1 == 2)
          Container(
            height: 80.0,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black,
                        Colors.black,
                        Colors.black,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 0.0,
                  bottom: 0.0,
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kelas Online /w DenyOcr~",
                                  style: GoogleFonts.oswald(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Buka ",
                                      style: GoogleFonts.oswald(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Text(
                                      "capekngoding.com",
                                      style: GoogleFonts.oswald(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bahasa: Dart ",
                              style: GoogleFonts.oswald(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "Framework: Flutter",
                              style: GoogleFonts.oswald(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "VsCode Extension: NGEBUT ",
                              style: GoogleFonts.oswald(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}
