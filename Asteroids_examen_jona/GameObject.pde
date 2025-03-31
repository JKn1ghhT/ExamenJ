class GameObject { //<>//
  Transform transform = new Transform();
  PImage sprite;

  GameObject() {}

  GameObject(String image, Vector2 initPos) {
    transform.position = initPos;
    sprite = loadImage(image);
    drawables.add(this);
  }

  void Display() {
    imageMode(CENTER);
    translate(transform.position.x, transform.position.y);
    rotate(transform.rotation * (TWO_PI / 360));
    image(sprite, 0, 0, 50, 50);
    
    // Restablecemos las transformaciones
    translate(-transform.position.x, -transform.position.y);
    rotate(-transform.rotation * (TWO_PI / 360));
    scale(-transform.scale.x);
  }

  // Función para verificar si el objeto está fuera de la pantalla
  boolean isOutOfScreen() {
    return transform.position.x < 0 || transform.position.x > width || transform.position.y < 0 || transform.position.y > height;
  }
}
