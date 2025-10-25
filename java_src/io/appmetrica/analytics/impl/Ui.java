package io.appmetrica.analytics.impl;

import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class Ui extends Pg {
    public Ui(C1386o5 c1386o5) {
        super(c1386o5);
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        String str = c1138e6.f19578h;
        if (!TextUtils.isEmpty(str)) {
            this.f18787a.f20255c.j(str).b();
            return false;
        }
        return false;
    }
}
