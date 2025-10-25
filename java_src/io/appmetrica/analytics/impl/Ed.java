package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public abstract class Ed extends Ve implements InterfaceC1178fl {
    public Ed(Ta ta2, String str) {
        super(ta2, str);
    }

    public final String c(String str, String str2) {
        return this.f19129a.getString(f(str), str2);
    }

    public final InterfaceC1178fl d(String str, String str2) {
        return (InterfaceC1178fl) b(f(str), str2);
    }

    public final boolean e(String str) {
        return this.f19129a.a(f(str));
    }

    public abstract String f(String str);

    public InterfaceC1178fl g(String str) {
        return (InterfaceC1178fl) d(f(str));
    }

    public Ed(Ta ta2) {
        this(ta2, null);
    }

    public final InterfaceC1178fl d(String str, int i10) {
        return (InterfaceC1178fl) b(f(str), i10);
    }

    public final int c(String str, int i10) {
        return this.f19129a.getInt(f(str), i10);
    }

    public final InterfaceC1178fl d(String str, long j10) {
        return (InterfaceC1178fl) b(f(str), j10);
    }

    public final InterfaceC1178fl d(String str, boolean z10) {
        return (InterfaceC1178fl) b(f(str), z10);
    }

    public final long c(String str, long j10) {
        return this.f19129a.getLong(f(str), j10);
    }

    public final boolean c(String str, boolean z10) {
        return this.f19129a.getBoolean(f(str), z10);
    }
}
