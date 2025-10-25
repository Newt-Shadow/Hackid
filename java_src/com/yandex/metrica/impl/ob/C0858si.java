package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.si  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0858si {

    /* renamed from: a  reason: collision with root package name */
    private final int f13599a;

    public C0858si(int i10) {
        this.f13599a = i10;
    }

    public final int a() {
        return this.f13599a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C0858si) && this.f13599a == ((C0858si) obj).f13599a;
        }
        return true;
    }

    public int hashCode() {
        return this.f13599a;
    }

    public String toString() {
        return "StartupUpdateConfig(intervalSeconds=" + this.f13599a + ")";
    }
}
