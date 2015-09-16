public class Singleton {
    
    //instantiate the class as null.
    private static Singleton onlyOne = null;
    
    
    public static Singleton getSingleton(){
        if(onlyOne == null) {
            onlyOne = new Singleton();
        }
        return onlyOne;
    }
}