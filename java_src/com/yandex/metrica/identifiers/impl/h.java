package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import android.os.Bundle;
import java.util.Map;
import yc.h0;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Map f9670a;

    public h(Map providers) {
        kotlin.jvm.internal.m.e(providers, "providers");
        this.f9670a = providers;
    }

    public final Bundle a(Context context, String str) {
        g a10;
        kotlin.jvm.internal.m.e(context, "context");
        i iVar = (i) this.f9670a.get(str);
        if (iVar == null || (a10 = iVar.a(context)) == null) {
            return null;
        }
        return a10.a();
    }

    public /* synthetic */ h(Map map, int i10) {
        this((i10 & 1) != 0 ? h0.h(xc.q.a("google", new k()), xc.q.a("huawei", new r()), xc.q.a("yandex", new o())) : null);
    }
}
