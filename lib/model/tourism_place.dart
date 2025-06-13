class TourismPlace {
  final String name;
  final String location;
  final String description;
  final String openDays;
  final String openTime;
  final String ticketPrice;
  final String imageAsset;
  final List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Jinzhou',
    location: 'Wilayah Huanglong',
    description:
        'Selamat datang di Jinzhou, kota futuristik yang berdiri megah di tengah reruntuhan dunia lama. Sebagai pusat pemerintahan dan budaya wilayah Huanglong, Jinzhou adalah simbol kekuatan, harapan, dan kebangkitan umat manusia setelah bencana besar Lament.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 45.000',
    imageAsset: 'images/huanglong.png',
    imageUrls: [
      'images/huanglong.png',
      'images/rinacita.jpg',
      'images/fermemint.jpg',
    ],
  ),
  TourismPlace(
    name: 'Ragunna',
    location: 'Rinascita',
    description:
        'kota pelabuhan yang berkembang pesat, distrik-distriknya terhubung oleh jalur air yang berliku, menciptakan suasana yang memadukan keindahan alam dengan kemajuan teknologi.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25.000',
    imageAsset: 'images/rinacita.jpg',
    imageUrls: [
      'images/huanglong.png',
      'images/rinacita.jpg',
      'images/fermemint.jpg',
    ],
  ),
  TourismPlace(
    name: 'fermenint ',
    location: 'huaglong',
    description:
        'baru .',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 25.000',
    imageAsset: 'images/fermemint.jpg',
    imageUrls: [
      'images/huanglong.png',
      'images/rinacita.jpg',
      'images/fermemint.jpg',
    ],
  ),
  TourismPlace(
    name: 'Honda Supra GTR 150 ',
    location: 'Bali',
    description:
        'baru .',
    openDays: 'Ready ',
    openTime: 'rental perhari',
    ticketPrice: 'Rp 100.000 /hari ',
    imageAsset: 'images/Honda Supra GTR 150.jpg',
    imageUrls: [
      'images/huanglong.png',
      'images/rinacita.jpg',
      'images/fermemint.jpg',
    ],
  ),
];
