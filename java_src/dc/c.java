package dc;

import android.os.SystemClock;
/* loaded from: classes.dex */
public class c implements d {
    public long a() {
        return System.nanoTime();
    }

    @Override // dc.d
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // dc.d
    public long currentTimeSeconds() {
        return System.currentTimeMillis() / 1000;
    }

    @Override // dc.d
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }
}
