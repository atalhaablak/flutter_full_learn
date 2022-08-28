import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final String description = "açıklama kısmı deneme yazısı ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
        title: Text(_PageTitle.courseTitle),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))],
      ),
      body: Padding(
        padding: _PaddingUtility().pagePadding,
        child: Column(
          children: [
            Expanded(flex: 4, child: _CourseImageCard(imageName: _ImagePath.coursImage)),
            Padding(
              padding: _PaddingUtility().paddingHorizontal,
              child: _CourseDescripton(description: description),
            ),
            const Expanded(flex: 6, child: _CourseDetail()),
            Expanded(
              flex: 2,
              child: Padding(
                padding: _PaddingUtility().pagePadding,
                child: _CourseDetailButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CourseDetailButtons extends StatelessWidget {
  const _CourseDetailButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            maximumSize: Size.fromHeight(MediaQuery.of(context).size.width),
          ),
        ),
        Padding(
          padding: _PaddingUtility().paddingVertical,
          child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: _PaddingUtility().pagePadding,
              child: Text(
                " Buy Course",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
              fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.65),
            ),
          ),
        )
      ],
    );
  }
}

class _CourseDetail extends StatelessWidget {
  const _CourseDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PaddingUtility().paddingVertical,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(_PageTitle.courseTitle, style: Theme.of(context).textTheme.headline6),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "See All",
                  style: TextStyle(color: Colors.green),
                ),
                style: TextButton.styleFrom(shape: CircleBorder(side: BorderSide(color: Colors.transparent))),
              ),
            ],
          ),
          _createDetailCard(),
        ],
      ),
    );
  }

  Column _createDetailCard() {
    return Column(
      children: [
        const _DetailCard(
          icon: Icon(
            Icons.play_circle,
            size: 40,
            color: Colors.green,
          ),
          title: "What is development",
          time: "4.min",
        ),
        const _DetailCard(
            icon: Icon(
              Icons.menu_book_sharp,
              size: 40,
              color: Colors.green,
            ),
            title: "Development Thinking",
            time: "10.min"),
        const _DetailCard(
            icon: Icon(
              Icons.play_circle,
              size: 40,
              color: Colors.green,
            ),
            title: "Development process",
            time: "3.min"),
      ],
    );
  }
}

class _DetailCard extends StatelessWidget {
  const _DetailCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.time,
  }) : super(key: key);

  final Icon icon;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: _PaddingUtility().paddingVertical,
        child: ListTile(
          leading: icon,
          title: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Text(time),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CourseDescripton extends StatelessWidget {
  const _CourseDescripton({
    Key? key,
    required this.description,
  }) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: _PaddingUtility().paddingVertical,
              child: Text(
                _PageTitle.aboutCourseTitle,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: _PaddingUtility().paddingVertical,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Text(" 4.8 (350) "),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("$description" * 5, textAlign: TextAlign.justify),
        ),
      ],
    );
  }
}

class _CourseImageCard extends StatelessWidget {
  const _CourseImageCard({
    Key? key,
    required this.imageName,
  }) : super(key: key);

  final String imageName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        "assets/png/$imageName.png",
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width * 1,
      ),
    );
  }
}

class _PaddingUtility {
  final paddingVertical = const EdgeInsets.only(right: 8.0, left: 8.0);
  final paddingHorizontal = const EdgeInsets.only(top: 10, bottom: 10);
  final pagePadding = const EdgeInsets.all(10);
}

class _ImagePath {
  static final String coursImage = "courses_image";
}

class _PageTitle {
  static final courseTitle = "Course";
  static final aboutCourseTitle = "About Course";
}
