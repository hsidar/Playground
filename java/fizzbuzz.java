public class Main {
    public static void main (String[] args) {

    }
    
    public static void foobar (){
            for (int i = 100; i > 0; i--){
            if(i % 3 == 0 && i % 7 == 0){
                System.out.println("foobar");
            } else if (i % 3 == 0){
                System.out.println("foo");
            } else if (i % 7 == 0){
                System.out.println("bar");
            } else {
                System.out.println(i);
            }
        }
    }
}
