function setup(){
  canvas = createCanvas(800,600).parent("#p5canvas");
  $("#canvas-size").text(width+" x "+height);
}

function colorPicker(){
  r = map(mouseX,0,width,0,255);
  g = map(mouseY,0,height,0,255);
  b = map(mouseX,0,width,0,255);
  return color(r,g,b);
}

function draw(){
  c = colorPicker();
  fill(c);
  ellipse(mouseX,mouseY,50,50);
}

function mousePressed(){
  clear();
}