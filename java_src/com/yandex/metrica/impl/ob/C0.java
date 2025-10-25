package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ConfigProvider;
/* loaded from: classes2.dex */
public final class C0 implements ConfigProvider {

    /* renamed from: a  reason: collision with root package name */
    private final Object f9816a;

    public C0(Object obj) {
        this.f9816a = obj;
    }

    @Override // com.yandex.metrica.networktasks.api.ConfigProvider
    public Object getConfig() {
        return this.f9816a;
    }
}
