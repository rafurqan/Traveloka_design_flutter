import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Awal extends StatefulWidget {
  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('traveloka'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          Akun(),
          Divider(),
          Utama(),
          MenuTambahan(),
          Promo(),
        ],
      ),
    );
  }
}

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://img.icons8.com/ios/452/user-group-man-man.png"),
              ),
          ),
        ),
        title: Text(
          'Rahmatullh Furqan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text('300 point'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            RaisedButton(
              child: Text('Traveloka Pay'),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
          ],
        ),
      ),
    );
  }
}

class Utama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItem> menuUtamaItem = [
  MenuUtamaItem(
    title: 'Tiket Pesawat',
    iconData: Icons.flight,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Hotel',
    iconData: Icons.hotel,
    colorBox: Colors.blue[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Pesawat + Hotel',
    iconData: Icons.flight_land,
    colorBox: Colors.purple,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Aktifitas & Rekreasi',
    iconData: Icons.local_play,
    colorBox: Colors.green[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Kuliner',
    iconData: Icons.local_dining,
    colorBox: Colors.orange,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Kereta Api',
    iconData: Icons.train,
    colorBox: Colors.orange[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Tiket Bus & Travel',
    iconData: Icons.directions_bus,
    colorBox: Colors.green,
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Transportasi Bandara',
    iconData: Icons.local_taxi,
    colorBox: Colors.blue[300],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Rental Mobil',
    iconData: Icons.directions_car,
    colorBox: Colors.green[900],
    iconColor: Colors.white,
  ),
  MenuUtamaItem(
    title: 'Semua Produk',
    iconData: Icons.blur_on,
    colorBox: Colors.grey,
    iconColor: Colors.black,
  )
];

class MenuUtamaItem extends StatelessWidget {
  MenuUtamaItem({this.title, this.iconData, this.colorBox, this.iconColor});

  final String title;
  final IconData iconData;
  final Color colorBox, iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: [
          Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(color: colorBox, shape: BoxShape.circle),
            child: Icon(
              iconData,
              color: iconColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class MenuTambahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: menuTambahan,
      ),
    );
  }
}

List<MenuTambahanItem> menuTambahan = [
  MenuTambahanItem(title: 'Tagihan & isi Ulang', iconData: Icons.receipt),
  MenuTambahanItem(
      title: 'Internet Luar Negri', iconData: Icons.signal_cellular_alt),
  MenuTambahanItem(title: 'Bioskop', iconData: Icons.movie),
  MenuTambahanItem(title: 'Pay Later', iconData: Icons.payment),
  MenuTambahanItem(
      title: 'Status Penerbangan', iconData: Icons.airplanemode_active),
  MenuTambahanItem(
      title: 'Pulsa & Paket Data', iconData: Icons.signal_cellular_4_bar),
  MenuTambahanItem(
      title: 'Online Chekc-In', iconData: Icons.airplanemode_inactive),
  MenuTambahanItem(title: 'Notifiaksi Harga', iconData: Icons.notifications),
];

class MenuTambahanItem extends StatelessWidget {
  MenuTambahanItem({this.title, this.iconData});

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      child: Column(
        children: [
          Icon(iconData),
          Text(
            title,
            style: TextStyle(fontSize: 12.0),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Promo Saat ini',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 8.0),
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.blue[800]],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top :2.0,left: 5.0,right: 30.0,bottom: 30.0),
                        child: Text(
                          '%',
                          style: TextStyle(fontSize: 24.0,color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(20.0, 20.0),
                              bottomRight: Radius.elliptical(150.0, 150.0),
                          ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18.0
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
