package of;

import java.io.PrintStream;
/* loaded from: classes2.dex */
public abstract class l {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f27600a = {"System.out", "stdout", "sysout"};

    /* renamed from: b  reason: collision with root package name */
    private static final b f27601b = e();

    /* renamed from: c  reason: collision with root package name */
    private static final a f27602c = g();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum a {
        DEBUG(0),
        INFO(1),
        WARN(2),
        ERROR(3);
        

        /* renamed from: a  reason: collision with root package name */
        int f27608a;

        a(int i10) {
            this.f27608a = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum b {
        Stderr,
        Stdout
    }

    public static void a(String str) {
        if (h(a.DEBUG)) {
            PrintStream d10 = d();
            d10.println("SLF4J(D): " + str);
        }
    }

    public static final void b(String str) {
        PrintStream d10 = d();
        d10.println("SLF4J(E): " + str);
    }

    public static final void c(String str, Throwable th) {
        PrintStream d10 = d();
        d10.println("SLF4J(E): " + str);
        d().println("SLF4J(E): Reported exception:");
        th.printStackTrace(d());
    }

    private static PrintStream d() {
        if (f27601b.ordinal() != 1) {
            return System.err;
        }
        return System.out;
    }

    private static b e() {
        String property = System.getProperty("slf4j.internal.report.stream");
        if (property != null && !property.isEmpty()) {
            for (String str : f27600a) {
                if (str.equalsIgnoreCase(property)) {
                    return b.Stdout;
                }
            }
            return b.Stderr;
        }
        return b.Stderr;
    }

    public static void f(String str) {
        if (h(a.INFO)) {
            PrintStream d10 = d();
            d10.println("SLF4J(I): " + str);
        }
    }

    private static a g() {
        String property = System.getProperty("slf4j.internal.verbosity");
        if (property != null && !property.isEmpty()) {
            if (property.equalsIgnoreCase("DEBUG")) {
                return a.DEBUG;
            }
            if (property.equalsIgnoreCase("ERROR")) {
                return a.ERROR;
            }
            if (property.equalsIgnoreCase("WARN")) {
                return a.WARN;
            }
            return a.INFO;
        }
        return a.INFO;
    }

    static boolean h(a aVar) {
        if (aVar.f27608a >= f27602c.f27608a) {
            return true;
        }
        return false;
    }

    public static final void i(String str) {
        if (h(a.WARN)) {
            PrintStream d10 = d();
            d10.println("SLF4J(W): " + str);
        }
    }
}
