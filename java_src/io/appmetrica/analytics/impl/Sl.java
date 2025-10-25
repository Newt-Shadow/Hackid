package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class Sl implements Vl {

    /* renamed from: a  reason: collision with root package name */
    public volatile Ql f18945a;

    /* renamed from: b  reason: collision with root package name */
    public final CopyOnWriteArrayList f18946b = new CopyOnWriteArrayList();

    @Override // io.appmetrica.analytics.impl.Vl
    public final void a(Ql ql) {
        this.f18945a = ql;
        for (Vl vl : this.f18946b) {
            vl.a(ql);
        }
    }

    public final Ql b() {
        Ql ql = this.f18945a;
        if (ql == null) {
            kotlin.jvm.internal.m.s("startupState");
            return null;
        }
        return ql;
    }

    public final void b(Vl vl) {
        this.f18946b.remove(vl);
    }

    public final void a(Vl vl) {
        this.f18946b.add(vl);
        if (this.f18945a != null) {
            Ql ql = this.f18945a;
            if (ql == null) {
                kotlin.jvm.internal.m.s("startupState");
                ql = null;
            }
            vl.a(ql);
        }
    }

    public final void a(Context context) {
        String optStringOrNull;
        ProtobufStateStorage<Object> a10 = Bm.a(Ul.class).a(context);
        co a11 = C1665za.j().B().a();
        synchronized (a11) {
            optStringOrNull = JsonUtils.optStringOrNull(a11.f19494a.a(), "device_id");
        }
        a(new Ql(optStringOrNull, a11.a(), (Ul) a10.read()));
    }
}
