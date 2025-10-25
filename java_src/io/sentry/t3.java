package io.sentry;

import io.sentry.e;
import io.sentry.protocol.b0;
import io.sentry.protocol.c;
import io.sentry.protocol.d;
import io.sentry.protocol.m;
import io.sentry.protocol.p;
import io.sentry.protocol.r;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class t3 {

    /* renamed from: a  reason: collision with root package name */
    private io.sentry.protocol.r f23657a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.protocol.c f23658b;

    /* renamed from: c  reason: collision with root package name */
    private io.sentry.protocol.p f23659c;

    /* renamed from: d  reason: collision with root package name */
    private io.sentry.protocol.m f23660d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23661e;

    /* renamed from: f  reason: collision with root package name */
    private String f23662f;

    /* renamed from: g  reason: collision with root package name */
    private String f23663g;

    /* renamed from: h  reason: collision with root package name */
    private String f23664h;

    /* renamed from: i  reason: collision with root package name */
    private io.sentry.protocol.b0 f23665i;

    /* renamed from: j  reason: collision with root package name */
    protected transient Throwable f23666j;

    /* renamed from: k  reason: collision with root package name */
    private String f23667k;

    /* renamed from: l  reason: collision with root package name */
    private String f23668l;

    /* renamed from: m  reason: collision with root package name */
    private List f23669m;

    /* renamed from: n  reason: collision with root package name */
    private io.sentry.protocol.d f23670n;

    /* renamed from: o  reason: collision with root package name */
    private Map f23671o;

    /* loaded from: classes2.dex */
    public static final class a {
        public boolean a(t3 t3Var, String str, l2 l2Var, ILogger iLogger) {
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1840434063:
                    if (str.equals("debug_meta")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -758770169:
                    if (str.equals("server_name")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -567312220:
                    if (str.equals("contexts")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -85904877:
                    if (str.equals("environment")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -51457840:
                    if (str.equals("breadcrumbs")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 113722:
                    if (str.equals("sdk")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3083686:
                    if (str.equals("dist")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3552281:
                    if (str.equals("tags")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3599307:
                    if (str.equals("user")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 96965648:
                    if (str.equals("extra")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 278118624:
                    if (str.equals("event_id")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 1090594823:
                    if (str.equals("release")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 1095692943:
                    if (str.equals("request")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 1874684019:
                    if (str.equals("platform")) {
                        c10 = '\r';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    t3Var.f23670n = (io.sentry.protocol.d) l2Var.u0(iLogger, new d.a());
                    return true;
                case 1:
                    t3Var.f23667k = l2Var.T();
                    return true;
                case 2:
                    t3Var.f23658b.putAll(new c.a().a(l2Var, iLogger));
                    return true;
                case 3:
                    t3Var.f23663g = l2Var.T();
                    return true;
                case 4:
                    t3Var.f23669m = l2Var.M0(iLogger, new e.a());
                    return true;
                case 5:
                    t3Var.f23659c = (io.sentry.protocol.p) l2Var.u0(iLogger, new p.a());
                    return true;
                case 6:
                    t3Var.f23668l = l2Var.T();
                    return true;
                case 7:
                    t3Var.f23661e = io.sentry.util.b.c((Map) l2Var.B0());
                    return true;
                case '\b':
                    t3Var.f23665i = (io.sentry.protocol.b0) l2Var.u0(iLogger, new b0.a());
                    return true;
                case '\t':
                    t3Var.f23671o = io.sentry.util.b.c((Map) l2Var.B0());
                    return true;
                case '\n':
                    t3Var.f23657a = (io.sentry.protocol.r) l2Var.u0(iLogger, new r.a());
                    return true;
                case 11:
                    t3Var.f23662f = l2Var.T();
                    return true;
                case '\f':
                    t3Var.f23660d = (io.sentry.protocol.m) l2Var.u0(iLogger, new m.a());
                    return true;
                case '\r':
                    t3Var.f23664h = l2Var.T();
                    return true;
                default:
                    return false;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        public void a(t3 t3Var, m2 m2Var, ILogger iLogger) {
            if (t3Var.f23657a != null) {
                m2Var.k("event_id").g(iLogger, t3Var.f23657a);
            }
            m2Var.k("contexts").g(iLogger, t3Var.f23658b);
            if (t3Var.f23659c != null) {
                m2Var.k("sdk").g(iLogger, t3Var.f23659c);
            }
            if (t3Var.f23660d != null) {
                m2Var.k("request").g(iLogger, t3Var.f23660d);
            }
            if (t3Var.f23661e != null && !t3Var.f23661e.isEmpty()) {
                m2Var.k("tags").g(iLogger, t3Var.f23661e);
            }
            if (t3Var.f23662f != null) {
                m2Var.k("release").c(t3Var.f23662f);
            }
            if (t3Var.f23663g != null) {
                m2Var.k("environment").c(t3Var.f23663g);
            }
            if (t3Var.f23664h != null) {
                m2Var.k("platform").c(t3Var.f23664h);
            }
            if (t3Var.f23665i != null) {
                m2Var.k("user").g(iLogger, t3Var.f23665i);
            }
            if (t3Var.f23667k != null) {
                m2Var.k("server_name").c(t3Var.f23667k);
            }
            if (t3Var.f23668l != null) {
                m2Var.k("dist").c(t3Var.f23668l);
            }
            if (t3Var.f23669m != null && !t3Var.f23669m.isEmpty()) {
                m2Var.k("breadcrumbs").g(iLogger, t3Var.f23669m);
            }
            if (t3Var.f23670n != null) {
                m2Var.k("debug_meta").g(iLogger, t3Var.f23670n);
            }
            if (t3Var.f23671o != null && !t3Var.f23671o.isEmpty()) {
                m2Var.k("extra").g(iLogger, t3Var.f23671o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public t3(io.sentry.protocol.r rVar) {
        this.f23658b = new io.sentry.protocol.c();
        this.f23657a = rVar;
    }

    public List B() {
        return this.f23669m;
    }

    public io.sentry.protocol.c C() {
        return this.f23658b;
    }

    public io.sentry.protocol.d D() {
        return this.f23670n;
    }

    public String E() {
        return this.f23668l;
    }

    public String F() {
        return this.f23663g;
    }

    public io.sentry.protocol.r G() {
        return this.f23657a;
    }

    public Map H() {
        return this.f23671o;
    }

    public String I() {
        return this.f23664h;
    }

    public String J() {
        return this.f23662f;
    }

    public io.sentry.protocol.m K() {
        return this.f23660d;
    }

    public io.sentry.protocol.p L() {
        return this.f23659c;
    }

    public String M() {
        return this.f23667k;
    }

    public Map N() {
        return this.f23661e;
    }

    public Throwable O() {
        Throwable th = this.f23666j;
        if (th instanceof io.sentry.exception.a) {
            return ((io.sentry.exception.a) th).c();
        }
        return th;
    }

    public Throwable P() {
        return this.f23666j;
    }

    public io.sentry.protocol.b0 Q() {
        return this.f23665i;
    }

    public void R(List list) {
        this.f23669m = io.sentry.util.b.b(list);
    }

    public void S(io.sentry.protocol.d dVar) {
        this.f23670n = dVar;
    }

    public void T(String str) {
        this.f23668l = str;
    }

    public void U(String str) {
        this.f23663g = str;
    }

    public void V(io.sentry.protocol.r rVar) {
        this.f23657a = rVar;
    }

    public void W(String str, Object obj) {
        if (this.f23671o == null) {
            this.f23671o = new HashMap();
        }
        this.f23671o.put(str, obj);
    }

    public void X(Map map) {
        this.f23671o = io.sentry.util.b.d(map);
    }

    public void Y(String str) {
        this.f23664h = str;
    }

    public void Z(String str) {
        this.f23662f = str;
    }

    public void a0(io.sentry.protocol.m mVar) {
        this.f23660d = mVar;
    }

    public void b0(io.sentry.protocol.p pVar) {
        this.f23659c = pVar;
    }

    public void c0(String str) {
        this.f23667k = str;
    }

    public void d0(String str, String str2) {
        if (this.f23661e == null) {
            this.f23661e = new HashMap();
        }
        this.f23661e.put(str, str2);
    }

    public void e0(Map map) {
        this.f23661e = io.sentry.util.b.d(map);
    }

    public void f0(io.sentry.protocol.b0 b0Var) {
        this.f23665i = b0Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public t3() {
        this(new io.sentry.protocol.r());
    }
}
