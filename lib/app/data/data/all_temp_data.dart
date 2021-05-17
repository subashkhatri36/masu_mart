import 'package:masu_mart/app/data/model/category_model.dart';
import 'package:masu_mart/app/data/model/product_model.dart';

List<Product> productschicken = [
  new Product(
      index: 0,
      nepali: 'कुखुरा',
      productName: 'Chicken',
      productPrice: 410.0,
      totalprice: 410.0,
      categoryId: '1',
      productDetail: 'Fresh Chicken meat',
      productUrl:
          'https://1.bp.blogspot.com/-vBrmezU6CmE/YKEMhl3xCPI/AAAAAAAAAXs/vUOZToj44KowjcgjXXyNweGAw85ef89CQCLcBGAsYHQ/s320/chicken.png',
      networkimage: true,
      bonelessPrice: 20,
      noskinPrice: 10,
      boneless: true,
      skinless: true,
      qtyType: 'kg',
      active: true,
      pricerisefall: 'rise'),
  new Product(
      index: 1,
      nepali: 'कुखुराको मासु',
      productName: 'Chicken Meat',
      productPrice: 410.0,
      totalprice: 410.0,
      categoryId: '1',
      productDetail: 'Fresh Chicken meat',
      productUrl:
          'https://www.crushpixel.com/big-static14/preview4/pieces-raw-chicken-meat-fresh-1729597.jpg',
      networkimage: true,
      bonelessPrice: 20,
      noskinPrice: 10,
      boneless: true,
      skinless: true,
      qtyType: 'kg',
      active: true,
      pricerisefall: 'rise'),
  new Product(
    index: 2,
    nepali: 'कुखुराको पखेटा',
    productName: 'Chicken Wings',
    productPrice: 420.0,
    totalprice: 420.0,
    categoryId: '1',
    productDetail: 'Fresh Chicken Wings',
    productUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRKGVJffDEsrjX94tMWUrNX8tSKEnoXhGfYw&usqp=CAU',
    networkimage: true,
    bonelessPrice: 20,
    noskinPrice: 10,
    boneless: false,
    skinless: false,
    qtyType: 'kg',
    active: true,
  ),
  new Product(
    index: 3,
    nepali: 'कुखुराको छाती',
    productName: 'Chicken Breast',
    productPrice: 450.0,
    totalprice: 450.0,
    categoryId: '1',
    productDetail: 'Fresh Chicken breast',
    productUrl:
        'https://chefsmandala.com/wp-content/uploads/2018/03/Chicken-Breast.jpg',
    networkimage: true,
    bonelessPrice: 20,
    noskinPrice: 10,
    boneless: false,
    skinless: false,
    qtyType: 'kg',
    active: true,
  ),
  new Product(
    index: 4,
    nepali: 'कुखुराको खुट्टा',
    productName: 'Chicken Leg',
    productPrice: 440.0,
    totalprice: 440.0,
    categoryId: '1',
    productDetail: 'Fresh Chicken leg piece',
    productUrl:
        'https://previews.123rf.com/images/dulsita/dulsita1307/dulsita130700068/21201847-pieces-of-raw-chicken-meat.jpg',
    networkimage: true,
    bonelessPrice: 20,
    noskinPrice: 10,
    boneless: true,
    skinless: true,
    qtyType: 'kg',
    active: true,
  ),
  new Product(
    index: 1,
    nepali: 'सम्पूर्ण कुखुरा',
    productName: 'Whole Chicken',
    productPrice: 400.0,
    totalprice: 400.0,
    categoryId: '1',
    productDetail: 'Fresh Whole Chicken',
    productUrl:
        'https://5.imimg.com/data5/HE/EO/GK/SELLER-87618870/broiler-chicken-meat-500x500.jpg',
    networkimage: true,
    bonelessPrice: 20,
    noskinPrice: 10,
    boneless: true,
    skinless: true,
    qtyType: 'kg',
    active: true,
  ),
];

List<Category> categorys = [
  //,🦢🦂🦐🦞🦀🦗🐙🐠🐟🚛
  new Category(
      id: '1',
      icon: '🐔',
      name: 'Chicken',
      active: true,
      isSelected: true,
      nepali: 'कुखुरा',
      image: false),
  new Category(
      id: '7',
      icon: '🐐 ',
      name: 'Khasi',
      active: true,
      nepali: 'खसी',
      image: false),
  new Category(
      id: '2',
      icon: '🐓',
      name: 'Bhale',
      active: true,
      nepali: 'भाले',
      image: false),
  new Category(
      id: '3',
      icon: '🦃',
      name: 'Turkey',
      active: true,
      nepali: 'टर्की',
      image: false),
  new Category(
      id: '4',
      icon: '🦆',
      name: 'Duck',
      active: true,
      nepali: 'हाँस',
      image: false),
  new Category(
      id: '5',
      icon: '🦈',
      name: 'Fish',
      active: true,
      nepali: 'माछा',
      image: false),
  new Category(
      id: '6',
      icon: '🐃',
      name: 'Ranga',
      active: true,
      nepali: 'राँगा',
      image: false), //

  new Category(
      id: '8',
      icon: '🐏',
      name: 'Sheep',
      active: true,
      nepali: 'भेडा',
      image: false),
  new Category(
      id: '9',
      icon: '🐰',
      name: 'Rabbit',
      active: true,
      nepali: 'खरायो',
      image: false),
  //QuailAha,,,🐰🐃🦬

  //
];