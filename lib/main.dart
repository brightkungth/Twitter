import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Tweet.dart';

void main() {
  runApp(const MyApp());
}

int count = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [
    Tweet(
      image_url:
          'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.15752-9/312808898_695849195091306_6729095560599434778_n.png?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEQ4pVLFsPr_goBA2kI5u9LQtgZgJ9MT0BC2BmAn0xPQMhf41az3Q38f4HWupEWHY1-_6Jn2qR17wJsw0H8ayzn&_nc_ohc=1eARNKI7cUYAX8G-CzM&_nc_ht=scontent.fbkk5-4.fna&oh=03_AdSzHGQmAkQAbSO-cwKL4_RbRM8aVNhW6CvFsrCJ1icbNA&oe=63A43F25',
      postText: 'Bangkok University',
    ),
    Tweet(
      image_url:
          'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.15752-9/312438810_699787624654110_4041061113853842679_n.png?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEPenf7LC9k27I1bp7x1pwRXIbdXA67xaxcht1cDrvFrNvDQteq2xL1EBukNWkmQ7-IaJ71uzJxDQJxi2SPmV6Z&_nc_ohc=LySoRMFaSrsAX_FkiIL&_nc_ht=scontent.fbkk5-6.fna&oh=03_AdQMOLKrFLag7ryz-yEV9xgL8q_wWjjOnFv4uSfZk5AKYw&oe=63A44AE5',
      postText: 'คณะวิศวะ ม.กรุงเทพ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(10.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1392110608263356418/7zjx6OLJ_400x400.jpg'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildiconbutton(Icons.home, Colors.blue),
            buildiconbutton(Icons.search_outlined, Colors.blue),
            buildiconbutton(Icons.notifications_outlined, Colors.blue),
            buildiconbutton(Icons.email_outlined, Colors.blue),
          ],
        ),
      ),
      body: listOfTweets(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            //tweetList.add(Tweet());
            if (count == 0) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url: '',
                  postText:
                      'สวัสดีครับผมชื่อ นายจิรพัส พิมพ์แก้ว เรียนอยู่ที่ม.กรุงเทพ ครับ',
                ),
              );
            } else if (count == 1) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.15752-9/316140895_1262860874268242_3813867037986274179_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHIqXCm7VOYRan1jHgfp1PEmwGDJ4eXSM-bAYMnh5dIz6updmeDpMhYUcJ6UvLeJ7PPwZDiekAEvxiU5h6VpcpN&_nc_ohc=ryH3vUDoPyQAX8JbcVS&_nc_ht=scontent.fbkk5-6.fna&oh=03_AdRox6uokECsSX1nCVE26GgYYW1L4EfgdfLlxNff_FSVrQ&oe=63A46EFF',
                  postText: 'ฝึกงานที่บริษัท P.J.P ครับ',
                ),
              );
            } else if (count == 2) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.15752-9/316437093_1121140035209735_5562770806253326595_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGTS713-Nzcwl8F8NvsloftcnEnYUOhR5dycSdhQ6FHlxsc6NL0qr4kfd8SPHXhOpSCzlH0dLs1vTELroiLJZhD&_nc_ohc=ckprT5-y-1AAX_TOzMm&_nc_ht=scontent.fbkk5-4.fna&oh=03_AdSOh96di8DoihHAlcDRjQe76t-PV198u-1mLWz7edNzXw&oe=63A456F0',
                  postText: 'สถานที่จริง',
                ),
              );
            } else if (count == 3) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.15752-9/316040673_1260657811456806_25960934258098582_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEKh6v0poGx-T-1Dq6JNdCu3rbbhR5SGkvettuFHlIaS3Qw6NvzAtL8G59tS46oPzxBD8W07FeY6cZQSu_dlB9p&_nc_ohc=LE0f0PCJ1m8AX8o3JRr&_nc_ht=scontent.fbkk5-4.fna&oh=03_AdTTZ6kX10lhLgvTUp5ChNEc_ToNtGYIjlb-xFr1kKEmYw&oe=63A46E1B',
                  postText: 'ทำงาน automation station ต่างๆ',
                ),
              );
            } else if (count == 4) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.15752-9/316164096_1391191681411061_2638221230293910286_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeH8uUMjQYm3DkpIoVaKPkxFjgbvK2umHTOOBu8ra6YdM1ePN4c2n8_v_XhmNAyqhVBPd8q2waa_6tUZPoDdmjb7&_nc_ohc=btboA_nJDfAAX9lGwgB&_nc_ht=scontent.fbkk5-6.fna&oh=03_AdTbmf_lXkXtXh90rHSkXKDTipKDVKVnRaZOQ55Rnd7HyQ&oe=63A44C46',
                  postText: 'ทำน้ำยาเช็ดกระจก',
                ),
              );
            } else if (count == 5) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.15752-9/316489623_803012490930209_1827886306776290944_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeHjRRF1G7gO8nzFIKS_4OrDZt00OzQ6dXVm3TQ7NDp1dbgZOpTghdEezfpR3KEhCdq6H52-agiq8UzbNO_p1Onb&_nc_ohc=D4OHnIsn2pkAX8fgZjh&_nc_ht=scontent.fbkk5-4.fna&oh=03_AdTKErObUEV3fk1ugCKHcYBAq8HrAkSeuA3Uuo3cZ69Brg&oe=63A465FA',
                  postText: '',
                ),
              );
            } else if (count == 6) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.15752-9/316593508_1291445221649011_7405694012234113026_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeE1x17ow6EBapYS9J_mMEOvuvIKUQpFGsW68gpRCkUaxTHjVWR5atx9njTyoItOHvBqD6OhpgtE8HbczIz2BvJZ&_nc_ohc=XXRvZSKbvzIAX-PuP9a&_nc_ht=scontent.fbkk5-4.fna&oh=03_AdTMISfY8CjvFBb8wP3hYEwxtjniPLOWecNOR0yumTaDJw&oe=63A464E9',
                  postText: 'ต่อ arduino กับ component ต่างๆ',
                ),
              );
            } else if (count == 7) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-8.fna.fbcdn.net/v/t1.15752-9/316459177_1365610534190372_2647017391732427505_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEJmy-IdzYgClVKCipkbn54hxna2IqsELuHGdrYiqwQu6NeM1V8-99YxTYahqQdMInHaVYwoacIDV-xAza0PFqp&_nc_ohc=riC9yxW6jOEAX8Mo_dv&_nc_ht=scontent.fbkk5-8.fna&oh=03_AdTauNEYSrzmDQPek2jSmoDfb_5S3XtpjDSKa30Rpcyovg&oe=63A459B0',
                  postText: 'สร้างโทรโข่ง โดยใช้ขวดน้ำ',
                ),
              );
            } else if (count == 8) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.15752-9/316248382_5490257877767363_3226244649438158589_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeGgCEc7-2rD6CEDVmucoG6SOwvt7j8faik7C-3uPx9qKV4powiJLkY_vczdOt-nk--baHZNX_kAxRy18cxhAOV6&_nc_ohc=Y07ZX7ShPRMAX-tD_mm&_nc_ht=scontent.fbkk5-6.fna&oh=03_AdQV426rcmjJZqk0i2UZglcdBtYEBhWObShpuOYX8iJ7Cw&oe=63A44D0A',
                  postText: '',
                ),
              );
            } else if (count == 9) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-6.fna.fbcdn.net/v/t1.15752-9/315944915_1153379142282110_6855535523008858427_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFmyMr2b8PHDRTnVrNt5iVgPbtsjE00S4E9u2yMTTRLgTQ-9hA7WauHMVE-0iRs0QeX5SlMNJkYHlWdM6349k00&_nc_ohc=ihz2MhXzXQ4AX_YSo24&_nc_ht=scontent.fbkk5-6.fna&oh=03_AdRTojh1rnFvrAThNm3n2xJbBg57zPouTlsBqlacAfkJhw&oe=63A46A0A',
                  postText: '',
                ),
              );
            } else if (count == 10) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-2.fna.fbcdn.net/v/t1.15752-9/316234174_1189461115001110_1927580050990542053_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFBB7XoaXTkNpslDz_FgprzD-Te4qI9T-gP5N7ioj1P6A9YkqGWfy610fN6JZchccJlueGXAwV2033LBsV4Gt2T&_nc_ohc=A8nSfXUQOIsAX9BRom4&_nc_ht=scontent.fbkk5-2.fna&oh=03_AdQuXCX-snfhtxvFTqjGqSgb1BhagRTPlSEsQJSBeCUmzA&oe=63A46179',
                  postText: 'ปั้นโมเดล Tie Fighter จากหนังเรื่อง Star Wars',
                ),
              );
            } else if (count == 11) {
              tweetList.insert(
                0,
                const Tweet(
                  image_url:
                      'https://scontent.fbkk5-4.fna.fbcdn.net/v/t1.15752-9/316053728_456012856647177_5889131057806760655_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeFTEC7i13uDNnJ_U_CPaSdlrdNKKgZz_k-t00oqBnP-T6wTNEjuI6tzhl2xFOB3YERKiybR93Tfeyt0C8waFiFQ&_nc_ohc=IpYEOmNc56UAX8INPx6&_nc_ht=scontent.fbkk5-4.fna&oh=03_AdTWcmQx1UrXMZbn4Vu-kt8V3p0y21vY_-VV9Kg3aPTlDQ&oe=63A47314',
                  postText: 'ทำหุ่นยนต์วิ่งแทรกตามเส้น',
                ),
              );
            } else {
              count = -1;
            }
            count++;
          });
        },
      ),
    );
  }

  Widget listOfTweets() {
    return Container(
      color: Colors.white,
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return tweetList[index];
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 10,
              ),
          itemCount: tweetList.length),
    );
  }

  Widget buildiconbutton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
