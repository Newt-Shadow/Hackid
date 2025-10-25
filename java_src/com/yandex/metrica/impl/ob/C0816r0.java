package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.InterfaceC0840s0;
import com.yandex.metrica.impl.ob.InterfaceC0912v0;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.r0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0816r0<CANDIDATE, CHOSEN extends InterfaceC0912v0, STORAGE extends InterfaceC0840s0<CANDIDATE, CHOSEN>> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13447a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage f13448b;

    /* renamed from: c  reason: collision with root package name */
    private final AbstractC0864t0<CHOSEN> f13449c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1010z2<CANDIDATE, CHOSEN> f13450d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0818r2<CANDIDATE, CHOSEN, STORAGE> f13451e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0422b2<CHOSEN> f13452f;

    /* renamed from: g  reason: collision with root package name */
    private final Y1 f13453g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC0495e0 f13454h;

    /* renamed from: i  reason: collision with root package name */
    private STORAGE f13455i;

    /* JADX WARN: Multi-variable type inference failed */
    public C0816r0(Context context, ProtobufStateStorage protobufStateStorage, AbstractC0864t0 abstractC0864t0, InterfaceC1010z2 interfaceC1010z2, InterfaceC0818r2 interfaceC0818r2, InterfaceC0422b2 interfaceC0422b2, Y1 y12, InterfaceC0495e0 interfaceC0495e0, InterfaceC0840s0 interfaceC0840s0, String str) {
        this.f13447a = context;
        this.f13448b = protobufStateStorage;
        this.f13449c = abstractC0864t0;
        this.f13450d = interfaceC1010z2;
        this.f13451e = interfaceC0818r2;
        this.f13452f = interfaceC0422b2;
        this.f13453g = y12;
        this.f13454h = interfaceC0495e0;
        this.f13455i = interfaceC0840s0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final synchronized CHOSEN c() {
        if (!this.f13453g.a()) {
            InterfaceC0912v0 interfaceC0912v0 = (InterfaceC0912v0) this.f13452f.invoke();
            this.f13453g.b();
            if (interfaceC0912v0 != null) {
                b(interfaceC0912v0);
            }
        }
        C0572h2.a("Choosing distribution data: %s", this.f13455i);
        return (CHOSEN) this.f13455i.b();
    }

    public final synchronized STORAGE a() {
        return this.f13455i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized boolean b(CHOSEN chosen) {
        boolean z10 = false;
        if (chosen.a() == EnumC0888u0.UNDEFINED) {
            return false;
        }
        List<CANDIDATE> list = (List) this.f13450d.invoke(this.f13455i.a(), chosen);
        boolean z11 = list != null;
        if (list == null) {
            list = this.f13455i.a();
        }
        if (this.f13449c.a(chosen, this.f13455i.b())) {
            z10 = true;
        } else {
            chosen = (CHOSEN) this.f13455i.b();
        }
        if (z10 || z11) {
            STORAGE storage = (STORAGE) this.f13451e.invoke(chosen, list);
            this.f13455i = storage;
            this.f13448b.save(storage);
        }
        return z10;
    }

    public final CHOSEN a(CHOSEN chosen) {
        CHOSEN c10;
        this.f13454h.a(this.f13447a);
        synchronized (this) {
            b(chosen);
            c10 = c();
        }
        return c10;
    }

    public final CHOSEN b() {
        this.f13454h.a(this.f13447a);
        return c();
    }
}
