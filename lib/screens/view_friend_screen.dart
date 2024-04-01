import 'package:flutter/material.dart';
import 'package:friends_list_app/components/text_style_class.dart';
import 'package:friends_list_app/models/friends_model.dart';

class ViewFriendPage extends StatelessWidget {
  const ViewFriendPage({super.key, required this.friend});

  final Friend friend;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180.0,
            color: Colors.lightBlueAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    friend.imagePath,
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name', style: CustomTextStyle.boldMedium,),
                const SizedBox(
                  height: 5.0,
                ),
                Text('${friend.firstName} ${friend.lastName}', style: CustomTextStyle.boldExtraLarge,),
                const SizedBox(
                  height: 5.0,
                ),
                const Divider(),
                Text('Birthday', style: CustomTextStyle.boldMedium,),
                const SizedBox(
                  height: 5.0,
                ),
                Text(friend.birthDate, style: CustomTextStyle.boldExtraLarge),
                const Divider(),
                const SizedBox(
                  height: 5.0,
                ),
                Text('Age', style: CustomTextStyle.boldMedium,),
                const SizedBox(
                  height: 5.0,
                ),
                Text(friend.age.toString(), style: CustomTextStyle.boldExtraLarge),
                const Divider(),
                const SizedBox(
                  height: 5.0,
                ),
                Text('Gender', style: CustomTextStyle.boldMedium,),
                const SizedBox(
                  height: 5.0,
                ),
                Text(friend.gender, style: CustomTextStyle.boldExtraLarge),
                const Divider(),
                const SizedBox(
                  height: 5.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

