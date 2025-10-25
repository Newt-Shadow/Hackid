package b3;

import d4.t;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j3 {

    /* renamed from: s  reason: collision with root package name */
    private static final t.b f4103s = new t.b(new Object());

    /* renamed from: a  reason: collision with root package name */
    public final g4 f4104a;

    /* renamed from: b  reason: collision with root package name */
    public final t.b f4105b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4106c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4107d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4108e;

    /* renamed from: f  reason: collision with root package name */
    public final a0 f4109f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4110g;

    /* renamed from: h  reason: collision with root package name */
    public final d4.u0 f4111h;

    /* renamed from: i  reason: collision with root package name */
    public final w4.i0 f4112i;

    /* renamed from: j  reason: collision with root package name */
    public final List f4113j;

    /* renamed from: k  reason: collision with root package name */
    public final t.b f4114k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f4115l;

    /* renamed from: m  reason: collision with root package name */
    public final int f4116m;

    /* renamed from: n  reason: collision with root package name */
    public final l3 f4117n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f4118o;

    /* renamed from: p  reason: collision with root package name */
    public volatile long f4119p;

    /* renamed from: q  reason: collision with root package name */
    public volatile long f4120q;

    /* renamed from: r  reason: collision with root package name */
    public volatile long f4121r;

    public j3(g4 g4Var, t.b bVar, long j10, long j11, int i10, a0 a0Var, boolean z10, d4.u0 u0Var, w4.i0 i0Var, List list, t.b bVar2, boolean z11, int i11, l3 l3Var, long j12, long j13, long j14, boolean z12) {
        this.f4104a = g4Var;
        this.f4105b = bVar;
        this.f4106c = j10;
        this.f4107d = j11;
        this.f4108e = i10;
        this.f4109f = a0Var;
        this.f4110g = z10;
        this.f4111h = u0Var;
        this.f4112i = i0Var;
        this.f4113j = list;
        this.f4114k = bVar2;
        this.f4115l = z11;
        this.f4116m = i11;
        this.f4117n = l3Var;
        this.f4119p = j12;
        this.f4120q = j13;
        this.f4121r = j14;
        this.f4118o = z12;
    }

    public static j3 j(w4.i0 i0Var) {
        g4 g4Var = g4.f4042a;
        t.b bVar = f4103s;
        return new j3(g4Var, bVar, -9223372036854775807L, 0L, 1, null, false, d4.u0.f14959d, i0Var, o6.q.D(), bVar, false, 0, l3.f4205d, 0L, 0L, 0L, false);
    }

    public static t.b k() {
        return f4103s;
    }

    public j3 a(boolean z10) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, this.f4108e, this.f4109f, z10, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, this.f4117n, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }

    public j3 b(t.b bVar) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, this.f4108e, this.f4109f, this.f4110g, this.f4111h, this.f4112i, this.f4113j, bVar, this.f4115l, this.f4116m, this.f4117n, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }

    public j3 c(t.b bVar, long j10, long j11, long j12, long j13, d4.u0 u0Var, w4.i0 i0Var, List list) {
        return new j3(this.f4104a, bVar, j11, j12, this.f4108e, this.f4109f, this.f4110g, u0Var, i0Var, list, this.f4114k, this.f4115l, this.f4116m, this.f4117n, this.f4119p, j13, j10, this.f4118o);
    }

    public j3 d(boolean z10, int i10) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, this.f4108e, this.f4109f, this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, z10, i10, this.f4117n, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }

    public j3 e(a0 a0Var) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, this.f4108e, a0Var, this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, this.f4117n, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }

    public j3 f(l3 l3Var) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, this.f4108e, this.f4109f, this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, l3Var, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }

    public j3 g(int i10) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, i10, this.f4109f, this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, this.f4117n, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }

    public j3 h(boolean z10) {
        return new j3(this.f4104a, this.f4105b, this.f4106c, this.f4107d, this.f4108e, this.f4109f, this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, this.f4117n, this.f4119p, this.f4120q, this.f4121r, z10);
    }

    public j3 i(g4 g4Var) {
        return new j3(g4Var, this.f4105b, this.f4106c, this.f4107d, this.f4108e, this.f4109f, this.f4110g, this.f4111h, this.f4112i, this.f4113j, this.f4114k, this.f4115l, this.f4116m, this.f4117n, this.f4119p, this.f4120q, this.f4121r, this.f4118o);
    }
}
