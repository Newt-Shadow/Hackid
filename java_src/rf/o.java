package rf;

import android.media.SoundPool;
import id.Function2;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import td.l0;
import td.m0;
import td.z0;
import xc.t;
/* loaded from: classes2.dex */
public final class o implements l {

    /* renamed from: a  reason: collision with root package name */
    private final s f29174a;

    /* renamed from: b  reason: collision with root package name */
    private final n f29175b;

    /* renamed from: c  reason: collision with root package name */
    private final l0 f29176c;

    /* renamed from: d  reason: collision with root package name */
    private Integer f29177d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f29178e;

    /* renamed from: f  reason: collision with root package name */
    private qf.a f29179f;

    /* renamed from: g  reason: collision with root package name */
    private p f29180g;

    /* renamed from: h  reason: collision with root package name */
    private sf.d f29181h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f29182a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ sf.d f29183b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ o f29184c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ o f29185d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ long f29186e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: rf.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0303a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f29187a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f29188b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ o f29189c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f29190d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ o f29191e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ sf.d f29192f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ long f29193g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0303a(o oVar, String str, o oVar2, sf.d dVar, long j10, ad.e eVar) {
                super(2, eVar);
                this.f29189c = oVar;
                this.f29190d = str;
                this.f29191e = oVar2;
                this.f29192f = dVar;
                this.f29193g = j10;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                C0303a c0303a = new C0303a(this.f29189c, this.f29190d, this.f29191e, this.f29192f, this.f29193g, eVar);
                c0303a.f29188b = obj;
                return c0303a;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                bd.b.e();
                if (this.f29187a == 0) {
                    xc.m.b(obj);
                    s s10 = this.f29189c.s();
                    s10.t("Now loading " + this.f29190d);
                    int load = this.f29189c.q().load(this.f29190d, 1);
                    this.f29189c.f29180g.b().put(kotlin.coroutines.jvm.internal.b.c(load), this.f29191e);
                    this.f29189c.v(kotlin.coroutines.jvm.internal.b.c(load));
                    s s11 = this.f29189c.s();
                    s11.t("time to call load() for " + this.f29192f + ": " + (System.currentTimeMillis() - this.f29193g) + " player=" + ((l0) this.f29188b));
                    return t.f32733a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((C0303a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(sf.d dVar, o oVar, o oVar2, long j10, ad.e eVar) {
            super(2, eVar);
            this.f29183b = dVar;
            this.f29184c = oVar;
            this.f29185d = oVar2;
            this.f29186e = j10;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new a(this.f29183b, this.f29184c, this.f29185d, this.f29186e, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.b.e();
            if (this.f29182a == 0) {
                xc.m.b(obj);
                td.g.d(this.f29184c.f29176c, z0.c(), null, new C0303a(this.f29184c, this.f29183b.d(), this.f29185d, this.f29183b, this.f29186e, null), 2, null);
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    public o(s wrappedPlayer, n soundPoolManager) {
        kotlin.jvm.internal.m.e(wrappedPlayer, "wrappedPlayer");
        kotlin.jvm.internal.m.e(soundPoolManager, "soundPoolManager");
        this.f29174a = wrappedPlayer;
        this.f29175b = soundPoolManager;
        this.f29176c = m0.a(z0.c());
        qf.a j10 = wrappedPlayer.j();
        this.f29179f = j10;
        soundPoolManager.b(32, j10);
        p e10 = soundPoolManager.e(this.f29179f);
        if (e10 != null) {
            this.f29180g = e10;
            return;
        }
        throw new IllegalStateException(("Could not create SoundPool " + this.f29179f).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SoundPool q() {
        return this.f29180g.c();
    }

    private final int t(boolean z10) {
        return z10 ? -1 : 0;
    }

    private final void u(qf.a aVar) {
        if (!kotlin.jvm.internal.m.a(this.f29179f.a(), aVar.a())) {
            release();
            this.f29175b.b(32, aVar);
            p e10 = this.f29175b.e(aVar);
            if (e10 != null) {
                this.f29180g = e10;
            } else {
                throw new IllegalStateException(("Could not create SoundPool " + aVar).toString());
            }
        }
        this.f29179f = aVar;
    }

    private final Void x(String str) {
        throw new UnsupportedOperationException("LOW_LATENCY mode does not support: " + str);
    }

    @Override // rf.l
    public void a() {
    }

    @Override // rf.l
    public void b() {
    }

    @Override // rf.l
    public void c(boolean z10) {
        Integer num = this.f29178e;
        if (num != null) {
            q().setLoop(num.intValue(), t(z10));
        }
    }

    @Override // rf.l
    public void d(sf.c source) {
        kotlin.jvm.internal.m.e(source, "source");
        source.b(this);
    }

    @Override // rf.l
    public void e(int i10) {
        if (i10 == 0) {
            Integer num = this.f29178e;
            if (num != null) {
                int intValue = num.intValue();
                stop();
                if (this.f29174a.o()) {
                    q().resume(intValue);
                    return;
                }
                return;
            }
            return;
        }
        x("seek");
        throw new xc.c();
    }

    @Override // rf.l
    public /* bridge */ /* synthetic */ Integer f() {
        return (Integer) n();
    }

    @Override // rf.l
    public void g(qf.a context) {
        kotlin.jvm.internal.m.e(context, "context");
        u(context);
    }

    @Override // rf.l
    public /* bridge */ /* synthetic */ Integer getDuration() {
        return (Integer) o();
    }

    @Override // rf.l
    public void h(float f10, float f11) {
        Integer num = this.f29178e;
        if (num != null) {
            q().setVolume(num.intValue(), f10, f11);
        }
    }

    @Override // rf.l
    public boolean i() {
        return false;
    }

    @Override // rf.l
    public void j(float f10) {
        Integer num = this.f29178e;
        if (num != null) {
            q().setRate(num.intValue(), f10);
        }
    }

    public Void n() {
        return null;
    }

    public Void o() {
        return null;
    }

    public final Integer p() {
        return this.f29177d;
    }

    @Override // rf.l
    public void pause() {
        Integer num = this.f29178e;
        if (num != null) {
            q().pause(num.intValue());
        }
    }

    public final sf.d r() {
        return this.f29181h;
    }

    @Override // rf.l
    public void release() {
        stop();
        Integer num = this.f29177d;
        if (num != null) {
            int intValue = num.intValue();
            sf.d dVar = this.f29181h;
            if (dVar == null) {
                return;
            }
            synchronized (this.f29180g.d()) {
                List list = (List) this.f29180g.d().get(dVar);
                if (list == null) {
                    return;
                }
                if (yc.m.g0(list) == this) {
                    this.f29180g.d().remove(dVar);
                    q().unload(intValue);
                    this.f29180g.b().remove(Integer.valueOf(intValue));
                    s sVar = this.f29174a;
                    sVar.t("unloaded soundId " + intValue);
                } else {
                    list.remove(this);
                }
                this.f29177d = null;
                w(null);
                t tVar = t.f32733a;
            }
        }
    }

    public final s s() {
        return this.f29174a;
    }

    @Override // rf.l
    public void start() {
        Integer num = this.f29178e;
        Integer num2 = this.f29177d;
        if (num != null) {
            q().resume(num.intValue());
        } else if (num2 != null) {
            this.f29178e = Integer.valueOf(q().play(num2.intValue(), this.f29174a.r(), this.f29174a.r(), 0, t(this.f29174a.v()), this.f29174a.q()));
        }
    }

    @Override // rf.l
    public void stop() {
        Integer num = this.f29178e;
        if (num != null) {
            q().stop(num.intValue());
            this.f29178e = null;
        }
    }

    public final void v(Integer num) {
        this.f29177d = num;
    }

    public final void w(sf.d dVar) {
        if (dVar != null) {
            synchronized (this.f29180g.d()) {
                Map d10 = this.f29180g.d();
                Object obj = d10.get(dVar);
                if (obj == null) {
                    obj = new ArrayList();
                    d10.put(dVar, obj);
                }
                List list = (List) obj;
                o oVar = (o) yc.m.Q(list);
                if (oVar != null) {
                    boolean p10 = oVar.f29174a.p();
                    this.f29174a.J(p10);
                    this.f29177d = oVar.f29177d;
                    s sVar = this.f29174a;
                    sVar.t("Reusing soundId " + this.f29177d + " for " + dVar + " is prepared=" + p10 + ' ' + this);
                } else {
                    long currentTimeMillis = System.currentTimeMillis();
                    this.f29174a.J(false);
                    s sVar2 = this.f29174a;
                    sVar2.t("Fetching actual URL for " + dVar);
                    td.g.d(this.f29176c, z0.b(), null, new a(dVar, this, this, currentTimeMillis, null), 2, null);
                }
                list.add(this);
            }
        }
        this.f29181h = dVar;
    }
}
