class SpotlightModel {
  SpotlightModel({
    required this.title,
    required this.img,
    required this.veg,
    required this.free,
    required this.price,
    required this.qty,
    required this.measure,
    required this.rating,
    required this.expDate,
    required this.expTime,
  });

  final String title;
  final String img;
  final bool veg;
  final bool free;
  final int price;
  final int qty;
  final String measure;
  final double rating;
  final String expDate;
  final String expTime;
}

List spotlightList = [
  SpotlightModel(
      title: 'Dal Chawal',
      img:
          'https://imgs.search.brave.com/aMB_3xvmKfoDLzYlmfMzxfz1OzWHj9RPBflKs_y69Zg/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/dmVnYW5iZWxsLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MS8wOS9EYWwtQ2hh/d2FsLTcuanBn',
      veg: true,
      free: false,
      price: 150,
      qty: 5,
      measure: 'kg',
      rating: 4.8,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Butter Chicken',
      img:
          'https://imgs.search.brave.com/uIo0JuHgLrjK1O4hKZP0FvfGhUeAUA3eL8v1fLIlr-g/rs:fit:1000:1000:1/g:ce/aHR0cHM6Ly93d3cu/bGljaW91cy5pbi9i/bG9nL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIwLzEwL2J1dHRl/ci1jaGlja2VuLS5q/cGc',
      veg: false,
      free: false,
      price: 210,
      qty: 8,
      measure: 'kg',
      rating: 4.2,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Choco Chips Cake',
      img:
          'https://imgs.search.brave.com/W_aeXBpXOujBV3r8TMw33dmxOWPnmIxGvldMQnSJw6I/rs:fit:850:850:1/g:ce/aHR0cHM6Ly93d3cu/bGFib25lbGZpbmVi/YWtpbmcuc2hvcC93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMS8w/Mi9TQU4tRlJBTkNJ/U0NPLUNIT0NPTEFU/RS1DSElQLUNBS0Uu/anBn',
      veg: true,
      free: false,
      price: 110,
      qty: 1,
      measure: 'kg',
      rating: 4.9,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  // change image
  SpotlightModel(
      title: 'Chicken Biryani',
      img:
          'https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg',
      veg: false,
      free: true,
      price: 0,
      qty: 23,
      measure: 'kg',
      rating: 2.0,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Tandoori Chicken',
      img:
          'https://www.cubesnjuliennes.com/wp-content/uploads/2022/12/Tandoori-Chicken-Recipe.jpg',
      veg: false,
      free: false,
      price: 180,
      qty: 8,
      measure: 'pcs',
      rating: 4.2,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Chocolate Truffle Pastry',
      img:
          'http://cdn.shopify.com/s/files/1/0279/6329/3831/products/Chocolate-Truffle-Pastries_grande.jpg?v=1577958105',
      veg: true,
      free: false,
      price: 93,
      qty: 5,
      measure: 'pcs',
      rating: 4.3,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Pineapple Pastry',
      img:
          'http://samirasrecipe.com/wp-content/uploads/2020/08/Pineapple-Pastry-3-1024x1024.jpg',
      veg: true,
      free: false,
      price: 68,
      qty: 4,
      measure: 'pcs',
      rating: 4.7,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Cashew Biscuit',
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwgrkZleIsy2GtsGfZYF2xb93m73etvrj3w&usqp=CAU',
      veg: true,
      price: 177,
      qty: 5,
      free: true,
      measure: 'kg8',
      rating: 4.9,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Veg Puuff',
      img:
          'https://1.bp.blogspot.com/-ubMhXAAgD0Y/X8y7ZQXfiCI/AAAAAAAAc5I/H1giwiNTdjQdcnhp7qxA6wBS4m_9cieVQCLcBGAsYHQ/s1050/veg_puff_5_1.jpg',
      veg: true,
      free: false,
      price: 30,
      qty: 35,
      measure: 'pcs',
      rating: 4.9,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Paneer Butter Masala',
      img:
          'https://www.ruchiskitchen.com/wp-content/uploads/2020/12/Paneer-butter-masala-recipe-3-500x500.jpg',
      veg: true,
      free: true,
      price: 0,
      qty: 3,
      measure: 'kgs',
      rating: 4.1,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Chicken Sandwich',
      img:
          'https://c.ndtvimg.com/2020-09/5mts3dpg_sandwich_625x300_10_September_20.jpg',
      veg: false,
      free: false,
      price: 102,
      qty: 5,
      measure: 'pcs',
      rating: 3.8,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
    title: 'Double ka Meetha',
    img:
        'https://s3-ap-south-1.amazonaws.com/betterbutterbucket-silver/delicacies-on-the-plate-pallavi-kitchen20180608102804594.jpeg',
    veg: true,
    free: true,
    price: 80,
    qty: 4,
    measure: 'pcs',
    rating: 4.9,
    expDate: '31.03.2023',
    expTime: '12:00am',
  ),
  SpotlightModel(
    title: 'Paneer Butter Masala',
    img:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSTovVXAR_fVRIEfAWpiIH8-I8qpGxCOwIzWSPwWuex17OTHBjq',
    veg: true,
    free: false,
    price: 100,
    qty: 2,
    measure: 'kg',
    rating: 4.5,
    expDate: '31.03.2023',
    expTime: '12:00am',
  ),
  SpotlightModel(
    title: 'Paneer tikka',
    img:
        'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTIub5cwl9RMFiA4VV7lK7if7qLmJgm2rOw-kMztzTXo8YoFl8A',
    veg: true,
    free: false,
    price: 150,
    qty: 6,
    measure: 'kg',
    rating: 4.5,
    expDate: '31.03.2023',
    expTime: '12:00am',
  ),
  SpotlightModel(
    title: 'Egg curry',
    img:
        'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTXEfwF-o4Qj9hgH_P8bZXM4TX42GvyliZNhFWvgSscdaTyh0oO',
    veg: false,
    free: false,
    price: 150,
    qty: 4,
    measure: 'kg',
    rating: 4.5,
    expDate: '31.03.2023',
    expTime: '12:00am',
  ),
  SpotlightModel(
    title: 'Paneer puff pastry',
    img:
        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSjXpolbD8A0hHqdHgMgou3XW7r70cMNhMw6Y4VBNEWbOo74GXi',
    veg: true,
    free: false,
    price: 250,
    qty: 6,
    measure: 'kg',
    rating: 4.5,
    expDate: '31.03.2023',
    expTime: '12:00am',
  ),
];
