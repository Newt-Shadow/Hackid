package com.yandex.metrica.impl.ob;

import com.yandex.metrica.modules.api.CommonIdentifiers;
import com.yandex.metrica.modules.api.ModuleFullRemoteConfig;
import com.yandex.metrica.modules.api.RemoteConfigMetaInfo;
/* renamed from: com.yandex.metrica.impl.ob.id  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0608id {

    /* renamed from: a  reason: collision with root package name */
    private final CommonIdentifiers f12609a;

    /* renamed from: b  reason: collision with root package name */
    private final RemoteConfigMetaInfo f12610b;

    /* renamed from: c  reason: collision with root package name */
    private final C0787pi f12611c;

    public C0608id(C0787pi c0787pi) {
        this.f12611c = c0787pi;
        this.f12609a = new CommonIdentifiers(c0787pi.V(), c0787pi.i());
        this.f12610b = new RemoteConfigMetaInfo(c0787pi.o(), c0787pi.B());
    }

    public final ModuleFullRemoteConfig a(String str) {
        return new ModuleFullRemoteConfig(this.f12609a, this.f12610b, this.f12611c.A().get(str));
    }
}
