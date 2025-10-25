package y4;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
/* loaded from: classes.dex */
public class j0 implements d {
    @Override // y4.d
    public n a(Looper looper, Handler.Callback callback) {
        return new k0(new Handler(looper, callback));
    }

    @Override // y4.d
    public void b() {
    }

    @Override // y4.d
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // y4.d
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }
}
