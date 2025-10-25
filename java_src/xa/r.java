package xa;

import android.os.Looper;
/* loaded from: classes.dex */
public abstract class r {
    public static void a() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        throw new IllegalStateException("Must be called from the main thread.");
    }
}
