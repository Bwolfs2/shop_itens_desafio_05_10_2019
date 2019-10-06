class ProductModel {
  final String name;
  final double rate;
  final int bougth;
  final double price;
  final String image;
  final LastRate lastRate;

  getFormatedPrice() {
    if (price > 1000000) {
      return "${(price / 1000000).truncate()}M";
    }

    if (price > 1000) {
      return "${(price / 1000).truncate()}K";
    }
    return "${price.truncate()}";
  }


  ProductModel(
      {this.name,
      this.rate,
      this.bougth,
      this.price,
      this.image,
      this.lastRate});
}

class LastRate {
  final String name;
  final double rate;
  final String rateDescription;

    String getReducedName() {
    var separetedname = name.split(" ");

    if (separetedname.length > 1) {
      return separetedname[0].substring(0, 1).toUpperCase() + separetedname[0].substring(1, 2).toUpperCase();
    }
    return separetedname[0].substring(0, 2);
  }


  LastRate({this.name, this.rate, this.rateDescription});
}

List<ProductModel> get getProducts => [
      ProductModel(
        name: "Tenis Nike Jordan III",
        rate: 4.5,
        bougth: 1200,
        price: 13000,
        image:
            "https://a-static.mlcdn.com.br/618x463/tenis-casual-feminino-flat-form-solado-plataforma-lancamento-sapatofran/sapatofran/4907463398/43d83711c444e65856c8a85fb7f00c47.jpg",
        lastRate: LastRate(
            rate: 3.1,
            name: "Bwolf",
            rateDescription:
                "1 The Shoes were shipped one day before the shopping but this..."),
      ),
      ProductModel(
        name: "Tenis Nike Jordan III",
        rate: 1.7,
        bougth: 200,
        price: 100,
        image:
            "https://imgcentauro-a.akamaihd.net/900x900/9265380P/tenis-oxer-slip-feminino-img.jpg",
        lastRate: LastRate(
            rate: 3.1,
            name: "Mary Jane",
            rateDescription:
                "2 The Shoes were shipped one day before the shopping but this..."),
      ),
      ProductModel(
        name: "Tenis Nike Jordan III",
        rate: 2.5,
        bougth: 1200,
        price: 85000,
        image:
            "https://static.netshoes.com.br/produtos/tenis-mizuno-wave-prophecy-8-masculino/08/D16-2704-108/D16-2704-108_zoom1.jpg",
        lastRate: LastRate(
            rate: 3.1,
            name: "Joao Blanco",
            rateDescription:
                "3 The Shoes were shipped one day before the shopping but this..."),
      ),
      ProductModel(
          name: "Tenis Mais Top",
          rate: 4.1,
          bougth: 800,
          price: 3080000,
          image:
              "https://a-static.mlcdn.com.br/618x463/tenis-casual-feminino-flat-form-solado-plataforma-lancamento-sapatofran/sapatofran/4907463398/43d83711c444e65856c8a85fb7f00c47.jpg",
          lastRate: LastRate(
              rate: 3.1,
              name: "Bwolf",
              rateDescription:
                  "4 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")),
    ];
