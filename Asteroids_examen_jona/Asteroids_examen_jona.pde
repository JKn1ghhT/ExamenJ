Player ship;
ArrayList<GameObject> drawables = new ArrayList<GameObject>();


void setup()
{
  size(1024, 768); //para el tamaño del player
  ship = new Player("ship.png", new Vector2(512, 384));//de aqui saca el sprite para el ship
}

void draw() {
  background(0); // Fondo de nuestra ventana 
  ship.ProcessInput();
  
  // Recorremos los objetos y los mostramos
  for (int i = drawables.size() - 1; i >= 0; i--) {
    GameObject go = drawables.get(i);
    go.Display();
    
    // Verificamos si el objeto está fuera de la pantalla
    if (go.isOutOfScreen()) {
      drawables.remove(i); // Eliminamos el objeto si está fuera de la pantalla
    }
  }
}
