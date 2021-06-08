
class PetCardBean {
  final String coverUrl;

  final String userImgUrl;

  final String userName;

  final String description;

  final String topic;
  final String publishTime;
  final String publishContent;

  final int replies;
  final int likes;
  final int shares;

  const PetCardBean(
      {required this.coverUrl,
      required this.userImgUrl,
      required this.userName,
      required this.description,
      required this.topic,
      required this.publishTime,
      required this.publishContent,
      required this.likes,
      required this.replies,
      required this.shares});
}
