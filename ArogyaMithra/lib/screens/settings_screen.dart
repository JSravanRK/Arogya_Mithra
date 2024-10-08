import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Settings",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 30),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("images/profileicon.jpg"),
            ),
            title: Text(
              "SubbaRao",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            subtitle: Text(
              "User",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Divider(height: 40, thickness: 1, color: Colors.grey[300]),
          buildListTile(
            icon: CupertinoIcons.person,
            iconColor: Colors.blue,
            title: "Profile",
          ),
          buildListTile(
            icon: Icons.notifications_none_outlined,
            iconColor: Colors.deepPurple,
            title: "Notifications",
          ),
          buildListTile(
            icon: Icons.privacy_tip_outlined,
            iconColor: Colors.indigo,
            title: "Privacy",
          ),
          buildListTile(
            icon: Icons.settings_suggest_outlined,
            iconColor: Colors.green,
            title: "General",
          ),
          buildListTile(
            icon: Icons.info_outline_rounded,
            iconColor: Colors.orange,
            title: "About Us",
          ),
          Divider(height: 40, thickness: 1, color: Colors.grey[300]),
          buildListTile(
            icon: Icons.exit_to_app,
            iconColor: Colors.redAccent,
            title: "Log Out",
          ),
        ],
      ),
    );
  }

  Widget buildListTile({
    required IconData icon,
    required Color iconColor,
    required String title,
  }) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 20),
    );
  }
}
