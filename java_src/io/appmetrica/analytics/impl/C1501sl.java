package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.sl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1501sl {

    /* renamed from: a  reason: collision with root package name */
    public final Ba f20606a = new Ba();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f20607b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public Ql f20608c = null;

    /* renamed from: d  reason: collision with root package name */
    public final C1452ql f20609d = new C1452ql(this);

    public static final C1501sl a() {
        return AbstractC1476rl.f20553a;
    }

    public final C1353mm a(Context context, C1212h5 c1212h5, Kl kl) {
        C1353mm c1353mm = (C1353mm) this.f20607b.get(c1212h5.f19716a);
        boolean z10 = true;
        if (c1353mm == null) {
            synchronized (this.f20607b) {
                c1353mm = (C1353mm) this.f20607b.get(c1212h5.f19716a);
                if (c1353mm == null) {
                    c1353mm = new C1353mm(new C1378nm(context, c1212h5.f19716a, kl, this.f20609d));
                    c1353mm.f();
                    this.f20607b.put(c1212h5.f19716a, c1353mm);
                    z10 = false;
                }
            }
        }
        if (z10) {
            c1353mm.a(kl);
        }
        return c1353mm;
    }

    public final void a(C1212h5 c1212h5, Bl bl) {
        synchronized (this.f20607b) {
            this.f20606a.a(c1212h5.f19716a, bl);
            Ql ql = this.f20608c;
            if (ql != null) {
                bl.a(ql);
            }
        }
    }
}
