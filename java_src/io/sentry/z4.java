package io.sentry;

import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.j5;
import io.sentry.protocol.j;
import io.sentry.protocol.q;
import io.sentry.protocol.x;
import io.sentry.t3;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class z4 extends t3 implements q1 {

    /* renamed from: p  reason: collision with root package name */
    private Date f23954p;

    /* renamed from: q  reason: collision with root package name */
    private io.sentry.protocol.j f23955q;

    /* renamed from: r  reason: collision with root package name */
    private String f23956r;

    /* renamed from: s  reason: collision with root package name */
    private e6 f23957s;

    /* renamed from: t  reason: collision with root package name */
    private e6 f23958t;

    /* renamed from: u  reason: collision with root package name */
    private j5 f23959u;

    /* renamed from: v  reason: collision with root package name */
    private String f23960v;

    /* renamed from: w  reason: collision with root package name */
    private List f23961w;

    /* renamed from: x  reason: collision with root package name */
    private Map f23962x;

    /* renamed from: y  reason: collision with root package name */
    private Map f23963y;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public z4 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            z4 z4Var = new z4();
            t3.a aVar = new t3.a();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1375934236:
                        if (f02.equals("fingerprint")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1337936983:
                        if (f02.equals("threads")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1097337456:
                        if (f02.equals("logger")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (f02.equals(Constants.TIMESTAMP)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 102865796:
                        if (f02.equals(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 954925063:
                        if (f02.equals("message")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1227433863:
                        if (f02.equals("modules")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1481625679:
                        if (f02.equals(Constants.EXCEPTION)) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (f02.equals("transaction")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        List list = (List) l2Var.B0();
                        if (list == null) {
                            break;
                        } else {
                            z4Var.f23961w = list;
                            break;
                        }
                    case 1:
                        l2Var.t();
                        l2Var.f0();
                        z4Var.f23957s = new e6(l2Var.M0(iLogger, new x.a()));
                        l2Var.r();
                        break;
                    case 2:
                        z4Var.f23956r = l2Var.T();
                        break;
                    case 3:
                        Date i02 = l2Var.i0(iLogger);
                        if (i02 == null) {
                            break;
                        } else {
                            z4Var.f23954p = i02;
                            break;
                        }
                    case 4:
                        z4Var.f23959u = (j5) l2Var.u0(iLogger, new j5.a());
                        break;
                    case 5:
                        z4Var.f23955q = (io.sentry.protocol.j) l2Var.u0(iLogger, new j.a());
                        break;
                    case 6:
                        z4Var.f23963y = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 7:
                        l2Var.t();
                        l2Var.f0();
                        z4Var.f23958t = new e6(l2Var.M0(iLogger, new q.a()));
                        l2Var.r();
                        break;
                    case '\b':
                        z4Var.f23960v = l2Var.T();
                        break;
                    default:
                        if (!aVar.a(z4Var, f02, l2Var, iLogger)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            l2Var.b0(iLogger, concurrentHashMap, f02);
                            break;
                        } else {
                            break;
                        }
                }
            }
            z4Var.H0(concurrentHashMap);
            l2Var.r();
            return z4Var;
        }
    }

    z4(io.sentry.protocol.r rVar, Date date) {
        super(rVar);
        this.f23954p = date;
    }

    public void A0(List list) {
        ArrayList arrayList;
        if (list != null) {
            arrayList = new ArrayList(list);
        } else {
            arrayList = null;
        }
        this.f23961w = arrayList;
    }

    public void B0(j5 j5Var) {
        this.f23959u = j5Var;
    }

    public void C0(io.sentry.protocol.j jVar) {
        this.f23955q = jVar;
    }

    public void D0(Map map) {
        this.f23963y = io.sentry.util.b.d(map);
    }

    public void E0(List list) {
        this.f23957s = new e6(list);
    }

    public void F0(Date date) {
        this.f23954p = date;
    }

    public void G0(String str) {
        this.f23960v = str;
    }

    public void H0(Map map) {
        this.f23962x = map;
    }

    public List p0() {
        e6 e6Var = this.f23958t;
        if (e6Var == null) {
            return null;
        }
        return e6Var.a();
    }

    public List q0() {
        return this.f23961w;
    }

    public j5 r0() {
        return this.f23959u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map s0() {
        return this.f23963y;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Constants.TIMESTAMP).g(iLogger, this.f23954p);
        if (this.f23955q != null) {
            m2Var.k("message").g(iLogger, this.f23955q);
        }
        if (this.f23956r != null) {
            m2Var.k("logger").c(this.f23956r);
        }
        e6 e6Var = this.f23957s;
        if (e6Var != null && !e6Var.a().isEmpty()) {
            m2Var.k("threads");
            m2Var.t();
            m2Var.k("values").g(iLogger, this.f23957s.a());
            m2Var.r();
        }
        e6 e6Var2 = this.f23958t;
        if (e6Var2 != null && !e6Var2.a().isEmpty()) {
            m2Var.k(Constants.EXCEPTION);
            m2Var.t();
            m2Var.k("values").g(iLogger, this.f23958t.a());
            m2Var.r();
        }
        if (this.f23959u != null) {
            m2Var.k(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL).g(iLogger, this.f23959u);
        }
        if (this.f23960v != null) {
            m2Var.k("transaction").c(this.f23960v);
        }
        if (this.f23961w != null) {
            m2Var.k("fingerprint").g(iLogger, this.f23961w);
        }
        if (this.f23963y != null) {
            m2Var.k("modules").g(iLogger, this.f23963y);
        }
        new t3.b().a(this, m2Var, iLogger);
        Map map = this.f23962x;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23962x.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public List t0() {
        e6 e6Var = this.f23957s;
        if (e6Var != null) {
            return e6Var.a();
        }
        return null;
    }

    public Date u0() {
        return (Date) this.f23954p.clone();
    }

    public String v0() {
        return this.f23960v;
    }

    public io.sentry.protocol.q w0() {
        e6 e6Var = this.f23958t;
        if (e6Var != null) {
            for (io.sentry.protocol.q qVar : e6Var.a()) {
                if (qVar.g() != null && qVar.g().h() != null && !qVar.g().h().booleanValue()) {
                    return qVar;
                }
            }
            return null;
        }
        return null;
    }

    public boolean x0() {
        if (w0() != null) {
            return true;
        }
        return false;
    }

    public boolean y0() {
        e6 e6Var = this.f23958t;
        if (e6Var != null && !e6Var.a().isEmpty()) {
            return true;
        }
        return false;
    }

    public void z0(List list) {
        this.f23958t = new e6(list);
    }

    public z4(Throwable th) {
        this();
        this.f23666j = th;
    }

    public z4() {
        this(new io.sentry.protocol.r(), j.c());
    }
}
