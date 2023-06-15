import 'package:flutter/material.dart';
import '../themes/themes.dart';

// orders page items

List<Map<String, dynamic>> ordersPageItems = [
  {
    'icon': const Icon(
      Icons.fiber_new_rounded,
      size: 32,
      color: white,
    ),
    'label': 'New Orders',
    'color': Colors.pink,
    'bgcolor': Colors.pink.withOpacity(0.2)
  },
  {
    'icon': const Icon(
      Icons.local_shipping_rounded,
      size: 32,
      color: white,
    ),
    'label': 'Shipped Orders',
    'color': const Color.fromARGB(255, 232, 208, 0),
    'bgcolor': const Color.fromARGB(255, 232, 208, 0).withOpacity(0.2)
  },
  {
    'icon': const Icon(
      Icons.task_alt,
      size: 32,
      color: white,
    ),
    'label': 'Delivered Orders',
    'color': Colors.green,
    'bgcolor': Colors.green.withOpacity(0.2)
  },
  {
    'icon': const Icon(
      Icons.cancel,
      size: 32,
      color: white,
    ),
    'label': 'Cancelled Orders',
    'color': Colors.red,
    'bgcolor': Colors.red.withOpacity(0.2)
  },
  {
    'icon': const Icon(
      Icons.shopping_bag_rounded,
      size: 32,
      color: white,
    ),
    'label': 'All Orders',
    'color': Colors.blue,
    'bgcolor': Colors.blue.withOpacity(0.2)
  },
];

//dashboard overview grid items

List<Map<String, dynamic>> overViewItems = [
  {
    'title': 'Sale',
    'icon': const Icon(
      Icons.currency_rupee,
      color: Color.fromARGB(255, 0, 30, 255),
      size: 28,
    ),
    'color': const Color.fromARGB(255, 0, 30, 255).withOpacity(0.2)
  },
  {
    'title': 'Orders',
    'icon': const Icon(
      Icons.shopping_bag_outlined,
      color: Colors.orange,
      size: 28,
    ),
    'color': Colors.orange.withOpacity(0.2)
  },
  {
    'title': 'Cancel',
    'icon': const Icon(
      Icons.cancel,
      color: Colors.red,
      size: 28,
    ),
    'color': Colors.red.withOpacity(0.2)
  },
  {
    'title': 'Return',
    'icon': const Icon(
      Icons.vertical_align_bottom,
      color: Colors.teal,
      size: 28,
    ),
    'color': Colors.teal.withOpacity(0.2)
  },
  {
    'title': 'Low Stocks',
    'icon': const Icon(
      Icons.trending_down,
      color: Colors.brown,
      size: 28,
    ),
    'color': Colors.brown.withOpacity(0.2)
  },
  {
    'title': 'Pending',
    'icon': const Icon(
      Icons.pending_actions,
      color: Colors.lime,
      size: 28,
    ),
    'color': Colors.lime.withOpacity(0.2)
  },
  {
    'title': 'Users',
    'icon': const Icon(
      Icons.person_outlined,
      color: Colors.purple,
      size: 28,
    ),
    'color': Colors.purple.withOpacity(0.2)
  }
];
