package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
/* renamed from: io.appmetrica.analytics.impl.w0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1580w0 {

    /* renamed from: a  reason: collision with root package name */
    public final NativeCrashSource f20839a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20840b;

    /* renamed from: c  reason: collision with root package name */
    public final String f20841c;

    /* renamed from: d  reason: collision with root package name */
    public final String f20842d;

    /* renamed from: e  reason: collision with root package name */
    public final long f20843e;

    /* renamed from: f  reason: collision with root package name */
    public final C1605x0 f20844f;

    public C1580w0(NativeCrashSource nativeCrashSource, String str, String str2, String str3, long j10, C1605x0 c1605x0) {
        this.f20839a = nativeCrashSource;
        this.f20840b = str;
        this.f20841c = str2;
        this.f20842d = str3;
        this.f20843e = j10;
        this.f20844f = c1605x0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1580w0) {
            C1580w0 c1580w0 = (C1580w0) obj;
            return this.f20839a == c1580w0.f20839a && kotlin.jvm.internal.m.a(this.f20840b, c1580w0.f20840b) && kotlin.jvm.internal.m.a(this.f20841c, c1580w0.f20841c) && kotlin.jvm.internal.m.a(this.f20842d, c1580w0.f20842d) && this.f20843e == c1580w0.f20843e && kotlin.jvm.internal.m.a(this.f20844f, c1580w0.f20844f);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f20840b.hashCode();
        int hashCode2 = this.f20841c.hashCode();
        int hashCode3 = this.f20842d.hashCode();
        int hashCode4 = Long.hashCode(this.f20843e);
        return this.f20844f.hashCode() + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f20839a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AppMetricaNativeCrash(source=" + this.f20839a + ", handlerVersion=" + this.f20840b + ", uuid=" + this.f20841c + ", dumpFile=" + this.f20842d + ", creationTime=" + this.f20843e + ", metadata=" + this.f20844f + ')';
    }
}
