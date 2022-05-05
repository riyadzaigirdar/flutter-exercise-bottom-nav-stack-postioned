import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
        ]),
        body: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(
              children: <Widget>[
                HomeTopContainer(size: size),
                HomeBottomContainer(size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTopContainer extends StatelessWidget {
  const HomeTopContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.45,
      decoration: const BoxDecoration(
          color: Color(0XFFF5CEB8),
          image: DecorationImage(
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"))),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, top: 30.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 245, 176, 136),
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        "assets/icons/menu.svg",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: const <Widget>[
                Text(
                  "Good Morning \nShishir",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3),
                )
              ],
            ),
          ),
          const SearchField()
        ],
      ),
    );
  }
}

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      height: 50.0,
      child: Row(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SvgPicture.asset("assets/icons/search.svg")),
          Expanded(
            child: TextField(
              controller: _controller,
              textAlignVertical: TextAlignVertical.center,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 241, 238, 238),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}

class HomeBottomContainer extends StatelessWidget {
  const HomeBottomContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        width: size.width,
        height: size.height * 0.65,
        color: Colors.transparent,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.55,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 0,
            child: SizedBox(
              width: size.height * 0.65,
              height: size.width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    children: [Item(), Item(), Item(), Item()],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key? key,
  }) : super(key: key);
  final constainerWidth = 50.0;
  final constainerHeight = 150.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        width: constainerWidth,
        height: constainerHeight,
        color: Colors.transparent,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: constainerWidth,
                height: constainerHeight * 0.93,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    color: Colors.black),
              ),
              Container(
                color: Colors.black,
                width: constainerWidth,
                height: constainerHeight * 0.3,
              )
            ]),
      ),
    );
  }
}
