public class Strict {

    public static<A> A ifThenElse(boolean cond, A _then, A _else) {
        return cond ? _then : _else;
    }

    public static int f(int x) {
        return ifThenElse(x != 0, 100/x, 0);
    } 

    public static void main(String[] args) {
        System.out.println( f(12) );
        System.out.println( f(0) );
    }

}