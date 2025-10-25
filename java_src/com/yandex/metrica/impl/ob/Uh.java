package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public final class Uh {

    /* renamed from: a  reason: collision with root package name */
    private final String f11583a;

    /* renamed from: b  reason: collision with root package name */
    private final int f11584b;

    /* renamed from: c  reason: collision with root package name */
    private final int f11585c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f11586d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f11587e;

    public Uh(String str, int i10, int i11, boolean z10, boolean z11) {
        this.f11583a = str;
        this.f11584b = i10;
        this.f11585c = i11;
        this.f11586d = z10;
        this.f11587e = z11;
    }

    public final int a() {
        return this.f11585c;
    }

    public final int b() {
        return this.f11584b;
    }

    public final String c() {
        return this.f11583a;
    }

    public final boolean d() {
        return this.f11586d;
    }

    public final boolean e() {
        return this.f11587e;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Uh) {
                Uh uh = (Uh) obj;
                return kotlin.jvm.internal.m.a(this.f11583a, uh.f11583a) && this.f11584b == uh.f11584b && this.f11585c == uh.f11585c && this.f11586d == uh.f11586d && this.f11587e == uh.f11587e;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.f11583a;
        int hashCode = (((((str != null ? str.hashCode() : 0) * 31) + this.f11584b) * 31) + this.f11585c) * 31;
        boolean z10 = this.f11586d;
        int i10 = z10;
        if (z10 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode + i10) * 31;
        boolean z11 = this.f11587e;
        return i11 + (z11 ? 1 : z11 ? 1 : 0);
    }

    public String toString() {
        return "EgressConfig(url=" + this.f11583a + ", repeatedDelay=" + this.f11584b + ", randomDelayWindow=" + this.f11585c + ", isBackgroundAllowed=" + this.f11586d + ", isDiagnosticsEnabled=" + this.f11587e + ")";
    }
}
