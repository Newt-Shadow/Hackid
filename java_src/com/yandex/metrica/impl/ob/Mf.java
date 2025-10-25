package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Mf {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f10826a;

    /* renamed from: b  reason: collision with root package name */
    private final Sf f10827b;

    /* renamed from: c  reason: collision with root package name */
    private final Kf f10828c;

    /* renamed from: d  reason: collision with root package name */
    private final Kn<String> f10829d;

    /* renamed from: e  reason: collision with root package name */
    private final Kn<String> f10830e;

    /* loaded from: classes2.dex */
    public static final class a extends AbstractRunnableC0517em {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f10832b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f10833c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f10834d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Map f10835e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Map f10836f;

        a(int i10, String str, String str2, Map map, Map map2) {
            this.f10832b = i10;
            this.f10833c = str;
            this.f10834d = str2;
            this.f10835e = map;
            this.f10836f = map2;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            Mf.a(Mf.this).a(this.f10832b, this.f10833c, this.f10834d, this.f10835e, this.f10836f);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends AbstractRunnableC0517em {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10838b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ byte[] f10839c;

        b(String str, byte[] bArr) {
            this.f10838b = str;
            this.f10839c = bArr;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            Mf.a(Mf.this).a(this.f10838b, this.f10839c);
        }
    }

    public Mf(ICommonExecutor iCommonExecutor, Sf sf2, Kf kf2, Kn<String> kn, Kn<String> kn2) {
        this.f10826a = iCommonExecutor;
        this.f10827b = sf2;
        this.f10828c = kf2;
        this.f10829d = kn;
        this.f10830e = kn2;
    }

    public final void a(int i10, String str, String str2, Map<String, String> map, Map<String, byte[]> map2) {
        this.f10828c.a(null);
        this.f10829d.a(str);
        this.f10826a.execute(new a(i10, str, str2, map, map2));
    }

    public Mf(ICommonExecutor iCommonExecutor) {
        this(iCommonExecutor, new Sf());
    }

    private Mf(ICommonExecutor iCommonExecutor, Sf sf2) {
        this(iCommonExecutor, sf2, new Kf(sf2), new Hn(new Gn("Event name")), new Hn(new Gn("Session extra key")));
    }

    public final void a(String str, byte[] bArr) {
        this.f10830e.a(str);
        this.f10826a.execute(new b(str, bArr));
    }

    public final boolean a() {
        this.f10827b.getClass();
        return R2.h();
    }

    public static final K0 a(Mf mf2) {
        mf2.f10827b.getClass();
        R2 k10 = R2.k();
        kotlin.jvm.internal.m.b(k10);
        kotlin.jvm.internal.m.d(k10, "provider.peekInitializedImpl()!!");
        C0645k1 d10 = k10.d();
        kotlin.jvm.internal.m.b(d10);
        kotlin.jvm.internal.m.d(d10, "provider.peekInitialized…rterApiConsumerProvider!!");
        K0 b10 = d10.b();
        kotlin.jvm.internal.m.d(b10, "provider.peekInitialized…erProvider!!.mainReporter");
        return b10;
    }
}
