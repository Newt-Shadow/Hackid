package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class I3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f10217a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10218b;

    public I3(String str, String str2) {
        this.f10217a = str;
        this.f10218b = str2;
    }

    public String a() {
        return this.f10218b;
    }

    public String b() {
        return this.f10217a;
    }

    public String c() {
        return this.f10217a + "_" + A2.a(this.f10218b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        I3 i32 = (I3) obj;
        String str = this.f10217a;
        if (str == null ? i32.f10217a != null : !str.equals(i32.f10217a)) {
            return false;
        }
        String str2 = this.f10218b;
        String str3 = i32.f10218b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        String str = this.f10217a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f10218b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    public String toString() {
        return this.f10217a + "_" + this.f10218b;
    }
}
