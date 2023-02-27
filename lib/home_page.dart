import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  Color PRIMAY_COLOR = const Color(0xff3A7D1C);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3A7D1C),
        centerTitle: false,
        title: Image.asset("assets/images/image_logo_mastani.png"),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(15),
                height: 125,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage("assets/images/image_bg_varietas.png"))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Lihat deskripsi varietas unggul baru \nPadi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        height: 25,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "Informasi Lebih Lanjut",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                height: height * 0.215,
                width: width * 0.9,
                decoration: BoxDecoration(
                    color: PRIMAY_COLOR,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                "Cari Lokasi Benih",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage("assets/images/image_benih.png")),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      height: height * 0.15,
                      width: width * 0.9,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      "Kategori Benih",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: PRIMAY_COLOR.withOpacity(0.1),
                          border: Border.all(color: PRIMAY_COLOR)),
                      child: Center(
                        child: Text(
                          "Data Distribusi",
                          style: TextStyle(color: PRIMAY_COLOR),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_benih_penjenis.png",
                    namaBenih: "Benih Penjenis",
                  ),
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_benih_dasar.png",
                    namaBenih: "Benih Dasar",
                  ),
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_benih_pokok.png",
                    namaBenih: "Benih Pokok",
                  ),
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_benih_sebar.png",
                    namaBenih: "Benih Sebar",
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text(
                      "Lembaga",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: PRIMAY_COLOR.withOpacity(0.1),
                          border: Border.all(color: PRIMAY_COLOR)),
                      child: Center(
                        child: Text(
                          "Data Distribusi",
                          style: TextStyle(color: PRIMAY_COLOR),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_upbs.png",
                    namaBenih: "UPBS",
                  ),
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_pkelas1.png",
                    namaBenih: "Penangkar \nKelas 1",
                  ),
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_pkelas2.png",
                    namaBenih: "Penangkar \nKelas 2",
                  ),
                  CardKategoriBenih(
                    gambarBenih: "assets/icons/ic_pkg.png",
                    namaBenih: "Petani/Koptan \nGapoktan",
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CardKategoriBenih extends StatelessWidget {
  final String namaBenih;
  final String gambarBenih;
  const CardKategoriBenih(
      {super.key, required this.namaBenih, required this.gambarBenih});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 75,
        width: 75,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(gambarBenih),
              Text(
                namaBenih,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
