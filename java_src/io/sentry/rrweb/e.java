package io.sentry.rrweb;

import com.arthenica.ffmpegkit.Chapter;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.rrweb.b;
import io.sentry.rrweb.d;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class e extends d implements q1 {

    /* renamed from: d  reason: collision with root package name */
    private b f23581d;

    /* renamed from: e  reason: collision with root package name */
    private int f23582e;

    /* renamed from: f  reason: collision with root package name */
    private float f23583f;

    /* renamed from: g  reason: collision with root package name */
    private float f23584g;

    /* renamed from: h  reason: collision with root package name */
    private int f23585h;

    /* renamed from: i  reason: collision with root package name */
    private int f23586i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23587j;

    /* renamed from: k  reason: collision with root package name */
    private Map f23588k;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private void c(e eVar, l2 l2Var, ILogger iLogger) {
            d.a aVar = new d.a();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case 120:
                        if (f02.equals("x")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 121:
                        if (f02.equals("y")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3355:
                        if (f02.equals(Chapter.KEY_ID)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 768858903:
                        if (f02.equals("pointerType")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1565043768:
                        if (f02.equals("pointerId")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        eVar.f23583f = l2Var.R();
                        break;
                    case 1:
                        eVar.f23584g = l2Var.R();
                        break;
                    case 2:
                        eVar.f23582e = l2Var.j0();
                        break;
                    case 3:
                        eVar.f23581d = (b) l2Var.u0(iLogger, new b.a());
                        break;
                    case 4:
                        eVar.f23585h = l2Var.j0();
                        break;
                    case 5:
                        eVar.f23586i = l2Var.j0();
                        break;
                    default:
                        if (!aVar.a(eVar, f02, l2Var, iLogger)) {
                            if (hashMap == null) {
                                hashMap = new HashMap();
                            }
                            l2Var.b0(iLogger, hashMap, f02);
                            break;
                        } else {
                            break;
                        }
                }
            }
            eVar.p(hashMap);
            l2Var.r();
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public e a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            e eVar = new e();
            b.a aVar = new b.a();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("data")) {
                    if (!aVar.a(eVar, f02, l2Var, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    }
                } else {
                    c(eVar, l2Var, iLogger);
                }
            }
            eVar.t(hashMap);
            l2Var.r();
            return eVar;
        }
    }

    /* loaded from: classes2.dex */
    public enum b implements q1 {
        MouseUp,
        MouseDown,
        Click,
        ContextMenu,
        DblClick,
        Focus,
        Blur,
        TouchStart,
        TouchMove_Departed,
        TouchEnd,
        TouchCancel;

        /* loaded from: classes2.dex */
        public static final class a implements g1 {
            @Override // io.sentry.g1
            /* renamed from: b */
            public b a(l2 l2Var, ILogger iLogger) {
                return b.values()[l2Var.j0()];
            }
        }

        @Override // io.sentry.q1
        public void serialize(m2 m2Var, ILogger iLogger) {
            m2Var.a(ordinal());
        }
    }

    public e() {
        super(d.b.MouseInteraction);
        this.f23585h = 2;
    }

    private void o(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new d.c().a(this, m2Var, iLogger);
        m2Var.k("type").g(iLogger, this.f23581d);
        m2Var.k(Chapter.KEY_ID).a(this.f23582e);
        m2Var.k("x").b(this.f23583f);
        m2Var.k("y").b(this.f23584g);
        m2Var.k("pointerType").a(this.f23585h);
        m2Var.k("pointerId").a(this.f23586i);
        Map map = this.f23588k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23588k.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void p(Map map) {
        this.f23588k = map;
    }

    public void q(int i10) {
        this.f23582e = i10;
    }

    public void r(b bVar) {
        this.f23581d = bVar;
    }

    public void s(int i10) {
        this.f23586i = i10;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        o(m2Var, iLogger);
        Map map = this.f23587j;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23587j.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void t(Map map) {
        this.f23587j = map;
    }

    public void u(float f10) {
        this.f23583f = f10;
    }

    public void v(float f10) {
        this.f23584g = f10;
    }
}
