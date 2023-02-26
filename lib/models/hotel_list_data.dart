// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking_ui/models/room_data.dart';
import 'package:flutter_hotel_booking_ui/utils/localfiles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelListData {
  String imagePath;
  String titleTxt;
  String subTxt;
  DateText? date;
  String dateTxt;
  String roomSizeTxt;
  RoomData? roomData;
  double dist;
  double rating;
  int reviews;
  int perNight;
  bool isSelected;
  PeopleSleeps? peopleSleeps;
  LatLng? location;
  Offset? screenMapPin; // we used this screen Offset for adding on Map layer

  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dateTxt = "",
    this.roomSizeTxt = "",
    this.roomData,
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 1800,
    this.isSelected = false,
    this.date,
    this.peopleSleeps,
    this.location,
    this.screenMapPin,
  });

  // we need location in this hotelList bcz we using that in map
  static List<HotelListData> hotelList = [
    HotelListData(
      imagePath: Localfiles.hotel_1,
      titleTxt: 'Taj Hotel',
      subTxt: 'Colombo, SriLanka',
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 2000,
      roomData: RoomData(1, 2),
      isSelected: true,
      date: DateText(1, 5),
      location: LatLng(6.9271, 79.8612),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_2,
      titleTxt: 'eHotelier Hotel',
      subTxt: 'Horana, SriLanka',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 2000,
      roomData: RoomData(1, 3),
      isSelected: false,
      date: DateText(2, 6),
      location: LatLng(6.7230, 80.0647),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_3,
      titleTxt: 'Serendiva Hotel',
      subTxt: 'Jaffna, SriLanka',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 6000,
      roomData: RoomData(2, 3),
      isSelected: false,
      date: DateText(5, 9),
      location: LatLng(9.6615, 80.0255),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_4,
      titleTxt: 'Queen Hotel',
      subTxt: 'Galle, SriLanka',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 7000,
      isSelected: false,
      roomData: RoomData(2, 2),
      date: DateText(1, 5),
      location: LatLng(6.0329, 80.2168),
    ),
    HotelListData(
      imagePath: Localfiles.hotel_5,
      titleTxt: 'Sri Hotel',
      subTxt: 'Anuradhapura, SriLanka',
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      isSelected: false,
      perNight: 2000,
      roomData: RoomData(1, 7),
      date: DateText(1, 4),
      location: LatLng(8.3114, 80.4037),
    ),

  ];

  static List<HotelListData> popularList = [
    HotelListData(
      imagePath: Localfiles.gall_pop,
      titleTxt: 'Galle',
    ),
    HotelListData(
      imagePath: Localfiles.jaffna_pop,
      titleTxt: 'Jaffna',
    ),
    HotelListData(
      imagePath: Localfiles.colombo_pop,
      titleTxt: 'Colombo',
    ),
    HotelListData(
      imagePath: Localfiles.anuradhapura_pop,
      titleTxt: 'AnuradhaPura',
    ),
    HotelListData(
      imagePath: Localfiles.horana_pop,
      titleTxt: 'Horana',
    ),
    HotelListData(
      imagePath: Localfiles.nuweraliya_pop,
      titleTxt: 'NuweraEliya',
    ),
    HotelListData(
      imagePath: Localfiles.palanaruwa_pop,
      titleTxt: 'Polannaruwa',
    ),
    
    
  ];

  static List<HotelListData> reviewsList = [
    HotelListData(
      imagePath: Localfiles.avatar1,
      titleTxt: 'Alex Paul',
      subTxt:
          'This is located in a great spot close to shops and bars, very quiet location',
      rating: 7.0,
      dateTxt: '21 May, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar3,
      titleTxt: 'Perera',
      subTxt:
          'Good staff, very comfortable bed, very quiet location, place could do with an update',
      rating: 8.0,
      dateTxt: '19 Dec, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar5,
      titleTxt: 'Pasan Kumar',
      subTxt:
          'This is located in a great spot close to shops and bars, very quiet location',
      rating: 6.0,
      dateTxt: '21 Mar, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar2,
      titleTxt: 'May June',
      subTxt:
          'Good staff, very comfortable bed, very quiet location, place could do with an update',
      rating: 7.0,
      dateTxt: '01 Apr, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar4,
      titleTxt: 'Lesley Rivas',
      subTxt:
          'This is located in a great spot close to shops and bars, very quiet location',
      rating: 8.5,
      dateTxt: '05 May, 2022',
    ),
    HotelListData(
      imagePath: Localfiles.avatar6,
      titleTxt: 'Carlos Lasmar',
      subTxt:
          'Good staff, very comfortable bed, very quiet location, place could do with an update',
      rating: 6.5,
      dateTxt: '21 Sep, 2021',
    ),
    HotelListData(
      imagePath: Localfiles.avatar7,
      titleTxt: 'Oliver Smith',
      subTxt:
          'This is located in a great spot close to shops and bars, very quiet location',
      rating: 9.0,
      dateTxt: '10 May, 2022',
    ),
  ];

  static List<HotelListData> romeList = [
    HotelListData(
        imagePath:
            'assets/images/room_1.jpg assets/images/room_2.jpg assets/images/room_3.jpg',
        titleTxt: 'Deluxe Room',
        perNight: 1800,
        dateTxt: 'Sleeps 3 people',
        roomData: RoomData(2, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_4.jpg assets/images/room_5.jpg assets/images/room_6.jpg',
        titleTxt: 'Premium Room',
        perNight: 2000,
        dateTxt: 'Sleeps 3 people + 2 children',
        roomData: RoomData(3, 2)),
    HotelListData(
        imagePath:
            'assets/images/room_7.jpg assets/images/room_8.jpg assets/images/room_9.jpg',
        titleTxt: 'Queen Room',
        perNight: 2400,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
    HotelListData(
        imagePath:
            'assets/images/room_10.jpg assets/images/room_11.jpg assets/images/room_12.jpg',
        titleTxt: 'King Room',
        perNight: 2400,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
    HotelListData(
        imagePath:
            'assets/images/room_11.jpg assets/images/room_1.jpg assets/images/room_2.jpg',
        titleTxt: 'Hollywood Twin\nRoom',
        perNight: 2600,
        dateTxt: 'Sleeps 4 people + 4 children',
        roomData: RoomData(4, 4)),
  ];

  static List<HotelListData> hotelTypeList = [
    HotelListData(
      imagePath: Localfiles.hotel_Type_1,
      titleTxt: 'hotel_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_2,
      titleTxt: 'Backpacker_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_3,
      titleTxt: 'Resort_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_4,
      titleTxt: 'villa_data',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_5,
      titleTxt: 'apartment',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_6,
      titleTxt: 'guest_house',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_7,
      titleTxt: 'motel',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_8,
      titleTxt: 'accommodation',
      isSelected: false,
    ),
    HotelListData(
      imagePath: Localfiles.hotel_Type_9,
      titleTxt: 'Bed_breakfast',
      isSelected: false,
    ),
  ];
  static List<HotelListData> lastsSearchesList = [
    HotelListData(
      imagePath: Localfiles.colombo_pop,
      titleTxt: 'Colombo',
      roomData: RoomData(1, 3),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Dec',
    ),
    HotelListData(
      imagePath: Localfiles.sigiri_pop,
      titleTxt: 'Sigiriya',
      roomData: RoomData(1, 3),
      date: DateText(12, 24),
      dateTxt: '12 - 24 Sep',
    ),

    HotelListData(
      imagePath: Localfiles.kandy,
      titleTxt: 'Kandy',
      roomData: RoomData(1, 3),
      date: DateText(20, 22),
      dateTxt: '20 - 22 Sep',
    ),
    HotelListData(
      imagePath: Localfiles.puttalam,
      titleTxt: 'Puttalam',
      roomData: RoomData(12, 22),
      date: DateText(12, 22),
      dateTxt: '12 - 22 Nov',
    ),
    HotelListData(
      imagePath: Localfiles.matara,
      titleTxt: 'Matara',
      roomData: RoomData(10, 15),
      date: DateText(10, 15),
      dateTxt: '10 - 15 Dec',
    ),
    
  ];
}
