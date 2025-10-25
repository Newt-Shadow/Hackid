package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
final class xc extends bd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public xc() {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a() {
        if (!b()) {
            if (c() <= 0) {
                Iterator it = f().iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.b.a(((Map.Entry) it.next()).getKey());
                    throw null;
                }
            } else {
                android.support.v4.media.session.b.a(((yc) e(0)).a());
                throw null;
            }
        }
        super.a();
    }
}
