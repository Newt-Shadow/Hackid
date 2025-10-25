package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public final class In {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f10455a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10456b;

    private In(Kn<?> kn, boolean z10, String str) {
        kn.getClass();
        this.f10455a = z10;
        this.f10456b = str;
    }

    public final String a() {
        return this.f10456b;
    }

    public final boolean b() {
        return this.f10455a;
    }

    public static final In a(Kn<?> kn) {
        return new In(kn, true, "");
    }

    public static final In a(Kn<?> kn, String str) {
        return new In(kn, false, str);
    }
}
