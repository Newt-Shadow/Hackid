package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Bd {

    /* renamed from: a  reason: collision with root package name */
    public final String f9787a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f9788b;

    public Bd(String str, boolean z10) {
        this.f9787a = str;
        this.f9788b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Bd.class != obj.getClass()) {
            return false;
        }
        Bd bd2 = (Bd) obj;
        if (this.f9788b != bd2.f9788b) {
            return false;
        }
        return this.f9787a.equals(bd2.f9787a);
    }

    public int hashCode() {
        return (this.f9787a.hashCode() * 31) + (this.f9788b ? 1 : 0);
    }

    public String toString() {
        return "PermissionState{name='" + this.f9787a + "', granted=" + this.f9788b + '}';
    }
}
