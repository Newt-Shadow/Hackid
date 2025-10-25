package com.yandex.metrica.uiaccessor;

import android.app.Activity;
import androidx.fragment.app.i0;
import androidx.fragment.app.u;
/* loaded from: classes2.dex */
public class a implements fc.a {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0135a f14268a;

    /* renamed from: b  reason: collision with root package name */
    private i0.k f14269b;

    /* renamed from: com.yandex.metrica.uiaccessor.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0135a {
        void fragmentAttached(Activity activity);
    }

    public a(InterfaceC0135a interfaceC0135a) {
        this.f14268a = interfaceC0135a;
    }

    @Override // fc.a
    public void subscribe(Activity activity) {
        if (activity instanceof u) {
            if (this.f14269b == null) {
                this.f14269b = new FragmentLifecycleCallback(this.f14268a, activity);
            }
            i0 supportFragmentManager = ((u) activity).getSupportFragmentManager();
            supportFragmentManager.A1(this.f14269b);
            supportFragmentManager.k1(this.f14269b, true);
        }
    }

    @Override // fc.a
    public void unsubscribe(Activity activity) {
        if ((activity instanceof u) && this.f14269b != null) {
            ((u) activity).getSupportFragmentManager().A1(this.f14269b);
        }
    }
}
