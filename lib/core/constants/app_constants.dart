import 'package:flutter_dotenv/flutter_dotenv.dart';

// Base URL for the API
const String BASE_URL = "https://api.themoviedb.org/3/";

// API key for the API
String apiKey = dotenv.get('API_KEY');

// Image URL for the API
const String IMAGE_URL = "https://image.tmdb.org/t/p/w500";
