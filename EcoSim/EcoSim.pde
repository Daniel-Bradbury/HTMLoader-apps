int cellCount=0;
int deathCount=0;
int frame;
boolean sflag=false;
boolean end=false;
int cellCap=200000;
Cell[] cell = new Cell[cellCap];
void setup() {
  frameRate(30);
  println("Loading simulation...");
  for (int i=0; i<cellCap; i++) {
    cell[i] = new Cell();
  }
}

class Cell {
  int x;
  int y;
  boolean live;
  int food;
  void cellOffspring(int cx, int cy) {
    for (int i=0; i<cellCap; i++) {
      if (cell[i].live==false) {
        cell[i].live=true;
        cell[i].x=cx;
        cell[i].y=cy;
        break;
      }
    }
  }
  void cycle() {
    // Cell cycle
    if(food<=0) {
      if(live==true) {
      deathCount+=1;
      live=false;
    }
  }
    
    if (live==true) {
      food-=1;
      x+=int(random(2)*2-2);
      y+=int(random(2)*2-2);
      if (world[x][y]==1) {
        this.cellOffspring(x, y);
        world[x][y]=0;
      }
    } else {
      food=60;
    }
  }

  void cellCreate(int cx, int cy) {
    this.live=true;
    this.x=cx;
    this.y=cy;
    this.food=120;
  }
}
int[][] world = new int[11000][11000];
void draw() {
  if (sflag==false) {
    cell[0].cellCreate(5500, 5500);
    for (int x=500; x<10500; x++) {
    for (int y=500; y<10500; y++) {
      if (random(10)>=9) {
        world[x][y]=1;
      }
    }
  }

    sflag=true;
  }
  cellCount=0;
  for (int i=0;i<cellCap;i++) {
  cell[i].cycle();
  if(cell[i].live==true) {
    cellCount+=1;
  }
  }
int ty=10000, by=0, tx=10000, bx=0;
for (int i=0; i<cellCap; i++) {
      if (cell[i].live==true) {
        if(cell[i].x<tx) {tx=cell[i].x;}
        if(cell[i].y<ty) {ty=cell[i].y;}
        if(cell[i].x>bx) {bx=cell[i].x;}
        if(cell[i].y>by) {by=cell[i].y;}
      }
    }

    frame+=1;
  println(frame+" ticks into the universe... ("+frameRate+" ticks per second)");
  println("-------------------------------------------------------");
  println(cellCount+" cells currently alive.");
  println(deathCount+" cells have died.");
  println("");
  if (cellCount!=0) {
  println("Area of control: ("+tx+","+ty+") to ("+bx+","+by+")");
  } else {
  println("");
  }
  println("");
if (cellCount==0) {
    if (!(end)) {
	endframe=frame;
	end=true;
	}
    println("Every living organism died by tick "+endframe+"...");
  } else {
  println("");
  }
  
  
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("");
  println("EcoSim");
  println("");
}
