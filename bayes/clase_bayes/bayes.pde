class bayes { 
  
 
  String fileName;
  Table probas;
  int columnNumber;
  int rowNumber; 
 
  
  bayes(){
    
    fileName = "";

  } 
  
  void inicializar(String name){
  
     fileName = name;
     probas = loadTable(name, "header");
     columnNumber = probas.getColumnCount();
     rowNumber = probas.getRowCount();
  
  }
  
   void readTable(){
   
    println(probas.getRowCount() + " total rows in table"); 
    println(probas.getColumnCount() + " total columns in table"); 
    
    /*for(int i = 0;i<rowNumber;i++){
      for(int j = 0;j<columnNumber;j++){
      
         println(probas.getString(i, j));
      
      }
    }*/
  }
   
   
   
 
   
   float probabilidadEvento(String columna, String valor){
     float resultado = 0;
     for (TableRow row : probas.rows()) {
       // println(row.getString(columna) + ": " + row.getFloat("Proba"));
      if(row.getString(columna).equals(valor)){
        
        resultado+=row.getFloat("Proba");
      
        } 
      }
   
     return resultado;
   }
   
   
   float probabilidadDeXdadaY(String columna, String valor, ArrayList<String> columnas ){
     float resultado = 0;
     Table aux = probas;
     aux.addColumn("bob",Table.INT);
     int i = 0;
     for (TableRow row : aux.rows()) {
      
       aux.setInt(i, "bob", 1);
       i++;
      }
     
     
     
     for (TableRow row : aux.rows()) {
      if(row.getString(columna).equals(valor)){
        
          resultado+=row.getFloat("Proba");
      
        } 
      }
   
     return resultado;
   }
   

   
    
} 