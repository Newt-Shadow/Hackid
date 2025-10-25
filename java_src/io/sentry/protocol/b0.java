package io.sentry.protocol;

import com.arthenica.ffmpegkit.Chapter;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLCredentialContract;
import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.f;
import io.sentry.q1;
import io.sentry.s5;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class b0 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23330a;

    /* renamed from: b  reason: collision with root package name */
    private String f23331b;

    /* renamed from: c  reason: collision with root package name */
    private String f23332c;

    /* renamed from: d  reason: collision with root package name */
    private String f23333d;

    /* renamed from: e  reason: collision with root package name */
    private String f23334e;

    /* renamed from: f  reason: collision with root package name */
    private String f23335f;

    /* renamed from: g  reason: collision with root package name */
    private f f23336g;

    /* renamed from: h  reason: collision with root package name */
    private Map f23337h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23338i;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public b0 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            b0 b0Var = new b0();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -265713450:
                        if (f02.equals(URLCredentialContract.FeedEntry.COLUMN_NAME_USERNAME)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3355:
                        if (f02.equals(Chapter.KEY_ID)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 102225:
                        if (f02.equals("geo")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3076010:
                        if (f02.equals("data")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 96619420:
                        if (f02.equals("email")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 106069776:
                        if (f02.equals("other")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1480014044:
                        if (f02.equals("ip_address")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1973722931:
                        if (f02.equals("segment")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        b0Var.f23332c = l2Var.T();
                        break;
                    case 1:
                        b0Var.f23331b = l2Var.T();
                        break;
                    case 2:
                        b0Var.f23336g = new f.a().a(l2Var, iLogger);
                        break;
                    case 3:
                        b0Var.f23337h = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 4:
                        b0Var.f23335f = l2Var.T();
                        break;
                    case 5:
                        b0Var.f23330a = l2Var.T();
                        break;
                    case 6:
                        if (b0Var.f23337h != null && !b0Var.f23337h.isEmpty()) {
                            break;
                        } else {
                            b0Var.f23337h = io.sentry.util.b.c((Map) l2Var.B0());
                            break;
                        }
                    case 7:
                        b0Var.f23334e = l2Var.T();
                        break;
                    case '\b':
                        b0Var.f23333d = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            b0Var.s(concurrentHashMap);
            l2Var.r();
            return b0Var;
        }
    }

    public b0() {
    }

    public b0(b0 b0Var) {
        this.f23330a = b0Var.f23330a;
        this.f23332c = b0Var.f23332c;
        this.f23331b = b0Var.f23331b;
        this.f23334e = b0Var.f23334e;
        this.f23333d = b0Var.f23333d;
        this.f23335f = b0Var.f23335f;
        this.f23336g = b0Var.f23336g;
        this.f23337h = io.sentry.util.b.c(b0Var.f23337h);
        this.f23338i = io.sentry.util.b.c(b0Var.f23338i);
    }

    public static b0 j(Map map, s5 s5Var) {
        String str;
        String str2;
        Map map2;
        Map map3;
        String str3;
        String str4;
        Map map4;
        Map map5;
        String str5;
        String str6;
        b0 b0Var = new b0();
        ConcurrentHashMap concurrentHashMap = null;
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            String str7 = (String) entry.getKey();
            str7.hashCode();
            char c10 = 65535;
            switch (str7.hashCode()) {
                case -265713450:
                    if (str7.equals(URLCredentialContract.FeedEntry.COLUMN_NAME_USERNAME)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3355:
                    if (str7.equals(Chapter.KEY_ID)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 102225:
                    if (str7.equals("geo")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3076010:
                    if (str7.equals("data")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3373707:
                    if (str7.equals(Constants.NAME)) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 96619420:
                    if (str7.equals("email")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 106069776:
                    if (str7.equals("other")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 1480014044:
                    if (str7.equals("ip_address")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1973722931:
                    if (str7.equals("segment")) {
                        c10 = '\b';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    if (value instanceof String) {
                        str = (String) value;
                    } else {
                        str = null;
                    }
                    b0Var.f23332c = str;
                    break;
                case 1:
                    if (value instanceof String) {
                        str2 = (String) value;
                    } else {
                        str2 = null;
                    }
                    b0Var.f23331b = str2;
                    break;
                case 2:
                    if (value instanceof Map) {
                        map2 = (Map) value;
                    } else {
                        map2 = null;
                    }
                    if (map2 != null) {
                        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
                        for (Map.Entry entry2 : map2.entrySet()) {
                            if ((entry2.getKey() instanceof String) && entry2.getValue() != null) {
                                concurrentHashMap2.put((String) entry2.getKey(), entry2.getValue());
                            } else {
                                s5Var.getLogger().c(j5.WARNING, "Invalid key type in gep map.", new Object[0]);
                            }
                        }
                        b0Var.f23336g = f.d(concurrentHashMap2);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (value instanceof Map) {
                        map3 = (Map) value;
                    } else {
                        map3 = null;
                    }
                    if (map3 != null) {
                        ConcurrentHashMap concurrentHashMap3 = new ConcurrentHashMap();
                        for (Map.Entry entry3 : map3.entrySet()) {
                            if ((entry3.getKey() instanceof String) && entry3.getValue() != null) {
                                concurrentHashMap3.put((String) entry3.getKey(), entry3.getValue().toString());
                            } else {
                                s5Var.getLogger().c(j5.WARNING, "Invalid key or null value in data map.", new Object[0]);
                            }
                        }
                        b0Var.f23337h = concurrentHashMap3;
                        break;
                    } else {
                        break;
                    }
                    break;
                case 4:
                    if (value instanceof String) {
                        str3 = (String) value;
                    } else {
                        str3 = null;
                    }
                    b0Var.f23335f = str3;
                    break;
                case 5:
                    if (value instanceof String) {
                        str4 = (String) value;
                    } else {
                        str4 = null;
                    }
                    b0Var.f23330a = str4;
                    break;
                case 6:
                    if (value instanceof Map) {
                        map4 = (Map) value;
                    } else {
                        map4 = null;
                    }
                    if (map4 != null && ((map5 = b0Var.f23337h) == null || map5.isEmpty())) {
                        ConcurrentHashMap concurrentHashMap4 = new ConcurrentHashMap();
                        for (Map.Entry entry4 : map4.entrySet()) {
                            if ((entry4.getKey() instanceof String) && entry4.getValue() != null) {
                                concurrentHashMap4.put((String) entry4.getKey(), entry4.getValue().toString());
                            } else {
                                s5Var.getLogger().c(j5.WARNING, "Invalid key or null value in other map.", new Object[0]);
                            }
                        }
                        b0Var.f23337h = concurrentHashMap4;
                        break;
                    }
                    break;
                case 7:
                    if (value instanceof String) {
                        str5 = (String) value;
                    } else {
                        str5 = null;
                    }
                    b0Var.f23334e = str5;
                    break;
                case '\b':
                    if (value instanceof String) {
                        str6 = (String) value;
                    } else {
                        str6 = null;
                    }
                    b0Var.f23333d = str6;
                    break;
                default:
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    concurrentHashMap.put((String) entry.getKey(), entry.getValue());
                    break;
            }
        }
        b0Var.f23338i = concurrentHashMap;
        return b0Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        if (io.sentry.util.q.a(this.f23330a, b0Var.f23330a) && io.sentry.util.q.a(this.f23331b, b0Var.f23331b) && io.sentry.util.q.a(this.f23332c, b0Var.f23332c) && io.sentry.util.q.a(this.f23333d, b0Var.f23333d) && io.sentry.util.q.a(this.f23334e, b0Var.f23334e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23330a, this.f23331b, this.f23332c, this.f23333d, this.f23334e);
    }

    public Map k() {
        return this.f23337h;
    }

    public String l() {
        return this.f23330a;
    }

    public String m() {
        return this.f23331b;
    }

    public String n() {
        return this.f23334e;
    }

    public String o() {
        return this.f23333d;
    }

    public String p() {
        return this.f23332c;
    }

    public void q(String str) {
        this.f23331b = str;
    }

    public void r(String str) {
        this.f23334e = str;
    }

    public void s(Map map) {
        this.f23338i = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23330a != null) {
            m2Var.k("email").c(this.f23330a);
        }
        if (this.f23331b != null) {
            m2Var.k(Chapter.KEY_ID).c(this.f23331b);
        }
        if (this.f23332c != null) {
            m2Var.k(URLCredentialContract.FeedEntry.COLUMN_NAME_USERNAME).c(this.f23332c);
        }
        if (this.f23333d != null) {
            m2Var.k("segment").c(this.f23333d);
        }
        if (this.f23334e != null) {
            m2Var.k("ip_address").c(this.f23334e);
        }
        if (this.f23335f != null) {
            m2Var.k(Constants.NAME).c(this.f23335f);
        }
        if (this.f23336g != null) {
            m2Var.k("geo");
            this.f23336g.serialize(m2Var, iLogger);
        }
        if (this.f23337h != null) {
            m2Var.k("data").g(iLogger, this.f23337h);
        }
        Map map = this.f23338i;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23338i.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
