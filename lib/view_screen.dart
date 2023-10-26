import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ViewScreen extends HookWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String artistName = 'ジョーイ・バッドアス';
    final screenW = MediaQuery.of(context).size.width;
    final scrollOffset = useState(0.0);

    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (scrollInfo.metrics.axis == Axis.vertical) {
            scrollOffset.value = scrollInfo.metrics.pixels;
          }
          return false;
        },
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 350,
              title: scrollOffset.value > 300.0
                  ? Text(
                      artistName,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    )
                  : null,
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              backgroundColor: Colors.white.withAlpha(125),
              pinned: true,
              stretch: true,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: const <StretchMode>[
                  StretchMode.zoomBackground,
                ],
                titlePadding: const EdgeInsets.all(8),
                collapseMode: CollapseMode.pin,
                expandedTitleScale: 1,
                background: Stack(
                  children: [
                    Image(
                      width: screenW,
                      image: const NetworkImage(
                          "https://www.sonymusic.co.jp/adm_image/common/artist_image/71006000/71006893/artist_photo/61902.jpg"),
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                      bottom: 10,
                      width: screenW,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              artistName,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: const CircleBorder(),
                                padding: EdgeInsets.zero,
                              ),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                centerTitle: false,
              ),
              leading: Padding(
                padding: const EdgeInsets.all(12.0),
                child: scrollOffset.value > 300.0
                    ? IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.red,
                          size: 21,
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black26,
                          shape: const CircleBorder(),
                          padding: EdgeInsets.zero,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
              ),
              actions: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: scrollOffset.value > 300.0
                            ? Colors.white54
                            : Colors.black26,
                        shape: const CircleBorder(),
                      ),
                      child: Icon(
                        Icons.star_border,
                        color: scrollOffset.value > 300.0
                            ? Colors.red
                            : Colors.white,
                        size: 21,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: scrollOffset.value > 300.0
                            ? Colors.white54
                            : Colors.black26,
                        shape: const CircleBorder(),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        color: scrollOffset.value > 300.0
                            ? Colors.red
                            : Colors.white,
                        size: 21,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 21),
                  TopRelease(screenW: screenW),
                  const SizedBox(height: 21),
                  TopSongs(screenW: screenW),
                  const SizedBox(height: 21),
                  BestAlbum(screenW: screenW),
                  const SizedBox(height: 21),
                  const Albums()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Albums extends StatelessWidget {
  const Albums({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            children: [
              Text(
                '必聴アルバム',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 210,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      width: 170,
                      height: 170,
                      image: NetworkImage(
                          "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                      fit: BoxFit.contain,
                    ),
                    Text("2000"),
                    Text(
                      "2000",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      width: 170,
                      height: 170,
                      image: NetworkImage(
                          "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                      fit: BoxFit.contain,
                    ),
                    Text("2000"),
                    Text(
                      "2000",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      width: 170,
                      height: 170,
                      image: NetworkImage(
                          "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                      fit: BoxFit.contain,
                    ),
                    Text("2000"),
                    Text(
                      "2000",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      width: 170,
                      height: 170,
                      image: NetworkImage(
                          "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                      fit: BoxFit.contain,
                    ),
                    Text("2000"),
                    Text(
                      "2000",
                      style: TextStyle(color: Colors.grey),
                    ),
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

class BestAlbum extends StatelessWidget {
  const BestAlbum({
    super.key,
    required this.screenW,
  });

  final double screenW;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            children: [
              Text(
                '必聴アルバム',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: screenW,
          height: screenW + 17,
          child: PageView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Image(
                      width: screenW,
                      height: screenW,
                      image: const NetworkImage(
                          "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text("ALL-AMERIKKKAN BADA\$\$")
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Image(
                      width: screenW,
                      height: screenW,
                      image: const NetworkImage(
                          "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text("ALL-AMERIKKKAN BADA\$\$")
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TopSongs extends StatelessWidget {
  const TopSongs({
    super.key,
    required this.screenW,
  });

  final double screenW;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21),
          child: Row(
            children: [
              const Text(
                'トップソング',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 17,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: screenW,
          height: 65 * 4 + 4 * 8,
          child: PageView(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Column(
                  children: [
                    TopSongTile(),
                    TopSongTile(),
                    TopSongTile(),
                    TopSongTile(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: Column(
                  children: [
                    TopSongTile(),
                    TopSongTile(),
                    TopSongTile(),
                    TopSongTile(),
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

class TopSongTile extends StatelessWidget {
  const TopSongTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Image(
                width: 65,
                height: 65,
                image: NetworkImage(
                    "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
                fit: BoxFit.contain,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DEVASTATED"),
                  Text(
                    "ALL-AMERIKKKAN",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.black54,
              size: 21,
            ),
          )
        ],
      ),
    );
  }
}

class TopRelease extends StatelessWidget {
  const TopRelease({
    super.key,
    required this.screenW,
  });

  final double screenW;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenW,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Row(
          children: [
            const Image(
              width: 120,
              height: 120,
              image: NetworkImage(
                  "https://img.hmv.co.jp/hybridimage/news/images/17/0412/1024/body_165442.jpeg"),
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "2017年4月7日",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                const Text(
                  "All-amerikkkan Badass",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  "12曲",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                InkWell(
                  onTap: () {},
                  child: const Text("追加"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
