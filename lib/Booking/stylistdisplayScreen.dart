import 'package:flutter/material.dart';
import 'detail_screen .dart';

const stylistData = [
  {
    'stylistName': 'Cameron Jones',
    'salonName': 'Super Cut Salon',
    'rating': '4.5',
    'rateAmount': '56',
    'imgUrl': 'assets/lady1 NB.png',
    'bgColor': Color(0xffFFF0EB),
  },
  {
    'stylistName': 'Max Robertson',
    'salonName': 'Rossano Ferretti Salon',
    'rating': '4.1',
    'rateAmount': '80',
    'imgUrl': 'assets/maNB.png',
    'bgColor': Color(0xffEBF6FF),
  },
  {
    'stylistName': 'Beth Watson',
    'salonName': 'Neville Hair and Beauty',
    'rating': '4.7',
    'rateAmount': '70',
    'imgUrl': 'assets/lady2NB.png',
    'bgColor': Color(0xffFFF3EB),
  },
  {
    'stylistName': 'Verstapen',
    'salonName': 'movit',
    'rating': '4.2',
    'rateAmount': '80',
    'imgUrl': 'assets/man2NB.png',
    'bgColor': Color(0xffEBF6FF),
  },
];

class Bookings extends StatelessWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
       
        Positioned(
           child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(35),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Hair Stylist',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    StylistCard(stylistData[0]),
                    StylistCard(stylistData[1]),
                    StylistCard(stylistData[2]),
                    StylistCard(stylistData[3]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class StylistCard extends StatelessWidget {
  final stylist;
  const StylistCard(this.stylist, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -30,
            child: Image.asset(
              stylist['imgUrl'],
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  stylist['stylistName'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  stylist['salonName'],
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Color(0xff4E295B),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      stylist['rating'],
                      style: const TextStyle(
                        color: Color(0xff4E295B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                StylistDetailScreen(stylist: stylist)
                            ));
                  },
                  color: const Color(0xff4E295B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.white,
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
}
