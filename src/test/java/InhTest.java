public class InhTest {
    public static void main(String[] args) {
        Parent child = new Child();
        Receiver advancedReceiver = new AdvancedReceiver();
        advancedReceiver.receive(child);
        advancedReceiver.outMe();
    }
}

class Parent {
    public void outMe() {
        System.out.println("Parent");
    }
}

class Child extends Parent {
    public void outMe() {

        Thread.yield();
        System.out.println("Child");
    }
}

class Receiver {
    public void receive(Parent p) {
        System.out.println("Receiver");
        p.outMe();
    }

    public void outMe() {
        System.out.println("outMe-Receiver");
    }
}

class AdvancedReceiver extends Receiver {
    public void receive(Child c) {
        System.out.println("AdvancedReceiver");
        c.outMe();
    }

    public void outMe() {
        System.out.println("outMe-AdvancedReceiver");
    }
}