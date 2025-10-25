package com.yandex.metrica.uiaccessor;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.i0;
import androidx.fragment.app.p;
import com.yandex.metrica.uiaccessor.a;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class FragmentLifecycleCallback extends i0.k {

    /* renamed from: a  reason: collision with root package name */
    private final a.InterfaceC0135a f14266a;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference f14267b;

    public FragmentLifecycleCallback(a.InterfaceC0135a interfaceC0135a, Activity activity) {
        this.f14266a = interfaceC0135a;
        this.f14267b = new WeakReference(activity);
    }

    @Override // androidx.fragment.app.i0.k
    public void onFragmentAttached(i0 i0Var, p pVar, Context context) {
        super.onFragmentAttached(i0Var, pVar, context);
        Activity activity = (Activity) this.f14267b.get();
        if (activity != null) {
            this.f14266a.fragmentAttached(activity);
        }
    }
}
