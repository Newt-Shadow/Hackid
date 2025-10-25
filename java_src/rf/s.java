package rf;

import android.content.Context;
import android.media.AudioManager;
import xc.t;
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final qf.d f29199a;

    /* renamed from: b  reason: collision with root package name */
    private final qf.f f29200b;

    /* renamed from: c  reason: collision with root package name */
    private qf.a f29201c;

    /* renamed from: d  reason: collision with root package name */
    private final n f29202d;

    /* renamed from: e  reason: collision with root package name */
    private l f29203e;

    /* renamed from: f  reason: collision with root package name */
    private sf.c f29204f;

    /* renamed from: g  reason: collision with root package name */
    private float f29205g;

    /* renamed from: h  reason: collision with root package name */
    private float f29206h;

    /* renamed from: i  reason: collision with root package name */
    private float f29207i;

    /* renamed from: j  reason: collision with root package name */
    private qf.h f29208j;

    /* renamed from: k  reason: collision with root package name */
    private qf.g f29209k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f29210l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29211m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f29212n;

    /* renamed from: o  reason: collision with root package name */
    private int f29213o;

    /* renamed from: p  reason: collision with root package name */
    private final rf.a f29214p;

    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f29215a;

        static {
            int[] iArr = new int[qf.g.values().length];
            try {
                iArr[qf.g.f28793a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[qf.g.f28794b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f29215a = iArr;
        }
    }

    public s(qf.d ref, qf.f eventHandler, qf.a context, n soundPoolManager) {
        kotlin.jvm.internal.m.e(ref, "ref");
        kotlin.jvm.internal.m.e(eventHandler, "eventHandler");
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(soundPoolManager, "soundPoolManager");
        this.f29199a = ref;
        this.f29200b = eventHandler;
        this.f29201c = context;
        this.f29202d = soundPoolManager;
        this.f29205g = 1.0f;
        this.f29207i = 1.0f;
        this.f29208j = qf.h.f28797a;
        this.f29209k = qf.g.f28793a;
        this.f29210l = true;
        this.f29213o = -1;
        this.f29214p = rf.a.f29150a.a(this, new id.a() { // from class: rf.q
            @Override // id.a
            public final Object invoke() {
                t f10;
                f10 = s.f(s.this);
                return f10;
            }
        }, new id.l() { // from class: rf.r
            @Override // id.l
            public final Object invoke(Object obj) {
                t g10;
                g10 = s.g(s.this, ((Boolean) obj).booleanValue());
                return g10;
            }
        });
    }

    private final void F() {
        this.f29214p.i();
    }

    private final void O(l lVar, float f10, float f11) {
        lVar.h(Math.min(1.0f, 1.0f - f11) * f10, Math.min(1.0f, f11 + 1.0f) * f10);
    }

    private final void c(l lVar) {
        O(lVar, this.f29205g, this.f29206h);
        lVar.c(v());
        lVar.b();
    }

    private final l d() {
        int i10 = a.f29215a[this.f29209k.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                return new o(this, this.f29202d);
            }
            throw new xc.i();
        }
        return new i(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t f(s sVar) {
        l lVar;
        if (sVar.f29212n && (lVar = sVar.f29203e) != null) {
            lVar.start();
        }
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t g(s sVar, boolean z10) {
        if (z10) {
            l lVar = sVar.f29203e;
            if (lVar != null) {
                lVar.pause();
            }
        } else {
            sVar.C();
        }
        return t.f32733a;
    }

    private final l n() {
        l lVar = this.f29203e;
        if (!this.f29210l && lVar != null) {
            if (this.f29211m) {
                lVar.a();
                J(false);
                return lVar;
            }
            return lVar;
        }
        l d10 = d();
        this.f29203e = d10;
        this.f29210l = false;
        return d10;
    }

    private final void u() {
        l d10 = d();
        this.f29203e = d10;
        sf.c cVar = this.f29204f;
        if (cVar != null) {
            d10.d(cVar);
            c(d10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int w() {
        /*
            r3 = this;
            r0 = 0
            xc.l$a r1 = xc.l.f32718b     // Catch: java.lang.Throwable -> L22
            rf.l r1 = r3.f29203e     // Catch: java.lang.Throwable -> L22
            if (r1 == 0) goto Lc
            java.lang.Integer r1 = r1.f()     // Catch: java.lang.Throwable -> L22
            goto Ld
        Lc:
            r1 = r0
        Ld:
            if (r1 != 0) goto L10
            goto L18
        L10:
            int r2 = r1.intValue()     // Catch: java.lang.Throwable -> L22
            if (r2 != 0) goto L18
            r2 = 1
            goto L19
        L18:
            r2 = 0
        L19:
            if (r2 != 0) goto L1c
            goto L1d
        L1c:
            r1 = r0
        L1d:
            java.lang.Object r1 = xc.l.b(r1)     // Catch: java.lang.Throwable -> L22
            goto L2d
        L22:
            r1 = move-exception
            xc.l$a r2 = xc.l.f32718b
            java.lang.Object r1 = xc.m.a(r1)
            java.lang.Object r1 = xc.l.b(r1)
        L2d:
            boolean r2 = xc.l.f(r1)
            if (r2 == 0) goto L34
            goto L35
        L34:
            r0 = r1
        L35:
            java.lang.Integer r0 = (java.lang.Integer) r0
            if (r0 == 0) goto L3e
            int r0 = r0.intValue()
            goto L3f
        L3e:
            r0 = -1
        L3f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: rf.s.w():int");
    }

    public final void A() {
        l lVar;
        boolean z10 = true;
        J(true);
        this.f29199a.j(this);
        if (this.f29212n) {
            F();
        }
        if (this.f29213o >= 0) {
            l lVar2 = this.f29203e;
            if (lVar2 == null || !lVar2.i()) {
                z10 = false;
            }
            if (!z10 && (lVar = this.f29203e) != null) {
                lVar.e(this.f29213o);
            }
        }
    }

    public final void B() {
        this.f29199a.p(this);
    }

    public final void C() {
        l lVar;
        if (this.f29212n) {
            this.f29212n = false;
            if (this.f29211m && (lVar = this.f29203e) != null) {
                lVar.pause();
            }
        }
    }

    public final void D() {
        if (!this.f29212n && !this.f29210l) {
            this.f29212n = true;
            if (this.f29203e == null) {
                u();
            } else if (this.f29211m) {
                F();
            }
        }
    }

    public final void E() {
        l lVar;
        this.f29214p.g();
        if (this.f29210l) {
            return;
        }
        if (this.f29212n && (lVar = this.f29203e) != null) {
            lVar.stop();
        }
        M(null);
        this.f29203e = null;
    }

    public final void G(int i10) {
        if (this.f29211m) {
            l lVar = this.f29203e;
            boolean z10 = false;
            if (lVar != null && lVar.i()) {
                z10 = true;
            }
            if (!z10) {
                l lVar2 = this.f29203e;
                if (lVar2 != null) {
                    lVar2.e(i10);
                }
                i10 = -1;
            }
        }
        this.f29213o = i10;
    }

    public final void H(float f10) {
        boolean z10;
        l lVar;
        if (this.f29206h == f10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            this.f29206h = f10;
            if (!this.f29210l && (lVar = this.f29203e) != null) {
                O(lVar, this.f29205g, f10);
            }
        }
    }

    public final void I(qf.g value) {
        kotlin.jvm.internal.m.e(value, "value");
        if (this.f29209k != value) {
            this.f29209k = value;
            l lVar = this.f29203e;
            if (lVar != null) {
                this.f29213o = w();
                J(false);
                lVar.release();
            }
            u();
        }
    }

    public final void J(boolean z10) {
        if (this.f29211m != z10) {
            this.f29211m = z10;
            this.f29199a.o(this, z10);
        }
    }

    public final void K(float f10) {
        boolean z10;
        l lVar;
        if (this.f29207i == f10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            this.f29207i = f10;
            if (this.f29212n && (lVar = this.f29203e) != null) {
                lVar.j(f10);
            }
        }
    }

    public final void L(qf.h value) {
        l lVar;
        kotlin.jvm.internal.m.e(value, "value");
        if (this.f29208j != value) {
            this.f29208j = value;
            if (!this.f29210l && (lVar = this.f29203e) != null) {
                lVar.c(v());
            }
        }
    }

    public final void M(sf.c cVar) {
        if (!kotlin.jvm.internal.m.a(this.f29204f, cVar)) {
            if (cVar != null) {
                l n10 = n();
                n10.d(cVar);
                c(n10);
            } else {
                this.f29210l = true;
                J(false);
                this.f29212n = false;
                l lVar = this.f29203e;
                if (lVar != null) {
                    lVar.release();
                }
            }
            this.f29204f = cVar;
            return;
        }
        this.f29199a.o(this, true);
    }

    public final void N(float f10) {
        boolean z10;
        l lVar;
        if (this.f29205g == f10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            this.f29205g = f10;
            if (!this.f29210l && (lVar = this.f29203e) != null) {
                O(lVar, f10, this.f29206h);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
        if (r0.i() == true) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void P() {
        /*
            r3 = this;
            rf.a r0 = r3.f29214p
            r0.g()
            boolean r0 = r3.f29210l
            if (r0 == 0) goto La
            return
        La:
            qf.h r0 = r3.f29208j
            qf.h r1 = qf.h.f28797a
            if (r0 == r1) goto L3d
            r3.C()
            boolean r0 = r3.f29211m
            if (r0 == 0) goto L40
            rf.l r0 = r3.f29203e
            r1 = 0
            if (r0 == 0) goto L24
            boolean r0 = r0.i()
            r2 = 1
            if (r0 != r2) goto L24
            goto L25
        L24:
            r2 = r1
        L25:
            if (r2 == 0) goto L39
            rf.l r0 = r3.f29203e
            if (r0 == 0) goto L2e
            r0.stop()
        L2e:
            r3.J(r1)
            rf.l r0 = r3.f29203e
            if (r0 == 0) goto L40
            r0.b()
            goto L40
        L39:
            r3.G(r1)
            goto L40
        L3d:
            r3.E()
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: rf.s.P():void");
    }

    public final void Q(qf.a audioContext) {
        kotlin.jvm.internal.m.e(audioContext, "audioContext");
        if (kotlin.jvm.internal.m.a(this.f29201c, audioContext)) {
            return;
        }
        if (this.f29201c.d() != 0 && audioContext.d() == 0) {
            this.f29214p.g();
        }
        this.f29201c = qf.a.c(audioContext, false, false, 0, 0, 0, 0, 63, null);
        i().setMode(this.f29201c.e());
        i().setSpeakerphoneOn(this.f29201c.g());
        l lVar = this.f29203e;
        if (lVar != null) {
            lVar.stop();
            J(false);
            lVar.g(this.f29201c);
            sf.c cVar = this.f29204f;
            if (cVar != null) {
                lVar.d(cVar);
                c(lVar);
            }
        }
    }

    public final void e() {
        E();
        this.f29200b.a();
    }

    public final Context h() {
        return this.f29199a.e();
    }

    public final AudioManager i() {
        return this.f29199a.f();
    }

    public final qf.a j() {
        return this.f29201c;
    }

    public final Integer k() {
        l lVar;
        if (!this.f29211m || (lVar = this.f29203e) == null) {
            return null;
        }
        return lVar.f();
    }

    public final Integer l() {
        l lVar;
        if (!this.f29211m || (lVar = this.f29203e) == null) {
            return null;
        }
        return lVar.getDuration();
    }

    public final qf.f m() {
        return this.f29200b;
    }

    public final boolean o() {
        return this.f29212n;
    }

    public final boolean p() {
        return this.f29211m;
    }

    public final float q() {
        return this.f29207i;
    }

    public final float r() {
        return this.f29205g;
    }

    public final void s(String str, String str2, Object obj) {
        this.f29199a.k(this, str, str2, obj);
    }

    public final void t(String message) {
        kotlin.jvm.internal.m.e(message, "message");
        this.f29199a.n(this, message);
    }

    public final boolean v() {
        if (this.f29208j == qf.h.f28798b) {
            return true;
        }
        return false;
    }

    public final void x(int i10) {
    }

    public final void y() {
        if (this.f29208j != qf.h.f28798b) {
            P();
        }
        this.f29199a.i(this);
    }

    public final boolean z(int i10, int i11) {
        String str;
        String str2;
        if (i10 == 100) {
            str = "MEDIA_ERROR_SERVER_DIED";
        } else {
            str = "MEDIA_ERROR_UNKNOWN {what:" + i10 + '}';
        }
        if (i11 == Integer.MIN_VALUE) {
            str2 = "MEDIA_ERROR_SYSTEM";
        } else if (i11 != -1010) {
            if (i11 != -1007) {
                if (i11 != -1004) {
                    if (i11 != -110) {
                        str2 = "MEDIA_ERROR_UNKNOWN {extra:" + i11 + '}';
                    } else {
                        str2 = "MEDIA_ERROR_TIMED_OUT";
                    }
                } else {
                    str2 = "MEDIA_ERROR_IO";
                }
            } else {
                str2 = "MEDIA_ERROR_MALFORMED";
            }
        } else {
            str2 = "MEDIA_ERROR_UNSUPPORTED";
        }
        if (!this.f29211m && kotlin.jvm.internal.m.a(str2, "MEDIA_ERROR_SYSTEM")) {
            s("AndroidAudioError", "Failed to set source. For troubleshooting, see: https://github.com/bluefireteam/audioplayers/blob/main/troubleshooting.md", str + ", " + str2);
        } else {
            J(false);
            s("AndroidAudioError", str, str2);
        }
        return false;
    }
}
