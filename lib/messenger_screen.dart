import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 20.0,
        title: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/196780456_2915046505421448_1277951248212564708_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEH_bIefs9RcAw2P_v6Mv_80e_4_gJDUDHR7_j-AkNQMY1Bju25Wa2IZyV6Ewk5ZbrTC0iZ9PfepSrCwIxU_GwH&_nc_ohc=_IQo7QhQiekAX-RPa_1&_nc_ht=scontent.fcai20-4.fna&oh=5c1dd22a1344040569f0bc3ad804d268&oe=61306646',
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 7.0,

                    ),
                    Text(
                      '2',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,

                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(width: 10.0,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,

              ),
            ),
          ],
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 16,
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 16,
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            ],
          ),
        ],

      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 20.0 , right: 20.0),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10.0,),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),

                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>storyListItem(),
                    separatorBuilder: (BuildContext context, int index) =>SizedBox(width: 10.0,),
                    itemCount: 10,

                  ),
                ),
                SizedBox(height: 20.0,),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (context , index)=>chatListItem(),
                    separatorBuilder: (context , index)=>SizedBox(height: 10.0,),
                    itemCount: 20,
                ),

              ],
            ),
          ),
        ),
      ),


    );
  }

  Widget chatListItem(){
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(
                      'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/131552471_2795792844013482_7983698690106162161_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=174925&_nc_eui2=AeEdjQHwhjo1Z1aIZXARK50Z_yq3DWNFmCn_KrcNY0WYKYFbWQKBpLgrKmydm0dgsOeiRLwUKFtMA0KCO-1XOv7H&_nc_ohc=4AdhBW1BgtsAX9zwth9&_nc_ht=scontent.fcai20-4.fna&oh=221822c2b2d99dd286adb40554565d83&oe=6131B874',
                    ),
                  ),
                  CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 6.0,
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdo Hussein',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Hi I am Abdo Hussein Mohammed Taha ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 4.0,),
                        CircleAvatar(
                          radius: 3.0,
                          backgroundColor: Colors.black54,
                        ),
                        SizedBox(width: 4.0,),
                        Text(
                          '12:56 AM',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )

        ],
      ),
    );
  }

  Widget storyListItem(){
    return Container(
      width: 60.0,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 26.0,
                    backgroundImage: NetworkImage(
                      'https://scontent.fcai20-4.fna.fbcdn.net/v/t1.6435-9/196780456_2915046505421448_1277951248212564708_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeEH_bIefs9RcAw2P_v6Mv_80e_4_gJDUDHR7_j-AkNQMY1Bju25Wa2IZyV6Ewk5ZbrTC0iZ9PfepSrCwIxU_GwH&_nc_ohc=_IQo7QhQiekAX-RPa_1&_nc_ht=scontent.fcai20-4.fna&oh=5c1dd22a1344040569f0bc3ad804d268&oe=61306646',
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          Text(
            'Abdo Hussein Mohammed',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
