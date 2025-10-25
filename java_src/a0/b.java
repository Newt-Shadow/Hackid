package a0;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
abstract class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Handler a() {
        if (Looper.myLooper() == null) {
            return new Handler(Looper.getMainLooper());
        }
        return new Handler();
    }
}
