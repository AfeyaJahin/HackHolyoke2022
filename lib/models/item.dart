class Item {
  const Item(this.name, this.price, this.image);
  final String name;
  final String price;
  final String image;

  static Item get a {
    return const Item('Used Doc Martens Boots', '80',
        'https://media.karousell.com/media/photos/products/2021/4/11/used_dr_martens_boots_1618116431_d7777ad1.jpg');
  }

  static Item get b {
    return const Item('Introduction to Algorithms Book', '10 for 4 months',
        'https://media.karousell.com/media/photos/products/2020/6/11/bnib_introduction_to_algorithm_1591879552_3c11ed06_progressive.jpg');
  }

  static get c {
    return const Item('Zara Suit Set', '10 for 7 days',
        'https://i.ebayimg.com/images/g/m3kAAOSwcCljArI1/s-l400.jpg');
  }

  static get d {
    return const Item('Professional Makeup Kit', '90',
        'https://m.media-amazon.com/images/I/810HhM5SC6L._AC_SL1500_.jpg');
  }

  static get e {
    return const Item('Calculus 1 Tutor', '20 for 1 hour',
        'https://p.tutorme.click/media/e04e3889e26b58d5806518d22f690b9e.jpeg');
  }

  static get f {
    return const Item('Ride to Bradley Airport', '45',
        'https://www.goget.com.au/wp-content/uploads/2018/05/Three-young-people-sharing-the-back-seat-of-a-car-carpooling-their-way-to-work-this-is-carpooling-rather-than-car-sharing-what-is-carpool.jpg');
  }

  static List<Item> get getItems {
    return const <Item>[
      Item('Used Doc Martens Boots', '80',
          'https://media.karousell.com/media/photos/products/2021/4/11/used_dr_martens_boots_1618116431_d7777ad1.jpg'),
      Item('Introduction to Algorithms Book', '10 for 4 months',
          'https://media.karousell.com/media/photos/products/2020/6/11/bnib_introduction_to_algorithm_1591879552_3c11ed06_progressive.jpg'),
      Item('Zara Suit Set', '10 for 7 days',
          'https://i.ebayimg.com/images/g/m3kAAOSwcCljArI1/s-l400.jpg'),
      Item('Dogwalking', '20 for 1 hour',
          'https://blog.petloverscentre.com/wp-content/uploads/2020/06/Darren-walking-dogs.jpg'),
      Item('Calculus 1 Tutor', '20 for 1 hour',
          'https://images.squarespace-cdn.com/content/v1/5c44ea9771069967effbe11d/19e48791-1ea1-4296-91b1-fd754c9ea328/tutor.jpg'),
      Item('Dog Walking', '50 for 3 hours',
          'https://nationaltoday.com/wp-content/uploads/2022/01/National-Dog-Walker-Appreciation-Day.jpg'),
      Item('Ride to Bradley', '45',
          'https://www.goget.com.au/wp-content/uploads/2018/05/Three-young-people-sharing-the-back-seat-of-a-car-carpooling-their-way-to-work-this-is-carpooling-rather-than-car-sharing-what-is-carpool.jpg'),
      Item('Professional Makeup Kit', '90',
          'https://m.media-amazon.com/images/I/810HhM5SC6L._AC_SL1500_.jpg'),
    ];
  }
}
