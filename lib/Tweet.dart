import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  final String image_url;
  final String postText;
  const Tweet({super.key, required this.image_url, required this.postText});

  @override
  Widget build(BuildContext context) {
    return tweet();
  }

  Widget tweet() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        tweetAvatar(),
        tweetBody(),
      ],
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (image_url == '') ...[
            tweetHeader(),
            tweetText(postText),
            tweetButton(),
          ] else if (postText == '') ...[
            tweetHeader(),
            tweetImage(),
            tweetButton(),
          ] else ...[
            tweetHeader(),
            tweetImageAndText(postText),
            tweetButton(),
          ]
        ],
      ),
    );
  }

  Widget tweetText(String text) {
    return Text(text);
  }

  Widget tweetImageAndText(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(
          height: 10.0,
        ),
        Image(
          width: 400.0,
          image: NetworkImage(image_url),
        ),
      ],
    );
  }

  Widget tweetImage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          width: 400.0,
          image: NetworkImage(image_url),
        ),
      ],
    );
  }

  Widget tweetButton() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweeticonButton(FontAwesomeIcons.message, "22k"),
          tweeticonButton(FontAwesomeIcons.retweet, ""),
          tweeticonButton(FontAwesomeIcons.heart, "345"),
          tweeticonButton(FontAwesomeIcons.share, ""),
        ],
      ),
    );
  }

  Widget tweeticonButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 18.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 5.0),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget tweetHeader() {
    DateTime _now = DateTime.now();
    var time = ('@BUEN ${_now.hour}:${_now.minute}:${_now.second}');
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 5.0),
          child: const Text(
            "Jirapat Pimkaew",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          //"@BUEN 10s",
          time,
          style: TextStyle(color: Colors.grey),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon:
              Icon(FontAwesomeIcons.anglesDown, size: 12.0, color: Colors.grey),
        ),
      ],
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1392110608263356418/7zjx6OLJ_400x400.jpg'),
          ),
        ],
      ),
    );
  }
}
