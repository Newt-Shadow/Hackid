package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0856sg;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ug  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0904ug implements C0856sg.a {

    /* renamed from: a  reason: collision with root package name */
    private final Set<InterfaceC0461cg> f13721a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13722b;

    /* renamed from: c  reason: collision with root package name */
    private C0486dg f13723c;

    public C0904ug() {
        this(F0.g().m());
    }

    @Override // com.yandex.metrica.impl.ob.C0856sg.a
    public synchronized void a(C0486dg c0486dg) {
        this.f13723c = c0486dg;
        this.f13722b = true;
        for (InterfaceC0461cg interfaceC0461cg : this.f13721a) {
            interfaceC0461cg.a(this.f13723c);
        }
        this.f13721a.clear();
    }

    C0904ug(C0856sg c0856sg) {
        this.f13721a = new HashSet();
        c0856sg.a(new C1000yg(this));
        c0856sg.b();
    }

    public synchronized void a(InterfaceC0461cg interfaceC0461cg) {
        this.f13721a.add(interfaceC0461cg);
        if (this.f13722b) {
            interfaceC0461cg.a(this.f13723c);
            this.f13721a.remove(interfaceC0461cg);
        }
    }
}
