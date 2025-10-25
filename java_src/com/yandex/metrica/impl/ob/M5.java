package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes2.dex */
public class M5 {

    /* renamed from: a  reason: collision with root package name */
    private final int f10790a;

    /* renamed from: b  reason: collision with root package name */
    private final Q5 f10791b;

    /* renamed from: c  reason: collision with root package name */
    private N5 f10792c;

    public M5(Context context, I3 i32, int i10) {
        this(new Q5(context, i32), i10);
    }

    private void b() {
        this.f10791b.a(this.f10792c);
    }

    public D0 a(String str) {
        if (this.f10792c == null) {
            N5 a10 = this.f10791b.a();
            this.f10792c = a10;
            int d10 = a10.d();
            int i10 = this.f10790a;
            if (d10 != i10) {
                this.f10792c.b(i10);
                b();
            }
        }
        int hashCode = str.hashCode();
        if (this.f10792c.b().contains(Integer.valueOf(hashCode))) {
            return D0.NON_FIRST_OCCURENCE;
        }
        D0 d02 = this.f10792c.e() ? D0.FIRST_OCCURRENCE : D0.UNKNOWN;
        if (this.f10792c.c() < 1000) {
            this.f10792c.a(hashCode);
        } else {
            this.f10792c.a(false);
        }
        b();
        return d02;
    }

    M5(Q5 q52, int i10) {
        this.f10790a = i10;
        this.f10791b = q52;
    }

    public void a() {
        if (this.f10792c == null) {
            N5 a10 = this.f10791b.a();
            this.f10792c = a10;
            int d10 = a10.d();
            int i10 = this.f10790a;
            if (d10 != i10) {
                this.f10792c.b(i10);
                b();
            }
        }
        this.f10792c.a();
        this.f10792c.a(true);
        b();
    }
}
