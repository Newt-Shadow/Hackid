package io.appmetrica.analytics.impl;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class Gn extends Pg {
    public Gn(C1386o5 c1386o5) {
        super(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        String i10 = this.f18787a.f20255c.i();
        String str = c1138e6.f19578h;
        this.f18787a.f20255c.j(str).b();
        if (!TextUtils.equals(i10, str)) {
            this.f18787a.a(C1136e4.o());
            return false;
        }
        return false;
    }
}
