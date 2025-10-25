package io.sentry;

import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class v2 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23823a;

    /* renamed from: b  reason: collision with root package name */
    private String f23824b;

    /* renamed from: c  reason: collision with root package name */
    private String f23825c;

    /* renamed from: d  reason: collision with root package name */
    private Long f23826d;

    /* renamed from: e  reason: collision with root package name */
    private Long f23827e;

    /* renamed from: f  reason: collision with root package name */
    private Long f23828f;

    /* renamed from: g  reason: collision with root package name */
    private Long f23829g;

    /* renamed from: h  reason: collision with root package name */
    private Map f23830h;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public v2 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            v2 v2Var = new v2();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -112372011:
                        if (f02.equals("relative_start_ns")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -84607876:
                        if (f02.equals("relative_end_ns")) {
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
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (f02.equals("trace_id")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1566648660:
                        if (f02.equals("relative_cpu_end_ms")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1902256621:
                        if (f02.equals("relative_cpu_start_ms")) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        Long M = l2Var.M();
                        if (M == null) {
                            break;
                        } else {
                            v2Var.f23826d = M;
                            break;
                        }
                    case 1:
                        Long M2 = l2Var.M();
                        if (M2 == null) {
                            break;
                        } else {
                            v2Var.f23827e = M2;
                            break;
                        }
                    case 2:
                        String T = l2Var.T();
                        if (T == null) {
                            break;
                        } else {
                            v2Var.f23823a = T;
                            break;
                        }
                    case 3:
                        String T2 = l2Var.T();
                        if (T2 == null) {
                            break;
                        } else {
                            v2Var.f23825c = T2;
                            break;
                        }
                    case 4:
                        String T3 = l2Var.T();
                        if (T3 == null) {
                            break;
                        } else {
                            v2Var.f23824b = T3;
                            break;
                        }
                    case 5:
                        Long M3 = l2Var.M();
                        if (M3 == null) {
                            break;
                        } else {
                            v2Var.f23829g = M3;
                            break;
                        }
                    case 6:
                        Long M4 = l2Var.M();
                        if (M4 == null) {
                            break;
                        } else {
                            v2Var.f23828f = M4;
                            break;
                        }
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            v2Var.l(concurrentHashMap);
            l2Var.r();
            return v2Var;
        }
    }

    public v2() {
        this(h2.u(), 0L, 0L);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v2.class != obj.getClass()) {
            return false;
        }
        v2 v2Var = (v2) obj;
        if (this.f23823a.equals(v2Var.f23823a) && this.f23824b.equals(v2Var.f23824b) && this.f23825c.equals(v2Var.f23825c) && this.f23826d.equals(v2Var.f23826d) && this.f23828f.equals(v2Var.f23828f) && io.sentry.util.q.a(this.f23829g, v2Var.f23829g) && io.sentry.util.q.a(this.f23827e, v2Var.f23827e) && io.sentry.util.q.a(this.f23830h, v2Var.f23830h)) {
            return true;
        }
        return false;
    }

    public String h() {
        return this.f23823a;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23823a, this.f23824b, this.f23825c, this.f23826d, this.f23827e, this.f23828f, this.f23829g, this.f23830h);
    }

    public String i() {
        return this.f23825c;
    }

    public String j() {
        return this.f23824b;
    }

    public void k(Long l10, Long l11, Long l12, Long l13) {
        if (this.f23827e == null) {
            this.f23827e = Long.valueOf(l10.longValue() - l11.longValue());
            this.f23826d = Long.valueOf(this.f23826d.longValue() - l11.longValue());
            this.f23829g = Long.valueOf(l12.longValue() - l13.longValue());
            this.f23828f = Long.valueOf(this.f23828f.longValue() - l13.longValue());
        }
    }

    public void l(Map map) {
        this.f23830h = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Chapter.KEY_ID).g(iLogger, this.f23823a);
        m2Var.k("trace_id").g(iLogger, this.f23824b);
        m2Var.k(Constants.NAME).g(iLogger, this.f23825c);
        m2Var.k("relative_start_ns").g(iLogger, this.f23826d);
        m2Var.k("relative_end_ns").g(iLogger, this.f23827e);
        m2Var.k("relative_cpu_start_ms").g(iLogger, this.f23828f);
        m2Var.k("relative_cpu_end_ms").g(iLogger, this.f23829g);
        Map map = this.f23830h;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23830h.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public v2(a1 a1Var, Long l10, Long l11) {
        this.f23823a = a1Var.m().toString();
        this.f23824b = a1Var.o().k().toString();
        this.f23825c = a1Var.getName().isEmpty() ? CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE : a1Var.getName();
        this.f23826d = l10;
        this.f23828f = l11;
    }
}
