package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import com.yandex.metrica.impl.ob.C0787pi;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.vc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0924vc {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: n  reason: collision with root package name */
    private static volatile C0924vc f13804n;

    /* renamed from: o  reason: collision with root package name */
    public static final long f13805o = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: p  reason: collision with root package name */
    private static final Object f13806p = new Object();

    /* renamed from: q  reason: collision with root package name */
    public static final /* synthetic */ int f13807q = 0;

    /* renamed from: c  reason: collision with root package name */
    private C0706mc f13810c;

    /* renamed from: d  reason: collision with root package name */
    private C0787pi f13811d;

    /* renamed from: e  reason: collision with root package name */
    private Mc f13812e;

    /* renamed from: f  reason: collision with root package name */
    private c f13813f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f13814g;

    /* renamed from: h  reason: collision with root package name */
    private final Sb f13815h;

    /* renamed from: i  reason: collision with root package name */
    private final U7 f13816i;

    /* renamed from: j  reason: collision with root package name */
    private final T7 f13817j;

    /* renamed from: k  reason: collision with root package name */
    private final Ed f13818k;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13809b = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f13819l = false;

    /* renamed from: m  reason: collision with root package name */
    private final Object f13820m = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<Object, Object> f13808a = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.vc$a */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0787pi f13821a;

        a(C0787pi c0787pi) {
            this.f13821a = c0787pi;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0924vc.this.f13812e != null) {
                C0924vc.this.f13812e.a(this.f13821a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.vc$b */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0706mc f13823a;

        b(C0706mc c0706mc) {
            this.f13823a = c0706mc;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C0924vc.this.f13812e != null) {
                C0924vc.this.f13812e.a(this.f13823a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.vc$c */
    /* loaded from: classes2.dex */
    public static class c {
        c() {
        }
    }

    C0924vc(Context context, C0948wc c0948wc, c cVar, C0787pi c0787pi) {
        this.f13815h = new Sb(context, c0948wc.a(), c0948wc.d());
        this.f13816i = c0948wc.c();
        this.f13817j = c0948wc.b();
        this.f13818k = c0948wc.e();
        this.f13813f = cVar;
        this.f13811d = c0787pi;
    }

    public void b(Object obj) {
        synchronized (this.f13820m) {
            this.f13808a.remove(obj);
            b();
        }
    }

    public static C0924vc a(Context context) {
        if (f13804n == null) {
            synchronized (f13806p) {
                if (f13804n == null) {
                    Context applicationContext = context.getApplicationContext();
                    f13804n = new C0924vc(applicationContext, new C0948wc(applicationContext), new c(), new C0787pi.b(applicationContext).a());
                }
            }
        }
        return f13804n;
    }

    private void b() {
        if (this.f13819l) {
            if (!this.f13809b || this.f13808a.isEmpty()) {
                this.f13815h.f11259b.execute(new RunnableC0852sc(this));
                Runnable runnable = this.f13814g;
                if (runnable != null) {
                    this.f13815h.f11259b.remove(runnable);
                }
                this.f13819l = false;
            }
        } else if (!this.f13809b || this.f13808a.isEmpty()) {
        } else {
            if (this.f13812e == null) {
                c cVar = this.f13813f;
                Nc nc2 = new Nc(this.f13815h, this.f13816i, this.f13817j, this.f13811d, this.f13810c);
                cVar.getClass();
                this.f13812e = new Mc(nc2);
            }
            this.f13815h.f11259b.execute(new RunnableC0876tc(this));
            if (this.f13814g == null) {
                RunnableC0900uc runnableC0900uc = new RunnableC0900uc(this);
                this.f13814g = runnableC0900uc;
                this.f13815h.f11259b.executeDelayed(runnableC0900uc, f13805o);
            }
            this.f13815h.f11259b.execute(new RunnableC0828rc(this));
            this.f13819l = true;
        }
    }

    public void a(Object obj) {
        synchronized (this.f13820m) {
            this.f13808a.put(obj, null);
            b();
        }
    }

    public Location a() {
        Mc mc2 = this.f13812e;
        if (mc2 == null) {
            return null;
        }
        return mc2.b();
    }

    public void a(boolean z10) {
        synchronized (this.f13820m) {
            if (this.f13809b != z10) {
                this.f13809b = z10;
                this.f13818k.a(z10);
                this.f13815h.f11260c.a(this.f13818k.a());
                b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(C0924vc c0924vc) {
        c0924vc.f13815h.f11259b.executeDelayed(c0924vc.f13814g, f13805o);
    }

    public void a(C0787pi c0787pi, C0706mc c0706mc) {
        synchronized (this.f13820m) {
            this.f13811d = c0787pi;
            this.f13818k.a(c0787pi);
            this.f13815h.f11260c.a(this.f13818k.a());
            this.f13815h.f11259b.execute(new a(c0787pi));
            if (!A2.a(this.f13810c, c0706mc)) {
                a(c0706mc);
            }
        }
    }

    public void a(C0706mc c0706mc) {
        synchronized (this.f13820m) {
            this.f13810c = c0706mc;
        }
        this.f13815h.f11259b.execute(new b(c0706mc));
    }
}
