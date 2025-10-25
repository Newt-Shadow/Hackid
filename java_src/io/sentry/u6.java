package io.sentry;

import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes2.dex */
public final class u6 implements ILogger {
    private String e(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @Override // io.sentry.ILogger
    public void a(j5 j5Var, Throwable th, String str, Object... objArr) {
        if (th == null) {
            c(j5Var, str, objArr);
        } else {
            System.out.println(String.format("%s: %s \n %s\n%s", j5Var, String.format(str, objArr), th.toString(), e(th)));
        }
    }

    @Override // io.sentry.ILogger
    public void b(j5 j5Var, String str, Throwable th) {
        if (th == null) {
            c(j5Var, str, new Object[0]);
        } else {
            System.out.println(String.format("%s: %s\n%s", j5Var, String.format(str, th.toString()), e(th)));
        }
    }

    @Override // io.sentry.ILogger
    public void c(j5 j5Var, String str, Object... objArr) {
        System.out.println(String.format("%s: %s", j5Var, String.format(str, objArr)));
    }

    @Override // io.sentry.ILogger
    public boolean d(j5 j5Var) {
        return true;
    }
}
