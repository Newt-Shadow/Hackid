package com.yandex.metrica.impl.ob;

import android.location.Location;
/* loaded from: classes2.dex */
public class Yb extends V {

    /* renamed from: b  reason: collision with root package name */
    private final C0972xc f11841b;

    public Yb(V v10, C0972xc c0972xc) {
        super(v10);
        this.f11841b = c0972xc;
    }

    @Override // com.yandex.metrica.impl.ob.V
    public void b(Object obj) {
        Location location = (Location) obj;
        if (location != null) {
            this.f11841b.b((C0972xc) location);
        }
    }
}
