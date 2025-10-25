package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.wk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0956wk {

    /* renamed from: a  reason: collision with root package name */
    public final int f13898a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13899b;

    /* renamed from: c  reason: collision with root package name */
    private final int f13900c = a();

    public C0956wk(int i10, String str) {
        this.f13898a = i10;
        this.f13899b = str;
    }

    private int a() {
        return (this.f13898a * 31) + this.f13899b.length();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0956wk.class != obj.getClass()) {
            return false;
        }
        C0956wk c0956wk = (C0956wk) obj;
        if (this.f13898a != c0956wk.f13898a) {
            return false;
        }
        return this.f13899b.equals(c0956wk.f13899b);
    }

    public int hashCode() {
        return this.f13900c;
    }
}
