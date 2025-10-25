package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class ua {

    /* renamed from: b  reason: collision with root package name */
    private static volatile ua f6834b;

    /* renamed from: c  reason: collision with root package name */
    static final ua f6835c = new ua(true);

    /* renamed from: a  reason: collision with root package name */
    private final Map f6836a = Collections.emptyMap();

    ua(boolean z10) {
    }

    public static ua a() {
        ua uaVar = f6834b;
        if (uaVar != null) {
            return uaVar;
        }
        synchronized (ua.class) {
            ua uaVar2 = f6834b;
            if (uaVar2 != null) {
                return uaVar2;
            }
            int i10 = qc.f6714d;
            ua a10 = cb.a(ua.class);
            f6834b = a10;
            return a10;
        }
    }

    public final gb b(ic icVar, int i10) {
        android.support.v4.media.session.b.a(this.f6836a.get(new ta(icVar, i10)));
        return null;
    }
}
