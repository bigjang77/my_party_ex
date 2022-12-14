import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../core/color.dart';

class OpponentProfile extends StatelessWidget {
  const OpponentProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          padding: EdgeInsets.only(top: 40),
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                _profileContext(),
                _backCircle(),
                _buildCircleAvatar(),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 150,
              child: InkWell(
                onTap: () async {
                  await showDialog(context: context, builder: (_) => _imageDialog());
                },
                child: Image.asset("assets/images/cart1.png"),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _followButton(),
                _ratingStarButton(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _backCircle() {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffFBC5D8),
            Color.fromARGB(0, 243, 218, 153),
          ],
        ),
      ),
    );
  }

  Padding _profileContext() {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffFBC5D8),
              Color.fromARGB(0, 243, 218, 153),
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text("?????????"),
            SizedBox(height: 20),
            Text("????????????????????????????????????sdsfsdfdsfsfsfsdfdsfsdfsfsdfsdfdsfsdfsdfdsfsdsddsfsfdsdfsfssd"),
            SizedBox(height: 60),
            _ratedStar(),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatar() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CircleAvatar(
        radius: 70,
        backgroundImage: AssetImage("assets/images/41.jpg"),
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          BackButton(
            color: Colors.black,
          ),
          Text("?????????", style: TextStyle(color: Colors.black)),
        ],
      ),
      actions: [
        Icon(
          Icons.report_gmailerrorred,
          color: Colors.red,
          size: 40,
        ),
        SizedBox(width: 15),
      ],
    );
  }

  Widget _ratedStar() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5,
            spreadRadius: 0,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "????????????",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          SizedBox(width: 20),
          _ratingBar(),
        ],
      ),
    );
  }

  Widget _ratingStarButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(context: context, builder: (_) => _ratingStar(context));
      },
      child: Text("?????? ??????"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        textStyle: TextStyle(fontFamily: 'NanumSquare', fontSize: 20),
        foregroundColor: Colors.black,
        side: BorderSide(),
      ),
    );
  }

  Widget _followButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text("???????????????"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        textStyle: TextStyle(fontFamily: 'NanumSquare', fontSize: 20),
        foregroundColor: Colors.black,
        side: BorderSide(),
      ),
    );
  }

  Widget _introduce() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5,
            spreadRadius: 0,
            offset: Offset(5, 6),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Text(
        "????????????????????? ?????? ?????? ????????? 1 ?????? ???????????? ????????? ????????????",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }

  Widget _nickName() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 5,
            spreadRadius: 0,
            offset: Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Text(
        "?????????",
        style: TextStyle(fontSize: 15, color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}

Widget _ratingBar() {
  return RatingBarIndicator(
    rating: 1,
    itemBuilder: (context, index) => Icon(
      Icons.star,
      color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 35.0,
    direction: Axis.horizontal,
  );
}

// class ImageDialog extends StatelessWidget {
//   const ImageDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       child: Container(
//         width: 300,
//         height: 200,
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage('assets/images/cart2.png')),
//         ),
//       ),
//     );
//   }
// }

Widget _imageDialog() {
  return Dialog(
    child: Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/cart2.png')),
      ),
    ),
  );
}

Widget _ratingStar(context) {
  return Dialog(
    child: Container(
      padding: EdgeInsets.all(20),
      width: 350,
      height: 250,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text("????????????"),
          SizedBox(height: 20),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("?????????!")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("??????")),
            ],
          )
        ],
      ),
    ),
  );
}
