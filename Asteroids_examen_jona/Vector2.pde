class Vector2{
  float x, y;

  Vector2(){}

  Vector2(float _x, float _y)
  {
    x = _x;
    y = _y;
  }

float Distance(Vector2 from){
    float dist = sq(x - from.x) + sq(y - from.y);
    dist = sqrt(dist);
    return dist;
  }

  void mult(float scalar){
    x = scalar;
    y= scalar;
  }
}
