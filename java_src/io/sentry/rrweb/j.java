package io.sentry.rrweb;

import com.arthenica.ffmpegkit.MediaInformation;
import com.arthenica.ffmpegkit.StreamInformation;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.rrweb.b;
import io.sentry.util.q;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class j extends b implements q1 {

    /* renamed from: c  reason: collision with root package name */
    private String f23616c;

    /* renamed from: d  reason: collision with root package name */
    private int f23617d;

    /* renamed from: e  reason: collision with root package name */
    private long f23618e;

    /* renamed from: f  reason: collision with root package name */
    private long f23619f;

    /* renamed from: g  reason: collision with root package name */
    private String f23620g;

    /* renamed from: h  reason: collision with root package name */
    private String f23621h;

    /* renamed from: i  reason: collision with root package name */
    private int f23622i;

    /* renamed from: j  reason: collision with root package name */
    private int f23623j;

    /* renamed from: k  reason: collision with root package name */
    private int f23624k;

    /* renamed from: l  reason: collision with root package name */
    private String f23625l;

    /* renamed from: m  reason: collision with root package name */
    private int f23626m;

    /* renamed from: n  reason: collision with root package name */
    private int f23627n;

    /* renamed from: o  reason: collision with root package name */
    private int f23628o;

    /* renamed from: p  reason: collision with root package name */
    private Map f23629p;

    /* renamed from: q  reason: collision with root package name */
    private Map f23630q;

    /* renamed from: r  reason: collision with root package name */
    private Map f23631r;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private void c(j jVar, l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("payload")) {
                    if (!f02.equals("tag")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                    } else {
                        String T = l2Var.T();
                        if (T == null) {
                            T = "";
                        }
                        jVar.f23616c = T;
                    }
                } else {
                    d(jVar, l2Var, iLogger);
                }
            }
            jVar.v(concurrentHashMap);
            l2Var.r();
        }

        private void d(j jVar, l2 l2Var, ILogger iLogger) {
            long longValue;
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                int i10 = 0;
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1992012396:
                        if (f02.equals(MediaInformation.KEY_DURATION)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1627805778:
                        if (f02.equals("segmentId")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1221029593:
                        if (f02.equals(StreamInformation.KEY_HEIGHT)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -410956671:
                        if (f02.equals("container")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -296512606:
                        if (f02.equals("frameCount")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 115029:
                        if (f02.equals("top")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3317767:
                        if (f02.equals("left")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 3530753:
                        if (f02.equals("size")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 113126854:
                        if (f02.equals(StreamInformation.KEY_WIDTH)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 545057773:
                        if (f02.equals("frameRate")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1711222099:
                        if (f02.equals("encoding")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case 2135109831:
                        if (f02.equals("frameRateType")) {
                            c10 = 11;
                            break;
                        }
                        break;
                }
                String str = "";
                switch (c10) {
                    case 0:
                        jVar.f23619f = l2Var.E0();
                        break;
                    case 1:
                        jVar.f23617d = l2Var.j0();
                        break;
                    case 2:
                        Integer J = l2Var.J();
                        if (J != null) {
                            i10 = J.intValue();
                        }
                        jVar.f23622i = i10;
                        break;
                    case 3:
                        String T = l2Var.T();
                        if (T != null) {
                            str = T;
                        }
                        jVar.f23621h = str;
                        break;
                    case 4:
                        Integer J2 = l2Var.J();
                        if (J2 != null) {
                            i10 = J2.intValue();
                        }
                        jVar.f23624k = i10;
                        break;
                    case 5:
                        Integer J3 = l2Var.J();
                        if (J3 != null) {
                            i10 = J3.intValue();
                        }
                        jVar.f23628o = i10;
                        break;
                    case 6:
                        Integer J4 = l2Var.J();
                        if (J4 != null) {
                            i10 = J4.intValue();
                        }
                        jVar.f23627n = i10;
                        break;
                    case 7:
                        Long M = l2Var.M();
                        if (M == null) {
                            longValue = 0;
                        } else {
                            longValue = M.longValue();
                        }
                        jVar.f23618e = longValue;
                        break;
                    case '\b':
                        Integer J5 = l2Var.J();
                        if (J5 != null) {
                            i10 = J5.intValue();
                        }
                        jVar.f23623j = i10;
                        break;
                    case '\t':
                        Integer J6 = l2Var.J();
                        if (J6 != null) {
                            i10 = J6.intValue();
                        }
                        jVar.f23626m = i10;
                        break;
                    case '\n':
                        String T2 = l2Var.T();
                        if (T2 != null) {
                            str = T2;
                        }
                        jVar.f23620g = str;
                        break;
                    case 11:
                        String T3 = l2Var.T();
                        if (T3 != null) {
                            str = T3;
                        }
                        jVar.f23625l = str;
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            jVar.B(concurrentHashMap);
            l2Var.r();
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public j a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            j jVar = new j();
            b.a aVar = new b.a();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("data")) {
                    if (!aVar.a(jVar, f02, l2Var, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    }
                } else {
                    c(jVar, l2Var, iLogger);
                }
            }
            jVar.F(hashMap);
            l2Var.r();
            return jVar;
        }
    }

    public j() {
        super(c.Custom);
        this.f23620g = "h264";
        this.f23621h = "mp4";
        this.f23625l = "constant";
        this.f23616c = "video";
    }

    private void t(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("tag").c(this.f23616c);
        m2Var.k("payload");
        u(m2Var, iLogger);
        Map map = this.f23631r;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23631r.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    private void u(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("segmentId").a(this.f23617d);
        m2Var.k("size").a(this.f23618e);
        m2Var.k(MediaInformation.KEY_DURATION).a(this.f23619f);
        m2Var.k("encoding").c(this.f23620g);
        m2Var.k("container").c(this.f23621h);
        m2Var.k(StreamInformation.KEY_HEIGHT).a(this.f23622i);
        m2Var.k(StreamInformation.KEY_WIDTH).a(this.f23623j);
        m2Var.k("frameCount").a(this.f23624k);
        m2Var.k("frameRate").a(this.f23626m);
        m2Var.k("frameRateType").c(this.f23625l);
        m2Var.k("left").a(this.f23627n);
        m2Var.k("top").a(this.f23628o);
        Map map = this.f23630q;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23630q.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void A(int i10) {
        this.f23627n = i10;
    }

    public void B(Map map) {
        this.f23630q = map;
    }

    public void C(int i10) {
        this.f23617d = i10;
    }

    public void D(long j10) {
        this.f23618e = j10;
    }

    public void E(int i10) {
        this.f23628o = i10;
    }

    public void F(Map map) {
        this.f23629p = map;
    }

    public void G(int i10) {
        this.f23623j = i10;
    }

    @Override // io.sentry.rrweb.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        j jVar = (j) obj;
        if (this.f23617d == jVar.f23617d && this.f23618e == jVar.f23618e && this.f23619f == jVar.f23619f && this.f23622i == jVar.f23622i && this.f23623j == jVar.f23623j && this.f23624k == jVar.f23624k && this.f23626m == jVar.f23626m && this.f23627n == jVar.f23627n && this.f23628o == jVar.f23628o && q.a(this.f23616c, jVar.f23616c) && q.a(this.f23620g, jVar.f23620g) && q.a(this.f23621h, jVar.f23621h) && q.a(this.f23625l, jVar.f23625l)) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.rrweb.b
    public int hashCode() {
        return q.b(Integer.valueOf(super.hashCode()), this.f23616c, Integer.valueOf(this.f23617d), Long.valueOf(this.f23618e), Long.valueOf(this.f23619f), this.f23620g, this.f23621h, Integer.valueOf(this.f23622i), Integer.valueOf(this.f23623j), Integer.valueOf(this.f23624k), this.f23625l, Integer.valueOf(this.f23626m), Integer.valueOf(this.f23627n), Integer.valueOf(this.f23628o));
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        t(m2Var, iLogger);
        Map map = this.f23629p;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23629p.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void v(Map map) {
        this.f23631r = map;
    }

    public void w(long j10) {
        this.f23619f = j10;
    }

    public void x(int i10) {
        this.f23624k = i10;
    }

    public void y(int i10) {
        this.f23626m = i10;
    }

    public void z(int i10) {
        this.f23622i = i10;
    }
}
