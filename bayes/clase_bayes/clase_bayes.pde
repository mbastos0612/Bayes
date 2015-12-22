
bayes bayesclass = new bayes();
String columna;
String valor;

void setup(){
 
  bayesclass.inicializar("probasfile.csv");
  bayesclass.readTable();
  columna = "Weather";
  valor = "sun";
   float probaUnaVariable = bayesclass.probabilidadEvento(columna,valor);
   println("Para la variable "+ valor +" la proba es de " +probaUnaVariable);

}


void draw() {
  
  /*if(inpCurrent.equals("test")){
     println("ENTRO");
  }
  else{
  
    println("SALIO");
  }*/
  
  
 
  
}





String inpLast = new String();
String inpCurrent = new String();
int num;

float s;
void keyPressed(){
  if (key == ENTER) {
    inpLast = inpCurrent = inpCurrent + key;
    inpCurrent = "";
  }
  else if (key == BACKSPACE && inpCurrent.length() > 0 ){
    inpCurrent = inpCurrent.substring(0, inpCurrent.length() - 1);
  }
  else {
    inpCurrent = inpCurrent + key;
    
  }

}