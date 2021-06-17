import 'package:flutter/material.dart';
import 'package:pop_shop/config/constant.dart';
import 'package:pop_shop/widgets/elevated_gradient_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  List<String> images = [
    "assets/images/splash1.png",
    "assets/images/splash2.png",
    "assets/images/splash3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: Column(
        children: <Widget>[
          Spacer(),
          Text(
            'Pop Shop',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          Text(
            'Shop Without Limitations',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor.withOpacity(0.7),
            ),
          ),
          Spacer(flex: 2),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              onPageChanged: (value) => setState(() => currentPage = value),
              itemCount: images.length,
              itemBuilder: (context, index) => Image(
                image: AssetImage(
                  images[index],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 250),
                margin: EdgeInsets.only(right: 5),
                height: 6,
                width: currentPage == index ? 18 : 6,
                decoration: BoxDecoration(
                  color:
                      currentPage == index ? kPrimaryColor : Color(0xFFaabbcc),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          Spacer(flex: 2),
          ElevatedGradientButton(
            onPressed: () {},
            borderRadius: BorderRadius.circular(24),
            gradient: kPrimaryGradient,
            height: 50,
            width: double.infinity,
            child: Text(
              'Continue',
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
