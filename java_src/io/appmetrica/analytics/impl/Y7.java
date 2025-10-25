package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class Y7 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19279a;

    /* renamed from: b  reason: collision with root package name */
    public final ProtobufStateStorage f19280b;

    /* renamed from: c  reason: collision with root package name */
    public final AbstractC1040a8 f19281c;

    /* renamed from: d  reason: collision with root package name */
    public final Hn f19282d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC1552um f19283e;

    /* renamed from: f  reason: collision with root package name */
    public final Ti f19284f;

    /* renamed from: g  reason: collision with root package name */
    public final Ri f19285g;

    /* renamed from: h  reason: collision with root package name */
    public final K6 f19286h;

    /* renamed from: i  reason: collision with root package name */
    public Z7 f19287i;

    public Y7(Context context, ProtobufStateStorage protobufStateStorage, AbstractC1040a8 abstractC1040a8, Hn hn, InterfaceC1552um interfaceC1552um, Ti ti, Ri ri, K6 k62, Z7 z72) {
        this.f19279a = context;
        this.f19280b = protobufStateStorage;
        this.f19281c = abstractC1040a8;
        this.f19282d = hn;
        this.f19283e = interfaceC1552um;
        this.f19284f = ti;
        this.f19285g = ri;
        this.f19286h = k62;
        this.f19287i = z72;
    }

    public final synchronized Z7 a() {
        return this.f19287i;
    }

    public final synchronized boolean b(InterfaceC1090c8 interfaceC1090c8) {
        boolean z10;
        if (interfaceC1090c8.a() == EnumC1065b8.f19424b) {
            return false;
        }
        if (kotlin.jvm.internal.m.a(interfaceC1090c8, this.f19287i.b())) {
            return false;
        }
        List list = (List) this.f19282d.invoke(this.f19287i.a(), interfaceC1090c8);
        boolean z11 = list != null;
        if (list == null) {
            list = this.f19287i.a();
        }
        if (this.f19281c.a(interfaceC1090c8, this.f19287i.b())) {
            z10 = true;
        } else {
            interfaceC1090c8 = (InterfaceC1090c8) this.f19287i.b();
            z10 = false;
        }
        if (z10 || z11) {
            Z7 z72 = this.f19287i;
            Z7 z73 = (Z7) this.f19283e.invoke(interfaceC1090c8, list);
            this.f19287i = z73;
            this.f19280b.save(z73);
            AbstractC1151ej.a("Update distribution data: %s -> %s", z72, this.f19287i);
        }
        return z10;
    }

    public final synchronized InterfaceC1090c8 c() {
        if (!this.f19285g.a()) {
            InterfaceC1090c8 interfaceC1090c8 = (InterfaceC1090c8) this.f19284f.invoke();
            this.f19285g.b();
            if (interfaceC1090c8 != null) {
                b(interfaceC1090c8);
            }
        }
        return (InterfaceC1090c8) this.f19287i.b();
    }

    public final InterfaceC1090c8 a(InterfaceC1090c8 interfaceC1090c8) {
        InterfaceC1090c8 c10;
        this.f19286h.a(this.f19279a);
        synchronized (this) {
            b(interfaceC1090c8);
            c10 = c();
        }
        return c10;
    }

    public final InterfaceC1090c8 b() {
        this.f19286h.a(this.f19279a);
        return c();
    }
}
