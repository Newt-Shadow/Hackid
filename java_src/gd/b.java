package gd;

import java.io.Closeable;
/* loaded from: classes2.dex */
public abstract class b {
    public static final void a(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                xc.b.a(th, th2);
            }
        }
    }
}
