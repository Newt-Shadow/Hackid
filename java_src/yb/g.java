package yb;

import android.os.Handler;
import android.os.Looper;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final Set f33212a;

    /* renamed from: b  reason: collision with root package name */
    private final com.android.billingclient.api.d f33213b;

    /* renamed from: c  reason: collision with root package name */
    private final Handler f33214c;

    public g(com.android.billingclient.api.d billingClient, Handler mainHandler) {
        m.e(billingClient, "billingClient");
        m.e(mainHandler, "mainHandler");
        this.f33213b = billingClient;
        this.f33214c = mainHandler;
        this.f33212a = new LinkedHashSet();
    }

    public final void b(Object listener) {
        m.e(listener, "listener");
        this.f33212a.add(listener);
    }

    public final void c(Object listener) {
        m.e(listener, "listener");
        this.f33212a.remove(listener);
        if (this.f33212a.size() == 0) {
            this.f33214c.post(new f(this));
        }
    }

    public /* synthetic */ g(com.android.billingclient.api.d dVar, Handler handler, int i10) {
        this(dVar, (i10 & 2) != 0 ? new Handler(Looper.getMainLooper()) : null);
    }
}
