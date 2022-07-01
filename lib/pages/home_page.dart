import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.indigo[300],
              ),
              child: const Center(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Irfan Maulana',
                    style: GoogleFonts.poppins(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.notifications_outlined,
              size: 30,
              color: Colors.grey[700],
            ),
            const SizedBox(
              width: 12,
            ),
            Icon(
              Icons.favorite_outline_rounded,
              size: 30,
              color: Colors.grey[700],
            )
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(children: [
          Icon(
            Icons.search_outlined,
            color: Colors.grey[500],
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              color: Colors.indigo[400],
            ),
          ),
        ]),
      );
    }

    Widget slider() {
      return Container(
        padding: EdgeInsets.all(25),
        width: double.infinity,
        height: 170,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.indigo[400],
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 92, 112, 225),
            Color.fromARGB(255, 59, 166, 253)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '40% OFF',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Today Special',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Text(
                  '40%',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Get discount for every course order!\nOnly valid for today!',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    Widget topMentorTitle() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top Mentor',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'See All',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      );
    }

    Widget mentorItem(String img, String name) {
      return Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }

    Widget mentorCard() {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              mentorItem('assets/img/mentor1.png', 'Jacob'),
              mentorItem('assets/img/mentor2.png', 'Cair'),
              mentorItem('assets/img/mentor3.png', 'Pricila'),
              mentorItem('assets/img/mentor4.png', 'Sela'),
              mentorItem('assets/img/mentor5.png', 'Farhan'),
              mentorItem('assets/img/mentor5.png', 'Jacob'),
              mentorItem('assets/img/mentor5.png', 'Jacob'),
              mentorItem('assets/img/mentor5.png', 'Jacob'),
            ],
          ),
        ),
      );
    }

    Widget pupularCourseTitle() {
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Most Popular Course',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'See All',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      );
    }

    Widget categoryCouse() {
      return Container(
        margin: EdgeInsets.only(left: 20, top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo[400],
                ),
                child: Center(
                  child: Text(
                    'All',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    '3D Design',
                    style: GoogleFonts.poppins(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Business',
                    style: GoogleFonts.poppins(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Programming',
                    style: GoogleFonts.poppins(
                      color: Colors.indigo,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget courseItem() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(

          children: [
            Container(
              width: 100,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.indigo[100],
              ),
              child: Icon(Icons.code_outlined, color: Colors.indigo, size: 60,),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Programming',
                          style: GoogleFonts.poppins(
                            color: Colors.indigo,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: Colors.indigo[400],
                        ))
                  ],
                ),
                Text(
                  'Python Fundamental',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '400.000',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.indigo,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget courseCard() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            courseItem(),
            courseItem(),
            courseItem(),
            courseItem(),
          ],
        ),
      );
    }

    return Scaffold(
        body: ListView(
      children: [
        header(),
        searchBar(),
        slider(),
        topMentorTitle(),
        mentorCard(),
        pupularCourseTitle(),
        categoryCouse(),
        courseCard(),
      ],
    ));
  }
}
