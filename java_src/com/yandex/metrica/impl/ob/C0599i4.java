package com.yandex.metrica.impl.ob;

import com.yandex.metrica.CounterConfiguration;
/* renamed from: com.yandex.metrica.impl.ob.i4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0599i4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f12590a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12591b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f12592c;

    /* renamed from: d  reason: collision with root package name */
    private final String f12593d;

    /* renamed from: e  reason: collision with root package name */
    private final CounterConfiguration.b f12594e;

    public C0599i4(String str, String str2, Integer num, String str3, CounterConfiguration.b bVar) {
        this.f12590a = str;
        this.f12591b = str2;
        this.f12592c = num;
        this.f12593d = str3;
        this.f12594e = bVar;
    }

    public String a() {
        return this.f12590a;
    }

    public String b() {
        return this.f12591b;
    }

    public Integer c() {
        return this.f12592c;
    }

    public String d() {
        return this.f12593d;
    }

    public CounterConfiguration.b e() {
        return this.f12594e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0599i4.class != obj.getClass()) {
            return false;
        }
        C0599i4 c0599i4 = (C0599i4) obj;
        String str = this.f12590a;
        if (str == null ? c0599i4.f12590a != null : !str.equals(c0599i4.f12590a)) {
            return false;
        }
        if (!this.f12591b.equals(c0599i4.f12591b)) {
            return false;
        }
        Integer num = this.f12592c;
        if (num == null ? c0599i4.f12592c != null : !num.equals(c0599i4.f12592c)) {
            return false;
        }
        String str2 = this.f12593d;
        if (str2 == null ? c0599i4.f12593d != null : !str2.equals(c0599i4.f12593d)) {
            return false;
        }
        if (this.f12594e == c0599i4.f12594e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        String str = this.f12590a;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode = ((i10 * 31) + this.f12591b.hashCode()) * 31;
        Integer num = this.f12592c;
        if (num != null) {
            i11 = num.hashCode();
        } else {
            i11 = 0;
        }
        int i13 = (hashCode + i11) * 31;
        String str2 = this.f12593d;
        if (str2 != null) {
            i12 = str2.hashCode();
        }
        return ((i13 + i12) * 31) + this.f12594e.hashCode();
    }

    public String toString() {
        return "ClientDescription{mApiKey='" + this.f12590a + "', mPackageName='" + this.f12591b + "', mProcessID=" + this.f12592c + ", mProcessSessionID='" + this.f12593d + "', mReporterType=" + this.f12594e + '}';
    }

    public static C0599i4 a(C1011z3 c1011z3) {
        return new C0599i4(c1011z3.b().b(), c1011z3.a().f(), c1011z3.a().g(), c1011z3.a().h(), c1011z3.b().M());
    }
}
