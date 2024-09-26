import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tecnical_excercise_tp/features/details/data/details_repository_impl.dart';
import 'package:tecnical_excercise_tp/features/details/domain/model/movie_details/movie_details.dart';
import 'package:tecnical_excercise_tp/shared/network/dio_config.dart';

part 'details_controller.g.dart';

@riverpod
FutureOr<MovieDetails?> fetchDetailsController(
    FetchDetailsControllerRef ref, int movieId) async {
  var dio = ref.read(dioConfigProvider);
  var moviesDetails = await DetailsRepositoryImpl(dio: dio).getDetails(movieId);
  return moviesDetails;
}
