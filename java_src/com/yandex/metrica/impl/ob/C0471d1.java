package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ConfigProvider;
/* renamed from: com.yandex.metrica.impl.ob.d1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0471d1 implements ConfigProvider {

    /* renamed from: a  reason: collision with root package name */
    private final xc.d f12199a;

    /* renamed from: b  reason: collision with root package name */
    private final L3 f12200b;

    /* renamed from: com.yandex.metrica.impl.ob.d1$a */
    /* loaded from: classes2.dex */
    static final class a extends kotlin.jvm.internal.n implements id.a {
        a() {
            super(0);
        }

        @Override // id.a
        public Object invoke() {
            return C0471d1.this.f12200b.m();
        }
    }

    public C0471d1(L3 l32) {
        xc.d a10;
        this.f12200b = l32;
        a10 = xc.f.a(new a());
        this.f12199a = a10;
    }

    public Lg a() {
        Lg cachedConfig = (Lg) this.f12199a.getValue();
        kotlin.jvm.internal.m.d(cachedConfig, "cachedConfig");
        return cachedConfig;
    }

    @Override // com.yandex.metrica.networktasks.api.ConfigProvider
    public Object getConfig() {
        Lg cachedConfig = (Lg) this.f12199a.getValue();
        kotlin.jvm.internal.m.d(cachedConfig, "cachedConfig");
        return cachedConfig;
    }
}
