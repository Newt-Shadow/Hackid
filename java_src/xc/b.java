package xc;

import java.io.PrintWriter;
import java.io.StringWriter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class b {
    public static void a(Throwable th, Throwable exception) {
        kotlin.jvm.internal.m.e(th, "<this>");
        kotlin.jvm.internal.m.e(exception, "exception");
        if (th != exception) {
            dd.b.f15163a.a(th, exception);
        }
    }

    public static String b(Throwable th) {
        kotlin.jvm.internal.m.e(th, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        kotlin.jvm.internal.m.d(stringWriter2, "toString(...)");
        return stringWriter2;
    }
}
