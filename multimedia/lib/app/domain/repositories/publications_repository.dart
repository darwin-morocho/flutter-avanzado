import '../models/publication.dart';

abstract class PublicationsRepository {
  Future<List<Publication>> getPublications();
}
