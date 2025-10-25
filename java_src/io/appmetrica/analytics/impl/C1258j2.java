package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.HashSet;
/* renamed from: io.appmetrica.analytics.impl.j2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1258j2 extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final Cdo f19826b;

    /* renamed from: c  reason: collision with root package name */
    public final Tj f19827c;

    public C1258j2(C1386o5 c1386o5) {
        this(c1386o5, c1386o5.t(), Tj.c());
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        C1386o5 c1386o5 = this.f18787a;
        if (!this.f19826b.c() && !this.f19826b.d()) {
            if (((C1323lh) c1386o5.f20263k.a()).f20038e) {
                this.f19827c.b();
            }
            V8 v82 = this.f18787a.f20264l;
            if (v82.f19120c == null) {
                v82.a();
            }
            X8 x82 = v82.f19120c;
            x82.getClass();
            x82.f19229b = new HashSet();
            x82.f19231d = 0;
            X8 x83 = v82.f19120c;
            x83.f19228a = true;
            C1041a9 c1041a9 = v82.f19119b;
            IBinaryDataHelper iBinaryDataHelper = c1041a9.f19379c;
            Z8 z82 = c1041a9.f19378b;
            c1041a9.f19377a.getClass();
            F9 a10 = Y8.a(x83);
            z82.getClass();
            iBinaryDataHelper.insert("event_hashes", MessageNano.toByteArray(a10));
        }
        return false;
    }

    public C1258j2(C1386o5 c1386o5, Cdo cdo, Tj tj) {
        super(c1386o5);
        this.f19826b = cdo;
        this.f19827c = tj;
    }
}
