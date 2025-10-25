package m5;

import android.os.Looper;
import m5.j;
/* loaded from: classes.dex */
public abstract class k {
    public static j a(Object obj, Looper looper, String str) {
        n5.q.l(obj, "Listener must not be null");
        n5.q.l(looper, "Looper must not be null");
        n5.q.l(str, "Listener type must not be null");
        return new j(looper, obj, str);
    }

    public static j.a b(Object obj, String str) {
        n5.q.l(obj, "Listener must not be null");
        n5.q.l(str, "Listener type must not be null");
        n5.q.f(str, "Listener type must not be empty");
        return new j.a(obj, str);
    }
}
