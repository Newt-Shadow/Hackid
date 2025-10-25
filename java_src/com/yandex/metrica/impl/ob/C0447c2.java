package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.c2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0447c2 {

    /* renamed from: a  reason: collision with root package name */
    private final int f12117a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12118b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12119c;

    /* renamed from: d  reason: collision with root package name */
    private final float f12120d;

    /* renamed from: e  reason: collision with root package name */
    private final com.yandex.metrica.c f12121e;

    public C0447c2(int i10, int i11, int i12, float f10, com.yandex.metrica.c cVar) {
        this.f12117a = i10;
        this.f12118b = i11;
        this.f12119c = i12;
        this.f12120d = f10;
        this.f12121e = cVar;
    }

    public final com.yandex.metrica.c a() {
        return this.f12121e;
    }

    public final int b() {
        return this.f12119c;
    }

    public final int c() {
        return this.f12118b;
    }

    public final float d() {
        return this.f12120d;
    }

    public final int e() {
        return this.f12117a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C0447c2) {
                C0447c2 c0447c2 = (C0447c2) obj;
                return this.f12117a == c0447c2.f12117a && this.f12118b == c0447c2.f12118b && this.f12119c == c0447c2.f12119c && Float.compare(this.f12120d, c0447c2.f12120d) == 0 && kotlin.jvm.internal.m.a(this.f12121e, c0447c2.f12121e);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int floatToIntBits = ((((((this.f12117a * 31) + this.f12118b) * 31) + this.f12119c) * 31) + Float.floatToIntBits(this.f12120d)) * 31;
        com.yandex.metrica.c cVar = this.f12121e;
        return floatToIntBits + (cVar != null ? cVar.hashCode() : 0);
    }

    public String toString() {
        return "ScreenInfo(width=" + this.f12117a + ", height=" + this.f12118b + ", dpi=" + this.f12119c + ", scaleFactor=" + this.f12120d + ", deviceType=" + this.f12121e + ")";
    }
}
