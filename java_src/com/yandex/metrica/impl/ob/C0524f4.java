package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.f4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0524f4 {

    /* renamed from: a  reason: collision with root package name */
    private final C0454c9 f12368a;

    /* renamed from: b  reason: collision with root package name */
    private final dc.d f12369b;

    /* renamed from: c  reason: collision with root package name */
    private final C0962x2 f12370c;

    /* renamed from: d  reason: collision with root package name */
    private C0882ti f12371d;

    /* renamed from: e  reason: collision with root package name */
    private long f12372e;

    public C0524f4(Context context, I3 i32) {
        this(new C0454c9(C0629ja.a(context).b(i32)), new dc.c(), new C0962x2());
    }

    public boolean a(Boolean bool) {
        C0882ti c0882ti;
        return Boolean.FALSE.equals(bool) && (c0882ti = this.f12371d) != null && this.f12370c.a(this.f12372e, c0882ti.f13651a, "should report diagnostic");
    }

    public void a() {
        long currentTimeMillis = this.f12369b.currentTimeMillis();
        this.f12372e = currentTimeMillis;
        this.f12368a.d(currentTimeMillis).d();
    }

    public C0524f4(C0454c9 c0454c9, dc.d dVar, C0962x2 c0962x2) {
        this.f12368a = c0454c9;
        this.f12369b = dVar;
        this.f12370c = c0962x2;
        this.f12372e = c0454c9.k();
    }

    public void a(C0882ti c0882ti) {
        this.f12371d = c0882ti;
    }
}
