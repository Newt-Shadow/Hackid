package z7;

import java.util.Stack;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f33584a;

    /* renamed from: b  reason: collision with root package name */
    public final String f33585b;

    /* renamed from: c  reason: collision with root package name */
    public final StackTraceElement[] f33586c;

    /* renamed from: d  reason: collision with root package name */
    public final e f33587d;

    private e(String str, String str2, StackTraceElement[] stackTraceElementArr, e eVar) {
        this.f33584a = str;
        this.f33585b = str2;
        this.f33586c = stackTraceElementArr;
        this.f33587d = eVar;
    }

    public static e a(Throwable th, d dVar) {
        Stack stack = new Stack();
        while (th != null) {
            stack.push(th);
            th = th.getCause();
        }
        e eVar = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            eVar = new e(th2.getLocalizedMessage(), th2.getClass().getName(), dVar.a(th2.getStackTrace()), eVar);
        }
        return eVar;
    }
}
