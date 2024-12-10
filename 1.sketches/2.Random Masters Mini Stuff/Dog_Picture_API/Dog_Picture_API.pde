import http.requests.*;
import processing.sound.*;
SoundFile file;

PImage img;

void setup() {
  //size(1920/3, 1080/3);
  fullScreen();
  background (255);
  file = new SoundFile(this, "Maroon 5 - Animals.mp3");
  file.play();
}

void draw() {
  String url="https://dog.ceo/api/breeds/image/random";
  GetRequest request = new GetRequest(url);
  request.send();

  String response = request.getContent();
  println(response);

  JSONObject jsonResponse = parseJSONObject(response);

  String imageUrl = jsonResponse.getString("message");

  img = loadImage(imageUrl);
  if (img!= null) {
    image(img, random(width), random(height));
  }
  delay(500);
}
