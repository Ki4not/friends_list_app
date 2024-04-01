import 'package:flutter/material.dart';
import 'package:friends_list_app/components/text_style_class.dart';
import 'package:friends_list_app/models/friends_model.dart';
import 'package:friends_list_app/screens/view_friend_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          'Friends List',
          style: CustomTextStyle.boldExtraLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Friend.friends.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _friendsListCard(context, Friend.friends[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }
}

Widget _friendsListCard(BuildContext context, Friend friend) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewFriendPage(friend: friend)),
      );
    },
    child: Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10.0,),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                friend.imagePath,
                height: 50.0,
                width: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 40.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name: ${friend.firstName} ${friend.lastName}',
                  style: CustomTextStyle.lightMedium,
                ),
                Text(
                  'Birthday: ${friend.birthDate}',
                  style: CustomTextStyle.lightMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
