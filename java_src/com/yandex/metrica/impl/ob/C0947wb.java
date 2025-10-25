package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.wb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0947wb implements InterfaceC0923vb {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0923vb f13868a;

    /* renamed from: com.yandex.metrica.impl.ob.wb$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0815qm<C0899ub> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13869a;

        a(Context context) {
            this.f13869a = context;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0815qm
        /* renamed from: b */
        public C0899ub a() {
            return C0947wb.this.f13868a.a(this.f13869a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.wb$b */
    /* loaded from: classes2.dex */
    class b implements InterfaceC0815qm<C0899ub> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13871a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Gb f13872b;

        b(Context context, Gb gb2) {
            this.f13871a = context;
            this.f13872b = gb2;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0815qm
        public C0899ub a() {
            return C0947wb.this.f13868a.a(this.f13871a, this.f13872b);
        }
    }

    public C0947wb(InterfaceC0923vb interfaceC0923vb) {
        this.f13868a = interfaceC0923vb;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0923vb
    public C0899ub a(Context context) {
        return a(new a(context));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0923vb
    public C0899ub a(Context context, Gb gb2) {
        return a(new b(context, gb2));
    }

    private C0899ub a(InterfaceC0815qm<C0899ub> interfaceC0815qm) {
        C0899ub a10 = interfaceC0815qm.a();
        C0875tb c0875tb = a10.f13685a;
        return (c0875tb == null || !"00000000-0000-0000-0000-000000000000".equals(c0875tb.f13629b)) ? a10 : new C0899ub(null, U0.INVALID_ADV_ID, "AdvId is invalid: 00000000-0000-0000-0000-000000000000");
    }
}
