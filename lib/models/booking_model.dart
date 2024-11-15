import 'package:flutter/material.dart';

class BookingModel extends ChangeNotifier {
  static final BookingModel _instance = BookingModel._internal();

  factory BookingModel() {
    return _instance;
  }

  BookingModel._internal();

  List<dynamic> _bookingList = [];

  void setBookings({required List<dynamic> bookingList}) {
    _bookingList = bookingList;
    notifyListeners();
  }

  List getBookings() {
    return _bookingList;
  }
}
