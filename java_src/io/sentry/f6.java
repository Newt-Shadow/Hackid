package io.sentry;

import com.arthenica.ffmpegkit.MediaInformation;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class f6 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Date f23110a;

    /* renamed from: b  reason: collision with root package name */
    private Date f23111b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f23112c;

    /* renamed from: d  reason: collision with root package name */
    private final String f23113d;

    /* renamed from: e  reason: collision with root package name */
    private final UUID f23114e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f23115f;

    /* renamed from: g  reason: collision with root package name */
    private b f23116g;

    /* renamed from: h  reason: collision with root package name */
    private Long f23117h;

    /* renamed from: i  reason: collision with root package name */
    private Double f23118i;

    /* renamed from: j  reason: collision with root package name */
    private final String f23119j;

    /* renamed from: k  reason: collision with root package name */
    private String f23120k;

    /* renamed from: l  reason: collision with root package name */
    private final String f23121l;

    /* renamed from: m  reason: collision with root package name */
    private final String f23122m;

    /* renamed from: n  reason: collision with root package name */
    private String f23123n;

    /* renamed from: o  reason: collision with root package name */
    private final Object f23124o;

    /* renamed from: p  reason: collision with root package name */
    private Map f23125p;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private Exception c(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.b(j5.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // io.sentry.g1
        /* renamed from: b */
        public f6 a(l2 l2Var, ILogger iLogger) {
            char c10;
            String str;
            boolean z10;
            l2Var.t();
            Integer num = null;
            b bVar = null;
            Date date = null;
            Date date2 = null;
            ConcurrentHashMap concurrentHashMap = null;
            String str2 = null;
            UUID uuid = null;
            Boolean bool = null;
            Long l10 = null;
            Double d10 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            while (true) {
                String str8 = str5;
                String str9 = str4;
                String str10 = str3;
                Double d11 = d10;
                if (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                    String f02 = l2Var.f0();
                    f02.hashCode();
                    switch (f02.hashCode()) {
                        case -1992012396:
                            if (f02.equals(MediaInformation.KEY_DURATION)) {
                                c10 = 0;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case -1897185151:
                            if (f02.equals("started")) {
                                c10 = 1;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case -1294635157:
                            if (f02.equals("errors")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case -892481550:
                            if (f02.equals("status")) {
                                c10 = 3;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 99455:
                            if (f02.equals("did")) {
                                c10 = 4;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 113759:
                            if (f02.equals("seq")) {
                                c10 = 5;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 113870:
                            if (f02.equals("sid")) {
                                c10 = 6;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 3237136:
                            if (f02.equals("init")) {
                                c10 = 7;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 55126294:
                            if (f02.equals(Constants.TIMESTAMP)) {
                                c10 = '\b';
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 93152418:
                            if (f02.equals("attrs")) {
                                c10 = '\t';
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 213717026:
                            if (f02.equals("abnormal_mechanism")) {
                                c10 = '\n';
                                break;
                            }
                            c10 = 65535;
                            break;
                        default:
                            c10 = 65535;
                            break;
                    }
                    switch (c10) {
                        case 0:
                            d10 = l2Var.e0();
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            continue;
                        case 1:
                            date = l2Var.i0(iLogger);
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case 2:
                            num = l2Var.J();
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case 3:
                            String c11 = io.sentry.util.w.c(l2Var.T());
                            if (c11 != null) {
                                bVar = b.valueOf(c11);
                            }
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case 4:
                            str2 = l2Var.T();
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case 5:
                            l10 = l2Var.M();
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case 6:
                            try {
                                str = l2Var.T();
                            } catch (IllegalArgumentException unused) {
                                str = null;
                            }
                            try {
                                uuid = UUID.fromString(str);
                            } catch (IllegalArgumentException unused2) {
                                iLogger.c(j5.ERROR, "%s sid is not valid.", str);
                                str5 = str8;
                                str4 = str9;
                                str3 = str10;
                                d10 = d11;
                            }
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                        case 7:
                            bool = l2Var.m0();
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case '\b':
                            date2 = l2Var.i0(iLogger);
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        case '\t':
                            l2Var.t();
                            str4 = str9;
                            str3 = str10;
                            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                                String f03 = l2Var.f0();
                                f03.hashCode();
                                switch (f03.hashCode()) {
                                    case -85904877:
                                        if (f03.equals("environment")) {
                                            z10 = false;
                                            break;
                                        }
                                        z10 = true;
                                        break;
                                    case 1090594823:
                                        if (f03.equals("release")) {
                                            z10 = true;
                                            break;
                                        }
                                        z10 = true;
                                        break;
                                    case 1480014044:
                                        if (f03.equals("ip_address")) {
                                            z10 = true;
                                            break;
                                        }
                                        z10 = true;
                                        break;
                                    case 1917799825:
                                        if (f03.equals("user_agent")) {
                                            z10 = true;
                                            break;
                                        }
                                        z10 = true;
                                        break;
                                    default:
                                        z10 = true;
                                        break;
                                }
                                switch (z10) {
                                    case false:
                                        str8 = l2Var.T();
                                        break;
                                    case true:
                                        str6 = l2Var.T();
                                        break;
                                    case true:
                                        str3 = l2Var.T();
                                        break;
                                    case true:
                                        str4 = l2Var.T();
                                        break;
                                    default:
                                        l2Var.G();
                                        break;
                                }
                            }
                            l2Var.r();
                            str5 = str8;
                            break;
                        case '\n':
                            str7 = l2Var.T();
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                        default:
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            l2Var.b0(iLogger, concurrentHashMap, f02);
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            break;
                    }
                    d10 = d11;
                } else if (bVar != null) {
                    if (date != null) {
                        if (num != null) {
                            if (str6 != null) {
                                f6 f6Var = new f6(bVar, date, date2, num.intValue(), str2, uuid, bool, l10, d11, str10, str9, str8, str6, str7);
                                f6Var.o(concurrentHashMap);
                                l2Var.r();
                                return f6Var;
                            }
                            throw c("release", iLogger);
                        }
                        throw c("errors", iLogger);
                    }
                    throw c("started", iLogger);
                } else {
                    throw c("status", iLogger);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        Ok,
        Exited,
        Crashed,
        Abnormal
    }

    public f6(b bVar, Date date, Date date2, int i10, String str, UUID uuid, Boolean bool, Long l10, Double d10, String str2, String str3, String str4, String str5, String str6) {
        this.f23124o = new Object();
        this.f23116g = bVar;
        this.f23110a = date;
        this.f23111b = date2;
        this.f23112c = new AtomicInteger(i10);
        this.f23113d = str;
        this.f23114e = uuid;
        this.f23115f = bool;
        this.f23117h = l10;
        this.f23118i = d10;
        this.f23119j = str2;
        this.f23120k = str3;
        this.f23121l = str4;
        this.f23122m = str5;
        this.f23123n = str6;
    }

    private double a(Date date) {
        return Math.abs(date.getTime() - this.f23110a.getTime()) / 1000.0d;
    }

    private long i(Date date) {
        long time = date.getTime();
        if (time < 0) {
            return Math.abs(time);
        }
        return time;
    }

    /* renamed from: b */
    public f6 clone() {
        return new f6(this.f23116g, this.f23110a, this.f23111b, this.f23112c.get(), this.f23113d, this.f23114e, this.f23115f, this.f23117h, this.f23118i, this.f23119j, this.f23120k, this.f23121l, this.f23122m, this.f23123n);
    }

    public void c() {
        d(j.c());
    }

    public void d(Date date) {
        synchronized (this.f23124o) {
            this.f23115f = null;
            if (this.f23116g == b.Ok) {
                this.f23116g = b.Exited;
            }
            if (date != null) {
                this.f23111b = date;
            } else {
                this.f23111b = j.c();
            }
            Date date2 = this.f23111b;
            if (date2 != null) {
                this.f23118i = Double.valueOf(a(date2));
                this.f23117h = Long.valueOf(i(this.f23111b));
            }
        }
    }

    public int e() {
        return this.f23112c.get();
    }

    public String f() {
        return this.f23123n;
    }

    public Boolean g() {
        return this.f23115f;
    }

    public String h() {
        return this.f23122m;
    }

    public UUID j() {
        return this.f23114e;
    }

    public Date k() {
        Date date = this.f23110a;
        if (date == null) {
            return null;
        }
        return (Date) date.clone();
    }

    public b l() {
        return this.f23116g;
    }

    public boolean m() {
        if (this.f23116g != b.Ok) {
            return true;
        }
        return false;
    }

    public void n() {
        this.f23115f = Boolean.TRUE;
    }

    public void o(Map map) {
        this.f23125p = map;
    }

    public boolean p(b bVar, String str, boolean z10) {
        return q(bVar, str, z10, null);
    }

    public boolean q(b bVar, String str, boolean z10, String str2) {
        boolean z11;
        boolean z12;
        synchronized (this.f23124o) {
            z11 = true;
            if (bVar != null) {
                try {
                    this.f23116g = bVar;
                    z12 = true;
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                z12 = false;
            }
            if (str != null) {
                this.f23120k = str;
                z12 = true;
            }
            if (z10) {
                this.f23112c.addAndGet(1);
                z12 = true;
            }
            if (str2 != null) {
                this.f23123n = str2;
            } else {
                z11 = z12;
            }
            if (z11) {
                this.f23115f = null;
                Date c10 = j.c();
                this.f23111b = c10;
                if (c10 != null) {
                    this.f23117h = Long.valueOf(i(c10));
                }
            }
        }
        return z11;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23114e != null) {
            m2Var.k("sid").c(this.f23114e.toString());
        }
        if (this.f23113d != null) {
            m2Var.k("did").c(this.f23113d);
        }
        if (this.f23115f != null) {
            m2Var.k("init").h(this.f23115f);
        }
        m2Var.k("started").g(iLogger, this.f23110a);
        m2Var.k("status").g(iLogger, this.f23116g.name().toLowerCase(Locale.ROOT));
        if (this.f23117h != null) {
            m2Var.k("seq").f(this.f23117h);
        }
        m2Var.k("errors").a(this.f23112c.intValue());
        if (this.f23118i != null) {
            m2Var.k(MediaInformation.KEY_DURATION).f(this.f23118i);
        }
        if (this.f23111b != null) {
            m2Var.k(Constants.TIMESTAMP).g(iLogger, this.f23111b);
        }
        if (this.f23123n != null) {
            m2Var.k("abnormal_mechanism").g(iLogger, this.f23123n);
        }
        m2Var.k("attrs");
        m2Var.t();
        m2Var.k("release").g(iLogger, this.f23122m);
        if (this.f23121l != null) {
            m2Var.k("environment").g(iLogger, this.f23121l);
        }
        if (this.f23119j != null) {
            m2Var.k("ip_address").g(iLogger, this.f23119j);
        }
        if (this.f23120k != null) {
            m2Var.k("user_agent").g(iLogger, this.f23120k);
        }
        m2Var.r();
        Map map = this.f23125p;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23125p.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public f6(String str, io.sentry.protocol.b0 b0Var, String str2, String str3) {
        this(b.Ok, j.c(), j.c(), 0, str, UUID.randomUUID(), Boolean.TRUE, null, null, b0Var != null ? b0Var.n() : null, null, str2, str3, null);
    }
}
