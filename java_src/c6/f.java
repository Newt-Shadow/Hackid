package c6;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes.dex */
public class f extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final Looper f5046a;

    public f(Looper looper) {
        super(looper);
        this.f5046a = Looper.getMainLooper();
    }

    public f(Looper looper, Handler.Callback callback) {
        super(looper, callback);
        this.f5046a = Looper.getMainLooper();
    }
}
