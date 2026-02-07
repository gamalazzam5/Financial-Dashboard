import 'package:flutter/cupertino.dart';

class TransactionModel {
  final IconData icon;
  final String receiver;
  final String type;
  final String date;
  final String amount;

  const TransactionModel({
    required this.icon,
    required this.receiver,
    required this.type,
    required this.date,
    required this.amount,
  });
}
