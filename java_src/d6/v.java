package d6;

import android.os.Looper;
/* loaded from: classes.dex */
public abstract class v {
    public static Looper a(Looper looper) {
        if (looper != null) {
            return looper;
        }
        return b();
    }

    public static Looper b() {
        boolean z10;
        if (Looper.myLooper() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        n5.q.o(z10, "Can't create handler inside thread that has not called Looper.prepare()");
        return Looper.myLooper();
    }
}
