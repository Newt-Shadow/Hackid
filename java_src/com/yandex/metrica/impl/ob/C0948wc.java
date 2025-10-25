package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
/* renamed from: com.yandex.metrica.impl.ob.wc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0948wc {

    /* renamed from: a  reason: collision with root package name */
    private final IHandlerExecutor f13874a = F0.g().q().b();

    /* renamed from: b  reason: collision with root package name */
    private final U7 f13875b;

    /* renamed from: c  reason: collision with root package name */
    private final T7 f13876c;

    /* renamed from: d  reason: collision with root package name */
    private final Ed f13877d;

    /* renamed from: e  reason: collision with root package name */
    private final C0997yd f13878e;

    public C0948wc(Context context) {
        this.f13875b = C0629ja.a(context).f();
        this.f13876c = C0629ja.a(context).e();
        Ed ed2 = new Ed();
        this.f13877d = ed2;
        this.f13878e = new C0997yd(ed2.a());
    }

    public IHandlerExecutor a() {
        return this.f13874a;
    }

    public T7 b() {
        return this.f13876c;
    }

    public U7 c() {
        return this.f13875b;
    }

    public C0997yd d() {
        return this.f13878e;
    }

    public Ed e() {
        return this.f13877d;
    }
}
