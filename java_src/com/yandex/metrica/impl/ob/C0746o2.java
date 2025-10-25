package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0792q;
import com.yandex.metrica.impl.ob.r;
/* renamed from: com.yandex.metrica.impl.ob.o2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0746o2 {

    /* renamed from: a  reason: collision with root package name */
    private final C0792q f13047a;

    /* renamed from: b  reason: collision with root package name */
    private final Ll<C0620j1> f13048b;

    /* renamed from: c  reason: collision with root package name */
    private final C0792q.b f13049c;

    /* renamed from: d  reason: collision with root package name */
    private final C0792q.b f13050d;

    /* renamed from: e  reason: collision with root package name */
    private final r f13051e;

    /* renamed from: f  reason: collision with root package name */
    private final C0768p f13052f;

    /* renamed from: com.yandex.metrica.impl.ob.o2$a */
    /* loaded from: classes2.dex */
    class a implements C0792q.b {

        /* renamed from: com.yandex.metrica.impl.ob.o2$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0131a implements E1<C0620j1> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Activity f13054a;

            C0131a(Activity activity) {
                this.f13054a = activity;
            }

            @Override // com.yandex.metrica.impl.ob.E1
            public void b(C0620j1 c0620j1) {
                C0746o2.a(C0746o2.this, this.f13054a, c0620j1);
            }
        }

        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C0792q.b
        public void a(Activity activity, C0792q.a aVar) {
            C0746o2.this.f13048b.a((E1) new C0131a(activity));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.o2$b */
    /* loaded from: classes2.dex */
    class b implements C0792q.b {

        /* renamed from: com.yandex.metrica.impl.ob.o2$b$a */
        /* loaded from: classes2.dex */
        class a implements E1<C0620j1> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Activity f13057a;

            a(Activity activity) {
                this.f13057a = activity;
            }

            @Override // com.yandex.metrica.impl.ob.E1
            public void b(C0620j1 c0620j1) {
                C0746o2.b(C0746o2.this, this.f13057a, c0620j1);
            }
        }

        b() {
        }

        @Override // com.yandex.metrica.impl.ob.C0792q.b
        public void a(Activity activity, C0792q.a aVar) {
            C0746o2.this.f13048b.a((E1) new a(activity));
        }
    }

    public C0746o2(C0792q c0792q, ICommonExecutor iCommonExecutor, C0768p c0768p) {
        this(c0792q, c0768p, new Ll(iCommonExecutor), new r());
    }

    public void b(Activity activity, K0 k02) {
        if (activity != null) {
            this.f13052f.a(activity);
        }
        if (this.f13051e.a(activity, r.a.RESUMED)) {
            k02.a(activity);
        }
    }

    C0746o2(C0792q c0792q, C0768p c0768p, Ll<C0620j1> ll, r rVar) {
        this.f13047a = c0792q;
        this.f13052f = c0768p;
        this.f13048b = ll;
        this.f13051e = rVar;
        this.f13049c = new a();
        this.f13050d = new b();
    }

    public C0792q.c a() {
        this.f13047a.a(this.f13049c, C0792q.a.RESUMED);
        this.f13047a.a(this.f13050d, C0792q.a.PAUSED);
        return this.f13047a.a();
    }

    static void b(C0746o2 c0746o2, Activity activity, K0 k02) {
        if (c0746o2.f13051e.a(activity, r.a.PAUSED)) {
            ((C0620j1) k02).b(activity);
        }
    }

    public void a(Activity activity, K0 k02) {
        if (activity != null) {
            this.f13052f.a(activity);
        }
        if (this.f13051e.a(activity, r.a.PAUSED)) {
            k02.b(activity);
        }
    }

    public void a(C0620j1 c0620j1) {
        this.f13048b.a((Ll<C0620j1>) c0620j1);
    }

    static void a(C0746o2 c0746o2, Activity activity, K0 k02) {
        if (c0746o2.f13051e.a(activity, r.a.RESUMED)) {
            ((C0620j1) k02).a(activity);
        }
    }
}
