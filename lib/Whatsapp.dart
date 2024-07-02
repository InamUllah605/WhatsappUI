import 'package:flutter/material.dart';
import 'package:whatsapp/Model%20Class.dart';
import 'package:whatsapp/Screen2.dart';
class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  List<ModelClass> name=[
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
    ModelClass(tittle: 'Inamullah', subtitle: 'hy', path: 'Pictures/My Profile.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.camera_alt_outlined,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,color: Colors.white,),
        ],
      ),
        body:
        ListView.builder(
          itemCount: name.length,
          itemBuilder: (context,index){
            String tittle= name[index].tittle.toString();
            String subtittle= name[index].subtitle.toString();
            String picture= backgroundImage: AssetImage('Pictures/My Profile.jpg');
            return ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> WAHomeScreenTwo(title: tittle, sutitle: subtittle)
                ));
              },
              title: Text(tittle),
              subtitle: Text(subtittle),
              leading: CircleAvatar(name[index].path.toString()),
            );
          },
        ),



    //   SingleChildScrollView(
    //     scrollDirection: Axis.vertical,
    //     child: Column(
    //       children: [
    //
    //         Container(height: 50,width: 400,color: Colors.green.shade800,
    //           child:
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Icon(Icons.person,color: Colors.white54,),
    //                 Text('Chats',style: TextStyle(color: Colors.white,fontSize: 17),),
    //                 Text('Updates',style: TextStyle(color: Colors.white,fontSize: 17),),
    //                 Text('Calls',style: TextStyle(color: Colors.white,fontSize: 17),),
    //               ],),
    //           ),
    //         ),
    //         ListTile(
    //           onTap: (){
    //             Navigator.push(context, MaterialPageRoute(builder: (context)=>WAHomeScreenTwo(
    //               Name: 'Inamulah',Massage: 'Aslamualekum',picture: 'Pictures/My Profile.jpg',)));
    //           },
    //           leading: CircleAvatar(
    //             backgroundImage: AssetImage('Pictures/My Profile.jpg'),),
    //           title: Text('Inamullah'),
    //           subtitle: Text('Aslamualekum'),
    //         ),
    //         ListTile(
    //           onTap: () {
    //             Navigator.push(context, MaterialPageRoute(builder: (context) => WAHomeScreenTwo(
    //               Name: 'Inam', Massage: 'hy',picture: 'Pictures/My Profile.jpg',)));
    // },
    //           leading: CircleAvatar(backgroundImage: AssetImage('Pictures/My Profile.jpg'),),
    //           title: Text('Inam'),
    //           subtitle: Text('hy'),
    //         ),
    //       ],
    //     ),
    //   ),

    );
  }
}