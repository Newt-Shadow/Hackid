package y4;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public interface d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f32861a = new j0();

    n a(Looper looper, Handler.Callback callback);

    void b();

    long elapsedRealtime();

    long uptimeMillis();
}
