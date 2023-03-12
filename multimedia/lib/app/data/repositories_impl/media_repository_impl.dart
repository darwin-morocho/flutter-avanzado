import 'package:faker/faker.dart';

import '../../domain/models/publication.dart';
import '../../domain/models/video.dart';
import '../../domain/repositories/publications_repository.dart';
import '../consts/videos.dart';

class PublicationsRepositoryImpl implements PublicationsRepository {
  @override
  Future<List<Publication>> getPublications() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    final faker = Faker();
    return videos.map(
      (e) {
        final random = faker.randomGenerator;
        const reactions = Reaction.values;
        final reactionIndex = random.integer(reactions.length - 1);
        return Publication(
          user: User(
            avatar: faker.image.image(),
            username: faker.person.name(),
          ),
          title: faker.lorem.sentence(),
          createdAt: faker.date.dateTime(),
          video: Video(
            src: e['src']!,
            thumbnail: e['thumbnail']!,
          ),
          commentsCount: random.integer(50000),
          sharesCount: random.integer(50000),
          currentUserReaction: reactions[reactionIndex],
        );
      },
    ).toList();
  }
}
