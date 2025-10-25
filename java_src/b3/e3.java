package b3;

import java.io.IOException;
/* loaded from: classes.dex */
public class e3 extends IOException {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f3864a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3865b;

    /* JADX INFO: Access modifiers changed from: protected */
    public e3(String str, Throwable th, boolean z10, int i10) {
        super(str, th);
        this.f3864a = z10;
        this.f3865b = i10;
    }

    public static e3 a(String str, Throwable th) {
        return new e3(str, th, true, 1);
    }

    public static e3 b(String str, Throwable th) {
        return new e3(str, th, true, 0);
    }

    public static e3 c(String str, Throwable th) {
        return new e3(str, th, true, 4);
    }

    public static e3 d(String str) {
        return new e3(str, null, false, 1);
    }
}
