package b6;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public class f extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final Looper f4590a;

    public f(Looper looper) {
        super(looper);
        this.f4590a = Looper.getMainLooper();
    }

    public f(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f4590a = Looper.getMainLooper();
    }
}
