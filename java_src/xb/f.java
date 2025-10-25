package xb;

import android.os.Handler;
import android.os.Looper;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f32698a;

    /* renamed from: b  reason: collision with root package name */
    private final com.android.billingclient.api.d f32699b;

    /* renamed from: c  reason: collision with root package name */
    private final Set f32700c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.android.billingclient.api.d dVar) {
        this(dVar, new Handler(Looper.getMainLooper()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Object obj) {
        this.f32700c.add(obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(Object obj) {
        this.f32700c.remove(obj);
        if (this.f32700c.size() == 0) {
            this.f32698a.post(new e(this));
        }
    }

    f(com.android.billingclient.api.d dVar, Handler handler) {
        this.f32699b = dVar;
        this.f32700c = new HashSet();
        this.f32698a = handler;
    }
}
