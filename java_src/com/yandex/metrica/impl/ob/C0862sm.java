package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.yandex.metrica.impl.ob.sm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0862sm {

    /* renamed from: a  reason: collision with root package name */
    private final ReentrantLock f13604a;

    /* renamed from: b  reason: collision with root package name */
    private final C0886tm f13605b;

    public C0862sm(Context context, String str) {
        this(new ReentrantLock(), new C0886tm(context, str));
    }

    public void a() {
        this.f13604a.lock();
        this.f13605b.a();
    }

    public void b() {
        this.f13605b.b();
        this.f13604a.unlock();
    }

    public void c() {
        this.f13605b.c();
        this.f13604a.unlock();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0862sm(ReentrantLock reentrantLock, C0886tm c0886tm) {
        this.f13604a = reentrantLock;
        this.f13605b = c0886tm;
    }
}
