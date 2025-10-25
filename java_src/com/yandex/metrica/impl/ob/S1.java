package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.L3;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class S1<C extends L3> extends C0938w2<C> {

    /* renamed from: e  reason: collision with root package name */
    private Runnable f11243e;

    /* renamed from: f  reason: collision with root package name */
    private final ICommonExecutor f11244f;

    /* loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            S1.this.d();
        }
    }

    public S1(C c10, InterfaceC1002yi interfaceC1002yi, ICommonExecutor iCommonExecutor) {
        super(c10, interfaceC1002yi);
        this.f11243e = new a();
        this.f11244f = iCommonExecutor;
    }

    @Override // com.yandex.metrica.impl.ob.C0938w2
    void c() {
        this.f11244f.remove(this.f11243e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C0938w2
    public void f() {
        boolean z10;
        super.f();
        Lg m10 = ((L3) e()).m();
        if (m10.F()) {
            String B = m10.B();
            if (!TextUtils.isEmpty(B) && !"-1".equals(B)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                try {
                    NetworkServiceLocator.a().b().c(C0829rd.a((L3) e()));
                } catch (Throwable unused) {
                }
            }
        }
    }

    public void g() {
        synchronized (this.f13853b) {
            if (!this.f13854c) {
                c();
                if (((L3) e()).m().G() > 0) {
                    this.f11244f.executeDelayed(this.f11243e, TimeUnit.SECONDS.toMillis(((L3) e()).m().G()));
                }
            }
        }
    }
}
