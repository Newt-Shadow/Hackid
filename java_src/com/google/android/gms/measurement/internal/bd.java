package com.google.android.gms.measurement.internal;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class bd {

    /* renamed from: a  reason: collision with root package name */
    private final String f7299a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f7300b;

    /* renamed from: c  reason: collision with root package name */
    private final i6.d0 f7301c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.gms.internal.measurement.u7 f7302d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(String str, Map map, i6.d0 d0Var, com.google.android.gms.internal.measurement.u7 u7Var) {
        this.f7299a = str;
        this.f7300b = map;
        this.f7301c = d0Var;
        this.f7302d = u7Var;
    }

    public final String a() {
        return this.f7299a;
    }

    public final Map b() {
        Map map = this.f7300b;
        if (map == null) {
            return Collections.emptyMap();
        }
        return map;
    }

    public final i6.d0 c() {
        return this.f7301c;
    }

    public final com.google.android.gms.internal.measurement.u7 d() {
        return this.f7302d;
    }
}
