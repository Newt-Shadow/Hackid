package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.ch  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1099ch extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final C1544ue f19478b;

    /* renamed from: c  reason: collision with root package name */
    public final ProtobufStateStorage f19479c;

    /* renamed from: d  reason: collision with root package name */
    public final G2 f19480d;

    /* renamed from: e  reason: collision with root package name */
    public final C1134e2 f19481e;

    /* renamed from: f  reason: collision with root package name */
    public final C1657z2 f19482f;

    public C1099ch(C1386o5 c1386o5, C1544ue c1544ue) {
        this(c1386o5, c1544ue, Bm.a(V1.class).a(c1386o5.getContext()), new G2(c1386o5.getContext()), new C1134e2(), new C1657z2(c1386o5.getContext()));
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        F2 f22;
        C1386o5 c1386o5 = this.f18787a;
        c1386o5.f20254b.toString();
        if (c1386o5.f20272t.c() && c1386o5.w()) {
            V1 v12 = (V1) this.f19479c.read();
            List list = v12.f19104a;
            F2 f23 = v12.f19105b;
            G2 g22 = this.f19480d;
            g22.getClass();
            V1 v13 = null;
            if (AndroidUtils.isApiAchieved(28)) {
                f22 = C2.a(g22.f18257a, g22.f18258b);
            } else {
                f22 = null;
            }
            List list2 = v12.f19106c;
            List list3 = (List) SystemServiceUtils.accessSystemServiceSafelyOrDefault(this.f19482f.f21009a, "getting available providers", "location manager", Collections.emptyList(), new C1632y2());
            C1544ue c1544ue = this.f19478b;
            Context context = this.f18787a.f20253a;
            c1544ue.getClass();
            ArrayList a10 = new Oi(context, new SafePackageManager()).a();
            if (CollectionUtils.areCollectionsEqual(a10, list)) {
                a10 = null;
            }
            if (a10 != null || !Rn.a(f23, f22) || !CollectionUtils.areCollectionsEqual(list2, list3)) {
                if (a10 != null) {
                    list = a10;
                }
                v13 = new V1(list, f22, list3);
            }
            if (v13 == null) {
                if (c1386o5.z()) {
                    C1564v9 c1564v9 = c1386o5.f20266n;
                    C1138e6 a11 = C1138e6.a(c1138e6, v12.f19104a, v12.f19105b, this.f19481e, v12.f19106c);
                    c1564v9.a(a11, Ek.a(c1564v9.f20782c.b(a11), a11.f19579i));
                    long currentTimeSeconds = c1564v9.f20789j.currentTimeSeconds();
                    c1564v9.f20791l = currentTimeSeconds;
                    c1564v9.f20780a.a(currentTimeSeconds).b();
                    return false;
                }
                return false;
            }
            C1564v9 c1564v92 = c1386o5.f20266n;
            C1138e6 a12 = C1138e6.a(c1138e6, v13.f19104a, v13.f19105b, this.f19481e, v13.f19106c);
            c1564v92.a(a12, Ek.a(c1564v92.f20782c.b(a12), a12.f19579i));
            long currentTimeSeconds2 = c1564v92.f20789j.currentTimeSeconds();
            c1564v92.f20791l = currentTimeSeconds2;
            c1564v92.f20780a.a(currentTimeSeconds2).b();
            this.f19479c.save(v13);
            return false;
        }
        return false;
    }

    public C1099ch(C1386o5 c1386o5, C1544ue c1544ue, ProtobufStateStorage protobufStateStorage, G2 g22, C1134e2 c1134e2, C1657z2 c1657z2) {
        super(c1386o5);
        this.f19478b = c1544ue;
        this.f19479c = protobufStateStorage;
        this.f19480d = g22;
        this.f19481e = c1134e2;
        this.f19482f = c1657z2;
    }
}
