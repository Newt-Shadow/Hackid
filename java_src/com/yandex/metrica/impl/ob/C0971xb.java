package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* renamed from: com.yandex.metrica.impl.ob.xb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0971xb implements Eb {

    /* renamed from: a  reason: collision with root package name */
    private final Object f13925a;

    /* renamed from: b  reason: collision with root package name */
    private C0787pi f13926b;

    /* renamed from: c  reason: collision with root package name */
    private volatile FutureTask<Void> f13927c;

    /* renamed from: d  reason: collision with root package name */
    private final g f13928d;

    /* renamed from: e  reason: collision with root package name */
    private final g f13929e;

    /* renamed from: f  reason: collision with root package name */
    private final g f13930f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC0923vb f13931g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC0923vb f13932h;

    /* renamed from: i  reason: collision with root package name */
    private final InterfaceC0923vb f13933i;

    /* renamed from: j  reason: collision with root package name */
    private Context f13934j;

    /* renamed from: k  reason: collision with root package name */
    private ICommonExecutor f13935k;

    /* renamed from: l  reason: collision with root package name */
    private volatile C1019zb f13936l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.xb$a */
    /* loaded from: classes2.dex */
    public class a implements Callable<Void> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            C0971xb c0971xb = C0971xb.this;
            C0899ub a10 = C0971xb.a(c0971xb, c0971xb.f13934j);
            C0971xb c0971xb2 = C0971xb.this;
            C0899ub b10 = C0971xb.b(c0971xb2, c0971xb2.f13934j);
            C0971xb c0971xb3 = C0971xb.this;
            c0971xb.f13936l = new C1019zb(a10, b10, C0971xb.a(c0971xb3, c0971xb3.f13934j, new Fb()));
            return null;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$b */
    /* loaded from: classes2.dex */
    class b implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f13938a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Gb f13939b;

        b(Context context, Gb gb2) {
            this.f13938a = context;
            this.f13939b = gb2;
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            C1019zb c1019zb = C0971xb.this.f13936l;
            C0971xb c0971xb = C0971xb.this;
            C0899ub a10 = C0971xb.a(c0971xb, C0971xb.a(c0971xb, this.f13938a), c1019zb.a());
            C0971xb c0971xb2 = C0971xb.this;
            C0899ub a11 = C0971xb.a(c0971xb2, C0971xb.b(c0971xb2, this.f13938a), c1019zb.b());
            C0971xb c0971xb3 = C0971xb.this;
            c0971xb.f13936l = new C1019zb(a10, a11, C0971xb.a(c0971xb3, C0971xb.a(c0971xb3, this.f13938a, this.f13939b), c1019zb.c()));
            return null;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$c */
    /* loaded from: classes2.dex */
    public static class c implements g {
        @Override // com.yandex.metrica.impl.ob.C0971xb.g
        public boolean a(C0787pi c0787pi) {
            return true;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$d */
    /* loaded from: classes2.dex */
    public static class d implements g {
        @Override // com.yandex.metrica.impl.ob.C0971xb.g
        public boolean a(C0787pi c0787pi) {
            if (c0787pi != null && (c0787pi.f().f11310v || !c0787pi.q())) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$e */
    /* loaded from: classes2.dex */
    public static class e implements g {
        @Override // com.yandex.metrica.impl.ob.C0971xb.g
        public boolean a(C0787pi c0787pi) {
            return false;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$f */
    /* loaded from: classes2.dex */
    public static class f implements g {
        @Override // com.yandex.metrica.impl.ob.C0971xb.g
        public boolean a(C0787pi c0787pi) {
            if (c0787pi != null && c0787pi.f().f11310v) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.xb$g */
    /* loaded from: classes2.dex */
    public interface g {
        boolean a(C0787pi c0787pi);
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$h */
    /* loaded from: classes2.dex */
    public static class h implements g {
        @Override // com.yandex.metrica.impl.ob.C0971xb.g
        public boolean a(C0787pi c0787pi) {
            if (c0787pi != null && (c0787pi.f().f11302n || !c0787pi.q())) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$i */
    /* loaded from: classes2.dex */
    public static class i implements g {
        @Override // com.yandex.metrica.impl.ob.C0971xb.g
        public boolean a(C0787pi c0787pi) {
            if (c0787pi != null && c0787pi.f().f11302n) {
                return true;
            }
            return false;
        }
    }

    public C0971xb(g gVar, g gVar2, g gVar3, ICommonExecutor iCommonExecutor, String str) {
        this(gVar, gVar2, gVar3, iCommonExecutor, new C0947wb(new Kb("google")), new C0947wb(new Kb("huawei")), new C0947wb(new Kb("yandex")), str);
    }

    static C0899ub a(C0971xb c0971xb, C0899ub c0899ub, C0899ub c0899ub2) {
        c0971xb.getClass();
        U0 u02 = c0899ub.f13686b;
        return u02 != U0.OK ? new C0899ub(c0899ub2.f13685a, u02, c0899ub.f13687c) : c0899ub;
    }

    public void c(Context context) {
        this.f13934j = context.getApplicationContext();
    }

    C0971xb(g gVar, g gVar2, g gVar3, ICommonExecutor iCommonExecutor, InterfaceC0923vb interfaceC0923vb, InterfaceC0923vb interfaceC0923vb2, InterfaceC0923vb interfaceC0923vb3, String str) {
        this.f13925a = new Object();
        this.f13928d = gVar;
        this.f13929e = gVar2;
        this.f13930f = gVar3;
        this.f13931g = interfaceC0923vb;
        this.f13932h = interfaceC0923vb2;
        this.f13933i = interfaceC0923vb3;
        this.f13935k = iCommonExecutor;
        this.f13936l = new C1019zb();
    }

    private void c() {
        boolean z10;
        if (this.f13934j != null) {
            synchronized (this) {
                U0 u02 = this.f13936l.a().f13686b;
                U0 u03 = U0.UNKNOWN;
                if (u02 != u03) {
                    z10 = this.f13936l.b().f13686b != u03;
                }
            }
            if (z10) {
                return;
            }
            a(this.f13934j);
        }
    }

    public void b(Context context) {
        this.f13934j = context.getApplicationContext();
        if (this.f13927c == null) {
            synchronized (this.f13925a) {
                if (this.f13927c == null) {
                    this.f13927c = new FutureTask<>(new a());
                    this.f13935k.execute(this.f13927c);
                }
            }
        }
    }

    public void a(Context context, C0787pi c0787pi) {
        this.f13926b = c0787pi;
        b(context);
    }

    public void a(C0787pi c0787pi) {
        this.f13926b = c0787pi;
    }

    static C0899ub b(C0971xb c0971xb, Context context) {
        if (c0971xb.f13929e.a(c0971xb.f13926b)) {
            return c0971xb.f13932h.a(context);
        }
        C0787pi c0787pi = c0971xb.f13926b;
        if (c0787pi != null && c0787pi.q()) {
            if (!c0971xb.f13926b.f().f11310v) {
                return new C0899ub(null, U0.FEATURE_DISABLED, "startup forbade ads identifiers collecting");
            }
            return new C0899ub(null, U0.UNKNOWN, "identifiers collecting is forbidden for unknown reason");
        }
        return new C0899ub(null, U0.NO_STARTUP, "startup has not been received yet");
    }

    public C1019zb a(Context context) {
        b(context);
        try {
            this.f13927c.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.f13936l;
    }

    public C1019zb a(Context context, Gb gb2) {
        FutureTask futureTask = new FutureTask(new b(context.getApplicationContext(), gb2));
        this.f13935k.execute(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.f13936l;
    }

    @Override // com.yandex.metrica.impl.ob.Eb
    @Deprecated
    public Boolean b() {
        c();
        C0875tb c0875tb = this.f13936l.a().f13685a;
        if (c0875tb == null) {
            return null;
        }
        return c0875tb.f13630c;
    }

    static C0899ub a(C0971xb c0971xb, Context context) {
        if (c0971xb.f13928d.a(c0971xb.f13926b)) {
            return c0971xb.f13931g.a(context);
        }
        C0787pi c0787pi = c0971xb.f13926b;
        if (c0787pi != null && c0787pi.q()) {
            if (!c0971xb.f13926b.f().f11302n) {
                return new C0899ub(null, U0.FEATURE_DISABLED, "startup forbade ads identifiers collecting");
            }
            return new C0899ub(null, U0.UNKNOWN, "identifiers collecting is forbidden for unknown reason");
        }
        return new C0899ub(null, U0.NO_STARTUP, "startup has not been received yet");
    }

    static C0899ub a(C0971xb c0971xb, Context context, Gb gb2) {
        if (c0971xb.f13930f.a(c0971xb.f13926b)) {
            return c0971xb.f13933i.a(context, gb2);
        }
        return new C0899ub(null, U0.UNKNOWN, "identifiers collecting is forbidden for unknown reason");
    }

    @Override // com.yandex.metrica.impl.ob.Eb
    @Deprecated
    public String a() {
        c();
        C0875tb c0875tb = this.f13936l.a().f13685a;
        if (c0875tb == null) {
            return null;
        }
        return c0875tb.f13629b;
    }
}
