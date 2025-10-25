package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.sg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0856sg {

    /* renamed from: a  reason: collision with root package name */
    private final Set<C0880tg> f13589a;

    /* renamed from: b  reason: collision with root package name */
    private C0486dg f13590b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13591c;

    /* renamed from: d  reason: collision with root package name */
    private final C0403a8 f13592d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f13593e;

    /* renamed from: com.yandex.metrica.impl.ob.sg$a */
    /* loaded from: classes2.dex */
    public interface a {
        void a(C0486dg c0486dg);
    }

    public C0856sg(Context context) {
        this(context, F0.g().w().a());
    }

    public synchronized void a(C0486dg c0486dg) {
        this.f13590b = c0486dg;
        this.f13591c = true;
        this.f13592d.a(c0486dg);
        this.f13592d.a(true);
        C0486dg c0486dg2 = this.f13590b;
        synchronized (this) {
            for (C0880tg c0880tg : this.f13589a) {
                c0880tg.a(c0486dg2);
            }
        }
    }

    public void b() {
        if (!this.f13591c) {
            Context context = this.f13593e;
            F0 g10 = F0.g();
            kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
            Pm q10 = g10.q();
            kotlin.jvm.internal.m.d(q10, "GlobalServiceLocator.get…).serviceExecutorProvider");
            new C0710mg(this, new C0952wg(context, q10.a()), new C0561gg(context), new C0976xg(context, null, null, 6)).b();
        }
    }

    C0856sg(Context context, C0403a8 c0403a8) {
        this.f13589a = new HashSet();
        this.f13593e = context;
        this.f13592d = c0403a8;
        this.f13590b = c0403a8.g();
        this.f13591c = c0403a8.h();
    }

    public C0486dg a() {
        return this.f13590b;
    }

    public synchronized void a(C0880tg c0880tg) {
        this.f13589a.add(c0880tg);
        if (this.f13591c) {
            c0880tg.a(this.f13590b);
        }
    }
}
