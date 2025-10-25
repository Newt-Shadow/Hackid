package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0756oc;
/* loaded from: classes2.dex */
class Rc extends V {

    /* renamed from: b  reason: collision with root package name */
    private U7 f11192b;

    /* renamed from: c  reason: collision with root package name */
    private Vb f11193c;

    /* renamed from: d  reason: collision with root package name */
    private dc.c f11194d;

    /* renamed from: e  reason: collision with root package name */
    private final E f11195e;

    /* renamed from: f  reason: collision with root package name */
    private final C0935w f11196f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rc(V v10, U7 u72, Vb vb2, dc.c cVar, E e10, C0935w c0935w) {
        super(v10);
        this.f11192b = u72;
        this.f11193c = vb2;
        this.f11194d = cVar;
        this.f11195e = e10;
        this.f11196f = c0935w;
    }

    @Override // com.yandex.metrica.impl.ob.V
    public void b(Object obj) {
        Location location = (Location) obj;
        if (location != null) {
            Hc hc2 = new Hc(C0756oc.a.a(this.f11196f.c()), this.f11194d.currentTimeMillis(), this.f11194d.elapsedRealtime(), location, this.f11195e.b(), null);
            String a10 = this.f11193c.a(hc2);
            if (!TextUtils.isEmpty(a10)) {
                this.f11192b.a(hc2.e(), a10);
            }
        }
    }
}
