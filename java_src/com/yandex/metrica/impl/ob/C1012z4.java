package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.D4;
import com.yandex.metrica.networktasks.api.ConfigProvider;
/* renamed from: com.yandex.metrica.impl.ob.z4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1012z4 implements P3, ConfigProvider, Q3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f14056a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f14057b;

    /* renamed from: c  reason: collision with root package name */
    private final C0769p0 f14058c;

    /* renamed from: d  reason: collision with root package name */
    private A4 f14059d;

    /* renamed from: e  reason: collision with root package name */
    private C0524f4 f14060e;

    /* renamed from: com.yandex.metrica.impl.ob.z4$a */
    /* loaded from: classes2.dex */
    static class a {
        a() {
        }

        public A4 a(Context context, I3 i32, C0787pi c0787pi, D4.a aVar) {
            return new A4(new D4.b(context, i32.b()), c0787pi, aVar);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.z4$b */
    /* loaded from: classes2.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private final C0521f1 f14061a;

        b() {
            this(F0.g().h());
        }

        public C0769p0<C1012z4> a(C1012z4 c1012z4, AbstractC0930vi abstractC0930vi, E4 e42, C0428b8 c0428b8) {
            C0769p0<C1012z4> c0769p0 = new C0769p0<>(c1012z4, abstractC0930vi.a(), e42, c0428b8);
            this.f14061a.a(c0769p0);
            return c0769p0;
        }

        b(C0521f1 c0521f1) {
            this.f14061a = c0521f1;
        }
    }

    public C1012z4(Context context, I3 i32, D3.a aVar, C0787pi c0787pi, AbstractC0930vi abstractC0930vi, CounterConfiguration.b bVar) {
        this(context, i32, aVar, c0787pi, abstractC0930vi, bVar, new E4(), new b(), new a(), new C0524f4(context, i32), F0.g().w().a(i32));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public void a(EnumC0563gi enumC0563gi, C0787pi c0787pi) {
    }

    public Context b() {
        return this.f14056a;
    }

    @Override // com.yandex.metrica.networktasks.api.ConfigProvider
    public Object getConfig() {
        return this.f14059d.b();
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public void a(D3.a aVar) {
        this.f14059d.a((A4) aVar);
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public void a(C0445c0 c0445c0) {
        this.f14058c.a(c0445c0);
    }

    public void a() {
        if (this.f14060e.a(this.f14059d.b().D())) {
            this.f14058c.a(C1008z0.a());
            this.f14060e.a();
        }
    }

    public C1012z4(Context context, I3 i32, D3.a aVar, C0787pi c0787pi, AbstractC0930vi abstractC0930vi, CounterConfiguration.b bVar, E4 e42, b bVar2, a aVar2, C0524f4 c0524f4, C0428b8 c0428b8) {
        this.f14056a = context;
        this.f14057b = i32;
        this.f14060e = c0524f4;
        this.f14058c = bVar2.a(this, abstractC0930vi, e42, c0428b8);
        synchronized (this) {
            this.f14060e.a(c0787pi.P());
            this.f14059d = aVar2.a(context, i32, c0787pi, new D4.a(aVar));
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0662ki
    public synchronized void a(C0787pi c0787pi) {
        this.f14059d.a(c0787pi);
        this.f14060e.a(c0787pi.P());
    }
}
