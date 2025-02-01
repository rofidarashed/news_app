import 'package:flutter/material.dart';

class NewsInfo extends StatelessWidget {
  const NewsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://images.pexels.com/photos/355508/pexels-photo-355508.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'data',
            maxLines: 2,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const Text(
            'data',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
