import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    List<Product> allProducts = <Product>[
      // 🔹 Electronics
      Product(
        category: Category.electronics,
        id: 1,
        name: "Samsung Galaxy S21",
        price: 12000000,
        imageUrl: "https://images.samsung.com/is/image/samsung/p6pim/id/galaxys21.png",
      ),
      Product(
        category: Category.electronics,
        id: 2,
        name: "Sony WH-1000XM4",
        price: 4500000,
        imageUrl: "https://m.media-amazon.com/images/I/71o8Q5XJS5L._AC_SL1500_.jpg",
      ),
      Product(
        category: Category.electronics,
        id: 3,
        name: "Asus ROG Laptop",
        price: 23000000,
        imageUrl: "https://dlcdnwebimgs.asus.com/gain/ba3f9ff9-rog-laptop.png",
      ),
      Product(
        category: Category.electronics,
        id: 4,
        name: "Canon EOS 90D",
        price: 17000000,
        imageUrl: "https://i1.adis.ws/i/canon/eos-90d-frt_wit",
      ),
      Product(
        category: Category.electronics,
        id: 5,
        name: "LG 55 Inch OLED TV",
        price: 25000000,
        imageUrl: "https://www.lg.com/id/images/tv/md07555751/gallery/medium01.jpg",
      ),

      // 🔹 Fashion
      Product(
        category: Category.fashion,
        id: 6,
        name: "Nike Air Max",
        price: 2000000,
        imageUrl: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b19b7c6d-6d02-4e73-b8db-223cbeef7f74/air-max-shoes.png",
      ),
      Product(
        category: Category.fashion,
        id: 7,
        name: "Levi’s Denim Jacket",
        price: 1500000,
        imageUrl: "https://lsco.scene7.com/is/image/lsco/levis/clothing/jackets/denim-jacket.jpg",
      ),
      Product(
        category: Category.fashion,
        id: 8,
        name: "Casio G-Shock",
        price: 1800000,
        imageUrl: "https://gshock.casio.com/content/dam/gshock/product/g-shock.png",
      ),
      Product(
        category: Category.fashion,
        id: 9,
        name: "Batik Modern",
        price: 500000,
        imageUrl: "https://cdn.idntimes.com/content-images/community/2019/08/20190820-104226-cc53e3a6286a321c5c92f3d9730b2f49.jpg",
      ),
      Product(
        category: Category.fashion,
        id: 10,
        name: "Michael Kors Bag",
        price: 3200000,
        imageUrl: "https://www.michaelkors.global/dw/image/v2/BGBV_PRD/on/demandware.static/-/Sites-mk-master-catalog/default/dw5d3f3b69/30S1GTVT3L-0010_1.jpg",
      ),

      // 🔹 Home
      Product(
        category: Category.home,
        id: 11,
        name: "Philips Rice Cooker",
        price: 900000,
        imageUrl: "https://www.philips.co.id/c-dam/b2c/category-pages/kitchen/rice-cookers/rice-cooker.jpg",
      ),
      Product(
        category: Category.home,
        id: 12,
        name: "Xiaomi Smart Vacuum",
        price: 3500000,
        imageUrl: "https://i01.appmifile.com/webfile/globalimg/products/vacuum-cleaner.png",
      ),
      Product(
        category: Category.home,
        id: 13,
        name: "IKEA Sofa Bed",
        price: 7500000,
        imageUrl: "https://www.ikea.com/id/in/images/products/friheten-sofa-bed__0736965_pe740564_s5.jpg",
      ),
      Product(
        category: Category.home,
        id: 14,
        name: "Panasonic Microwave",
        price: 1800000,
        imageUrl: "https://panasonic.com/images/microwave.jpg",
      ),
      Product(
        category: Category.home,
        id: 15,
        name: "Miyako Blender",
        price: 450000,
        imageUrl: "https://miyako.co.id/wp-content/uploads/2021/05/BL-211-Plymouth-Blue.jpg",
      ),

      // 🔹 Beauty
      Product(
        category: Category.beauty,
        id: 16,
        name: "Skincare Serum",
        price: 250000,
        imageUrl: "https://images.soco.id/0AbcSerumSkincare.jpg",
      ),
      Product(
        category: Category.beauty,
        id: 17,
        name: "Wardah Foundation",
        price: 120000,
        imageUrl: "https://images.wardahbeauty.com/product/foundation.jpg",
      ),
      Product(
        category: Category.beauty,
        id: 18,
        name: "Make Over Lipstick",
        price: 95000,
        imageUrl: "https://makeoverforall.com/wp-content/uploads/2021/06/makeover-lipstick.jpg",
      ),
      Product(
        category: Category.beauty,
        id: 19,
        name: "Maybelline Mascara",
        price: 150000,
        imageUrl: "https://maybelline.com/images/mascara.jpg",
      ),
      Product(
        category: Category.beauty,
        id: 20,
        name: "Garnier Micellar Water",
        price: 35000,
        imageUrl: "https://garnier.co.id/images/micellar.jpg",
      ),
    ];

    // copy aja biar sampai 38
    for (int i = 21; i <= 38; i++) {
      allProducts.add(
        Product(
          category: Category.electronics,
          id: i,
          name: "Produk Dummy $i",
          price: 100000 * i,
          imageUrl: "https://via.placeholder.com/200x300.png?text=Produk+$i",
        ),
      );
    }

    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((p) => p.category == category).toList();
    }
  }
}
