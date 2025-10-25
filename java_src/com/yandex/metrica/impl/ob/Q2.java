package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes2.dex */
public class Q2 {

    /* renamed from: a  reason: collision with root package name */
    private final C0592hm f11138a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f11139b;

    /* renamed from: c  reason: collision with root package name */
    private S0 f11140c;

    /* renamed from: d  reason: collision with root package name */
    private T0 f11141d;

    public Q2() {
        this(new C0592hm());
    }

    public synchronized S0 a(Context context, Im im) {
        if (this.f11140c == null) {
            if (a(context)) {
                this.f11140c = new C0738nj(im.b(), im.b().getHandler(), im.a(), new Q());
            } else {
                this.f11140c = new P2(context, im);
            }
        }
        return this.f11140c;
    }

    Q2(C0592hm c0592hm) {
        this.f11138a = c0592hm;
    }

    public synchronized T0 a(Context context, S0 s02) {
        if (this.f11141d == null) {
            if (a(context)) {
                this.f11141d = new C0763oj();
            } else {
                this.f11141d = new T2(context, s02);
            }
        }
        return this.f11141d;
    }

    private synchronized boolean a(Context context) {
        if (this.f11139b == null) {
            this.f11139b = Boolean.valueOf(!this.f11138a.a(context));
        }
        return this.f11139b.booleanValue();
    }
}
