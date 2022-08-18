public final class LookupProperty {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println("Usage: LookupProperty <property.name>");
            System.exit(1);
        }
        final String property = System.getProperty(args[0]);
        if (property == null) {
            System.err.println("Not found");
            System.exit(2);
        }
        System.out.print(property);
        System.out.flush();
        System.exit(0);
    }
}
