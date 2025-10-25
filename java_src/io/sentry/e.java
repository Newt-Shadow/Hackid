package io.sentry;

import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.j5;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class e implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Long f23067a;

    /* renamed from: b  reason: collision with root package name */
    private Date f23068b;

    /* renamed from: c  reason: collision with root package name */
    private String f23069c;

    /* renamed from: d  reason: collision with root package name */
    private String f23070d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23071e;

    /* renamed from: f  reason: collision with root package name */
    private String f23072f;

    /* renamed from: g  reason: collision with root package name */
    private String f23073g;

    /* renamed from: h  reason: collision with root package name */
    private j5 f23074h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23075i;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v4, types: [java.util.Map] */
        @Override // io.sentry.g1
        /* renamed from: b */
        public e a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            Date c10 = j.c();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            j5 j5Var = null;
            ConcurrentHashMap concurrentHashMap2 = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c11 = 65535;
                switch (f02.hashCode()) {
                    case -1008619738:
                        if (f02.equals("origin")) {
                            c11 = 0;
                            break;
                        }
                        break;
                    case 3076010:
                        if (f02.equals("data")) {
                            c11 = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c11 = 2;
                            break;
                        }
                        break;
                    case 50511102:
                        if (f02.equals("category")) {
                            c11 = 3;
                            break;
                        }
                        break;
                    case 55126294:
                        if (f02.equals(Constants.TIMESTAMP)) {
                            c11 = 4;
                            break;
                        }
                        break;
                    case 102865796:
                        if (f02.equals(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL)) {
                            c11 = 5;
                            break;
                        }
                        break;
                    case 954925063:
                        if (f02.equals("message")) {
                            c11 = 6;
                            break;
                        }
                        break;
                }
                switch (c11) {
                    case 0:
                        str4 = l2Var.T();
                        break;
                    case 1:
                        ?? c12 = io.sentry.util.b.c((Map) l2Var.B0());
                        if (c12 == 0) {
                            break;
                        } else {
                            concurrentHashMap = c12;
                            break;
                        }
                    case 2:
                        str2 = l2Var.T();
                        break;
                    case 3:
                        str3 = l2Var.T();
                        break;
                    case 4:
                        Date i02 = l2Var.i0(iLogger);
                        if (i02 == null) {
                            break;
                        } else {
                            c10 = i02;
                            break;
                        }
                    case 5:
                        try {
                            j5Var = new j5.a().a(l2Var, iLogger);
                            break;
                        } catch (Exception e10) {
                            iLogger.a(j5.ERROR, e10, "Error when deserializing SentryLevel", new Object[0]);
                            break;
                        }
                    case 6:
                        str = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap2 == null) {
                            concurrentHashMap2 = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap2, f02);
                        break;
                }
            }
            e eVar = new e(c10);
            eVar.f23069c = str;
            eVar.f23070d = str2;
            eVar.f23071e = concurrentHashMap;
            eVar.f23072f = str3;
            eVar.f23073g = str4;
            eVar.f23074h = j5Var;
            eVar.s(concurrentHashMap2);
            l2Var.r();
            return eVar;
        }
    }

    public e(Date date) {
        this.f23071e = new ConcurrentHashMap();
        this.f23068b = date;
        this.f23067a = null;
    }

    public static e g(Map map, s5 s5Var) {
        Map map2;
        Date I0;
        String str;
        Date c10 = j.c();
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        j5 j5Var = null;
        ConcurrentHashMap concurrentHashMap2 = null;
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            String str6 = (String) entry.getKey();
            str6.hashCode();
            char c11 = 65535;
            switch (str6.hashCode()) {
                case -1008619738:
                    if (str6.equals("origin")) {
                        c11 = 0;
                        break;
                    }
                    break;
                case 3076010:
                    if (str6.equals("data")) {
                        c11 = 1;
                        break;
                    }
                    break;
                case 3575610:
                    if (str6.equals("type")) {
                        c11 = 2;
                        break;
                    }
                    break;
                case 50511102:
                    if (str6.equals("category")) {
                        c11 = 3;
                        break;
                    }
                    break;
                case 55126294:
                    if (str6.equals(Constants.TIMESTAMP)) {
                        c11 = 4;
                        break;
                    }
                    break;
                case 102865796:
                    if (str6.equals(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL)) {
                        c11 = 5;
                        break;
                    }
                    break;
                case 954925063:
                    if (str6.equals("message")) {
                        c11 = 6;
                        break;
                    }
                    break;
            }
            switch (c11) {
                case 0:
                    if (value instanceof String) {
                        str5 = (String) value;
                        break;
                    } else {
                        str5 = null;
                        break;
                    }
                case 1:
                    if (value instanceof Map) {
                        map2 = (Map) value;
                    } else {
                        map2 = null;
                    }
                    if (map2 != null) {
                        for (Map.Entry entry2 : map2.entrySet()) {
                            if ((entry2.getKey() instanceof String) && entry2.getValue() != null) {
                                concurrentHashMap.put((String) entry2.getKey(), entry2.getValue());
                            } else {
                                s5Var.getLogger().c(j5.WARNING, "Invalid key or null value in data map.", new Object[0]);
                            }
                        }
                        break;
                    } else {
                        break;
                    }
                    break;
                case 2:
                    if (value instanceof String) {
                        str3 = (String) value;
                        break;
                    } else {
                        str3 = null;
                        break;
                    }
                case 3:
                    if (value instanceof String) {
                        str4 = (String) value;
                        break;
                    } else {
                        str4 = null;
                        break;
                    }
                case 4:
                    if ((value instanceof String) && (I0 = l2.I0((String) value, s5Var.getLogger())) != null) {
                        c10 = I0;
                        break;
                    }
                    break;
                case 5:
                    if (value instanceof String) {
                        str = (String) value;
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        try {
                            j5Var = j5.valueOf(str.toUpperCase(Locale.ROOT));
                            break;
                        } catch (Exception unused) {
                            break;
                        }
                    } else {
                        break;
                    }
                case 6:
                    if (value instanceof String) {
                        str2 = (String) value;
                        break;
                    } else {
                        str2 = null;
                        break;
                    }
                default:
                    if (concurrentHashMap2 == null) {
                        concurrentHashMap2 = new ConcurrentHashMap();
                    }
                    concurrentHashMap2.put((String) entry.getKey(), entry.getValue());
                    break;
            }
        }
        e eVar = new e(c10);
        eVar.f23069c = str2;
        eVar.f23070d = str3;
        eVar.f23071e = concurrentHashMap;
        eVar.f23072f = str4;
        eVar.f23073g = str5;
        eVar.f23074h = j5Var;
        eVar.s(concurrentHashMap2);
        return eVar;
    }

    public static e t(String str, String str2, String str3, String str4, Map map) {
        e eVar = new e();
        eVar.r("user");
        eVar.n("ui." + str);
        if (str2 != null) {
            eVar.o("view.id", str2);
        }
        if (str3 != null) {
            eVar.o("view.class", str3);
        }
        if (str4 != null) {
            eVar.o("view.tag", str4);
        }
        for (Map.Entry entry : map.entrySet()) {
            eVar.i().put((String) entry.getKey(), entry.getValue());
        }
        eVar.p(j5.INFO);
        return eVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (l().getTime() == eVar.l().getTime() && io.sentry.util.q.a(this.f23069c, eVar.f23069c) && io.sentry.util.q.a(this.f23070d, eVar.f23070d) && io.sentry.util.q.a(this.f23072f, eVar.f23072f) && io.sentry.util.q.a(this.f23073g, eVar.f23073g) && this.f23074h == eVar.f23074h) {
            return true;
        }
        return false;
    }

    public String h() {
        return this.f23072f;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23068b, this.f23069c, this.f23070d, this.f23072f, this.f23073g, this.f23074h);
    }

    public Map i() {
        return this.f23071e;
    }

    public j5 j() {
        return this.f23074h;
    }

    public String k() {
        return this.f23069c;
    }

    public Date l() {
        Date date = this.f23068b;
        if (date != null) {
            return (Date) date.clone();
        }
        Long l10 = this.f23067a;
        if (l10 != null) {
            Date d10 = j.d(l10.longValue());
            this.f23068b = d10;
            return d10;
        }
        throw new IllegalStateException("No timestamp set for breadcrumb");
    }

    public String m() {
        return this.f23070d;
    }

    public void n(String str) {
        this.f23072f = str;
    }

    public void o(String str, Object obj) {
        this.f23071e.put(str, obj);
    }

    public void p(j5 j5Var) {
        this.f23074h = j5Var;
    }

    public void q(String str) {
        this.f23069c = str;
    }

    public void r(String str) {
        this.f23070d = str;
    }

    public void s(Map map) {
        this.f23075i = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Constants.TIMESTAMP).g(iLogger, l());
        if (this.f23069c != null) {
            m2Var.k("message").c(this.f23069c);
        }
        if (this.f23070d != null) {
            m2Var.k("type").c(this.f23070d);
        }
        m2Var.k("data").g(iLogger, this.f23071e);
        if (this.f23072f != null) {
            m2Var.k("category").c(this.f23072f);
        }
        if (this.f23073g != null) {
            m2Var.k("origin").c(this.f23073g);
        }
        if (this.f23074h != null) {
            m2Var.k(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL).g(iLogger, this.f23074h);
        }
        Map map = this.f23075i;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23075i.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public e(long j10) {
        this.f23071e = new ConcurrentHashMap();
        this.f23067a = Long.valueOf(j10);
        this.f23068b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(e eVar) {
        this.f23071e = new ConcurrentHashMap();
        this.f23068b = eVar.f23068b;
        this.f23067a = eVar.f23067a;
        this.f23069c = eVar.f23069c;
        this.f23070d = eVar.f23070d;
        this.f23072f = eVar.f23072f;
        this.f23073g = eVar.f23073g;
        Map c10 = io.sentry.util.b.c(eVar.f23071e);
        if (c10 != null) {
            this.f23071e = c10;
        }
        this.f23075i = io.sentry.util.b.c(eVar.f23075i);
        this.f23074h = eVar.f23074h;
    }

    public e() {
        this(System.currentTimeMillis());
    }
}
