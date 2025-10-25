package o7;

import android.os.Bundle;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import n7.g;
/* loaded from: classes.dex */
public class c implements b, a {

    /* renamed from: a  reason: collision with root package name */
    private final e f27512a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27513b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeUnit f27514c;

    /* renamed from: e  reason: collision with root package name */
    private CountDownLatch f27516e;

    /* renamed from: d  reason: collision with root package name */
    private final Object f27515d = new Object();

    /* renamed from: f  reason: collision with root package name */
    private boolean f27517f = false;

    public c(e eVar, int i10, TimeUnit timeUnit) {
        this.f27512a = eVar;
        this.f27513b = i10;
        this.f27514c = timeUnit;
    }

    @Override // o7.a
    public void a(String str, Bundle bundle) {
        synchronized (this.f27515d) {
            g f10 = g.f();
            f10.i("Logging event " + str + " to Firebase Analytics with params " + bundle);
            this.f27516e = new CountDownLatch(1);
            this.f27517f = false;
            this.f27512a.a(str, bundle);
            g.f().i("Awaiting app exception callback from Analytics...");
            try {
                if (this.f27516e.await(this.f27513b, this.f27514c)) {
                    this.f27517f = true;
                    g.f().i("App exception callback received from Analytics listener.");
                } else {
                    g.f().k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                }
            } catch (InterruptedException unused) {
                g.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
            }
            this.f27516e = null;
        }
    }

    @Override // o7.b
    public void b(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f27516e;
        if (countDownLatch != null && Constants.FIREBASE_APPLICATION_EXCEPTION.equals(str)) {
            countDownLatch.countDown();
        }
    }
}
