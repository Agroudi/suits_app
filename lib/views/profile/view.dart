import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined),
        title: Text(
            'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 41),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  radius: 65,
                ),
                SizedBox(height: 14),
                Text(
                    'Abdelrahman ElAgroudy',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black
                ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 400,
                  height: 70,
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Color(0xFFFFFFFF),
                        side: BorderSide(
                          color: Color(0xFFE5E7EB),
                        )
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/prof.png'),
                          SizedBox(width: 18),
                          Text(
                            'Your Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 70,
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color(0xFFFFFFFF),
                          side: BorderSide(
                            color: Color(0xFFE5E7EB),
                          )
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/menu.png'),
                          SizedBox(width: 18),
                          Text(
                            'My Order',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 70,
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color(0xFFFFFFFF),
                          side: BorderSide(
                            color: Color(0xFFE5E7EB),
                          )
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/credit_card.png'),
                          SizedBox(width: 18),
                          Text(
                            'Payment Methods',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 70,
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color(0xFFFFFFFF),
                          side: BorderSide(
                            color: Color(0xFFE5E7EB),
                          )
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/heart.png'),
                          SizedBox(width: 18),
                          Text(
                            'Wishlist',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 70,
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color(0xFFFFFFFF),
                          side: BorderSide(
                            color: Color(0xFFE5E7EB),
                          )
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/setting.png'),
                          SizedBox(width: 18),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 70,
                  child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          backgroundColor: Color(0xFFFFFFFF),
                          side: BorderSide(
                            color: Color(0xFFE5E7EB),
                          )
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/logout.png'),
                          SizedBox(width: 18),
                          Text(
                            'Log Out',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Color(0xFF000000)
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
                label: 'Cart'
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
                label: 'Favourite'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
                label: 'Profile'
            )
          ]
      ),
    );
  }
}
