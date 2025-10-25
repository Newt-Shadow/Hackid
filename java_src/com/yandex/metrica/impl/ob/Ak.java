package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.impl.ob.C0837rl;
/* loaded from: classes2.dex */
class Ak {

    /* renamed from: a  reason: collision with root package name */
    private final C0614ik f9722a;

    /* renamed from: b  reason: collision with root package name */
    private final C0932vk f9723b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9724c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak(AbstractC1004yk<?> abstractC1004yk, int i10) {
        this(abstractC1004yk, i10, new C0614ik(abstractC1004yk.b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0837rl.b a(String str) {
        boolean z10;
        if (str != null) {
            Pair<Boolean, C0837rl.b> a10 = this.f9723b.a(this.f9724c, str);
            if (a10 != null) {
                return (C0837rl.b) a10.second;
            }
            C0837rl.b a11 = this.f9722a.a(str);
            C0932vk c0932vk = this.f9723b;
            int i10 = this.f9724c;
            if (a11 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            c0932vk.a(i10, str, z10, a11);
            return a11;
        }
        return null;
    }

    Ak(AbstractC1004yk<?> abstractC1004yk, int i10, C0614ik c0614ik) {
        this.f9724c = i10;
        this.f9722a = c0614ik;
        this.f9723b = abstractC1004yk.a();
    }
}
