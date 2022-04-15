public with sharing class ControllerApex {
    @AuraEnabled
    public static string getPalabra(){
        try {
            List<String> palabrasJuego = new List<String>();
            palabrasJuego.add('Casa');
            palabrasJuego.add('Coche');
            palabrasJuego.add('Hola');
            palabrasJuego.add('Moto');
            palabrasJuego.add('Perro');

            String palabraCorrecta = '';
            palabraCorrecta = palabrasJuego[(Integer)Math.floor(Math.random() * palabrasJuego.size())];
            return palabraCorrecta;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}