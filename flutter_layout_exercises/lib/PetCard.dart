import 'package:flutter/material.dart';
import 'package:flutter_layout_exercises/PetCardBean.dart';

class PetCard extends StatelessWidget {
  final PetCardBean data;

  const PetCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  blurRadius: 6,
                  spreadRadius: 4,
                  color: Color.fromARGB(20, 0, 0, 0))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            this.renderCover(),
            this.userInfo(),
            this.renderPublishContent(),
            this.renderInteractionArea()
          ],
        ),
      ),
    );
  }

  //cover 部分处理
  Widget renderCover() {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
          child: Image.network(
            data.coverUrl,
            height: 200,
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned(
            left: 0,
            top: 100,
            right: 0,
            bottom: 0,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(0, 80, 0, 0),
                Color.fromARGB(80, 80, 0, 0),
              ],
            ))))
      ],
    );
  }

  //用户信息部分
  Widget userInfo() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFFCCCCCC),
            backgroundImage: NetworkImage(data.userImgUrl),
          ),
          Padding(padding: EdgeInsets.only(left: 8)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.userName,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 2)),
              Text(
                data.description,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(right: 140)),
          Text(
            data.publishTime,
            style: TextStyle(fontSize: 13, color: Color(0xFF999999)),
          )
        ],
      ),
    );
  }

  //发布信息
  Widget renderPublishContent() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 14),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Color(0xFFFFC600),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Text(
              '# ${data.topic}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            data.publishContent,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }

  //互动信息
  Widget renderInteractionArea() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.message,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                data.replies.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                size: 16,
                color: Color(0xFFFFC600),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                data.likes.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.share,
                size: 16,
                color: Color(0xFF999999),
              ),
              Padding(padding: EdgeInsets.only(left: 6)),
              Text(
                data.shares.toString(),
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF999999),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
