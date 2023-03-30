class SpotlightModel {
  SpotlightModel({
    required this.title,
    required this.img,
    required this.veg,
    required this.price,
    required this.qty,
    required this.rating,
    required this.expDate,
    required this.expTime,
  });

  final String title;
  final String img;
  final bool veg;
  final int price;
  final int qty;
  final double rating;
  final String expDate;
  final String expTime;
}

List SpotlightList = [
  SpotlightModel(
      title: 'Dal Chawal',
      img:
          'https://imgs.search.brave.com/aMB_3xvmKfoDLzYlmfMzxfz1OzWHj9RPBflKs_y69Zg/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/dmVnYW5iZWxsLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAy/MS8wOS9EYWwtQ2hh/d2FsLTcuanBn',
      veg: true,
      price: 150,
      qty: 5,
      rating: 4.8,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Butter Chicken',
      img:
          'https://imgs.search.brave.com/uIo0JuHgLrjK1O4hKZP0FvfGhUeAUA3eL8v1fLIlr-g/rs:fit:1000:1000:1/g:ce/aHR0cHM6Ly93d3cu/bGljaW91cy5pbi9i/bG9nL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDIwLzEwL2J1dHRl/ci1jaGlja2VuLS5q/cGc',
      veg: false,
      price: 210,
      qty: 8,
      rating: 4.2,
      expDate: '31.03.2023',
      expTime: '12:00am'),
  SpotlightModel(
      title: 'Choco Chips Cake',
      img:
          'https://imgs.search.brave.com/W_aeXBpXOujBV3r8TMw33dmxOWPnmIxGvldMQnSJw6I/rs:fit:850:850:1/g:ce/aHR0cHM6Ly93d3cu/bGFib25lbGZpbmVi/YWtpbmcuc2hvcC93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyMS8w/Mi9TQU4tRlJBTkNJ/U0NPLUNIT0NPTEFU/RS1DSElQLUNBS0Uu/anBn',
      veg: true,
      price: 110,
      qty: 1,
      rating: 4.9,
      expDate: '31.03.2023',
      expTime: '12:00am')
];
