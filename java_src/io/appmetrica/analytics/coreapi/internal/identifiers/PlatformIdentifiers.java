package io.appmetrica.analytics.coreapi.internal.identifiers;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class PlatformIdentifiers {

    /* renamed from: a  reason: collision with root package name */
    private final SimpleAdvertisingIdGetter f17654a;

    /* renamed from: b  reason: collision with root package name */
    private final AppSetIdProvider f17655b;

    public PlatformIdentifiers(SimpleAdvertisingIdGetter simpleAdvertisingIdGetter, AppSetIdProvider appSetIdProvider) {
        this.f17654a = simpleAdvertisingIdGetter;
        this.f17655b = appSetIdProvider;
    }

    public static /* synthetic */ PlatformIdentifiers copy$default(PlatformIdentifiers platformIdentifiers, SimpleAdvertisingIdGetter simpleAdvertisingIdGetter, AppSetIdProvider appSetIdProvider, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            simpleAdvertisingIdGetter = platformIdentifiers.f17654a;
        }
        if ((i10 & 2) != 0) {
            appSetIdProvider = platformIdentifiers.f17655b;
        }
        return platformIdentifiers.copy(simpleAdvertisingIdGetter, appSetIdProvider);
    }

    public final SimpleAdvertisingIdGetter component1() {
        return this.f17654a;
    }

    public final AppSetIdProvider component2() {
        return this.f17655b;
    }

    public final PlatformIdentifiers copy(SimpleAdvertisingIdGetter simpleAdvertisingIdGetter, AppSetIdProvider appSetIdProvider) {
        return new PlatformIdentifiers(simpleAdvertisingIdGetter, appSetIdProvider);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PlatformIdentifiers) {
            PlatformIdentifiers platformIdentifiers = (PlatformIdentifiers) obj;
            return m.a(this.f17654a, platformIdentifiers.f17654a) && m.a(this.f17655b, platformIdentifiers.f17655b);
        }
        return false;
    }

    public final SimpleAdvertisingIdGetter getAdvIdentifiersProvider() {
        return this.f17654a;
    }

    public final AppSetIdProvider getAppSetIdProvider() {
        return this.f17655b;
    }

    public int hashCode() {
        return this.f17655b.hashCode() + (this.f17654a.hashCode() * 31);
    }

    public String toString() {
        return "PlatformIdentifiers(advIdentifiersProvider=" + this.f17654a + ", appSetIdProvider=" + this.f17655b + ')';
    }
}
