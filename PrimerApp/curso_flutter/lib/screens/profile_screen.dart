import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const name = 'ProfileScreen';
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:
              const Text('Group Info', style: TextStyle(color: Colors.white)),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Edit',
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        ),
        body: const SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('lib/assets/harry_potter.jpg'),
                ),
                Text(
                  'Curso Flutter',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Times',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Group - 5 members',
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Times', color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ItemCard(
                        color: Colors.lightBlue,
                        icon: Icons.phone,
                        title: 'Call',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ItemCard(
                        color: Colors.lightBlue,
                        icon: Icons.video_call,
                        title: 'Video',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ItemCard(
                        color: Colors.lightBlue,
                        icon: Icons.search,
                        title: 'Search',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      ItemDescription(
                        description: 'Link',
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 14.0, left: 8.0, right: 8.0, bottom: 8.0),
                  child: ItemMenu(
                      color: Colors.orange,
                      icon: Icons.image,
                      subtitle: 'None',
                      title: 'Starred Messages'),
                ),
                Divider(
                  color: Colors.grey,
                  height: 0.5,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemMenu(
                      color: Colors.indigo,
                      icon: Icons.image,
                      subtitle: 'None',
                      title: 'Docs'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: 14.0, left: 8.0, right: 8.0, bottom: 8.0),
                  child: ItemMenu(
                      color: Colors.green,
                      icon: Icons.speaker,
                      subtitle: 'No',
                      title: 'Silence'),
                ),
                Divider(
                  color: Colors.grey,
                  height: 0.5,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemMenu(
                      color: Color.fromARGB(255, 198, 201, 28),
                      icon: Icons.save,
                      subtitle: 'Default',
                      title: 'Save in photos'),
                ),
              ],
            )));
  }
}

class ItemMenu extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String subtitle;
  final String title;
  const ItemMenu({
    super.key,
    required this.color,
    required this.icon,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        const Spacer(),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        )
      ],
    );
  }
}

class ItemDescription extends StatelessWidget {
  final Color color;
  final String description;
  const ItemDescription({
    super.key,
    required this.color,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 35, 35, 35),
          ),
          child: Row(
            children: [
              Text(description, style: TextStyle(fontSize: 18, color: color)),
            ],
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  const ItemCard({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            alignment: Alignment.center,
            width: 105,
            height: 65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: const Color.fromARGB(255, 35, 35, 35),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: color),
                Text(title,
                    style: const TextStyle(fontSize: 18, color: Colors.white))
              ],
            )),
      ],
    );
  }
}
