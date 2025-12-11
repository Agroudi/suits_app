import 'package:flutter/material.dart';
import 'package:suits_app/views/get_started/view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/onBoarding_$currentIndex.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(currentIndex != 2)
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, right: 14),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GetStartedView(),));
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                        side: BorderSide(color: Colors.black),
                      ),
                      child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFFDD8560),
                          )
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 15),
                if(currentIndex == 2)
                SizedBox(height: 70),
                Text(
                  currentIndex == 0?
                    'Welcome To\nFashion' : currentIndex == 1? 'Explore & Shop' : 'Hi,Shop Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: Colors.white
                    )
                ),
                SizedBox(height: 18),
                Text(
                  currentIndex == 0?
                  'Discover the latest trends and exclusive styles\nfrom our top designers' : currentIndex == 1? 'Discover a wide range of fashion categories,\nbrowse new arrivals and shop your favourites' : '',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                      children:[
                        Spacer(flex: 1),
                        if(currentIndex != 0)
                        FloatingActionButton(
                          onPressed: ()
                          {
                            setState(()
                            {
                              currentIndex--;
                            });
                          },
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          shape: const CircleBorder(
                              side: BorderSide(color: Color(0xFF4E6542))),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFFDD8560),
                          ),
                        ),
                        Spacer(flex: 45),
                        ...List.generate(3, (index) => Padding(
                          padding: EdgeInsetsDirectional.only(end: index != 2 ? 12 : 0),
                          child: CircleAvatar(
                            backgroundColor: index == currentIndex? Color(0xFFDD8560) : Color(0xFFD9D9D9),
                            radius: index == currentIndex? 7.5 : 5,
                          ),
                        )
                        ),
                        SizedBox(width: 120),
                        FloatingActionButton(
                          onPressed: ()
                          {
                            setState(()
                            {
                            if (currentIndex < 2) {
                            currentIndex++;
                            } else
                            {
                            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const GetStartedView()));
                            }
                            });
                          },
                          backgroundColor: Color(0xFFDD8560),
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ]
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}