package io.sentry;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class r3 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    boolean f23554a;

    /* renamed from: b  reason: collision with root package name */
    Double f23555b;

    /* renamed from: c  reason: collision with root package name */
    boolean f23556c;

    /* renamed from: d  reason: collision with root package name */
    Double f23557d;

    /* renamed from: e  reason: collision with root package name */
    String f23558e;

    /* renamed from: f  reason: collision with root package name */
    boolean f23559f;

    /* renamed from: g  reason: collision with root package name */
    int f23560g;

    /* renamed from: h  reason: collision with root package name */
    private Map f23561h;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public r3 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            r3 r3Var = new r3();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -566246656:
                        if (f02.equals("trace_sampled")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -450071601:
                        if (f02.equals("profiling_traces_dir_path")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -116896685:
                        if (f02.equals("is_profiling_enabled")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -69617820:
                        if (f02.equals("profile_sampled")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1583866442:
                        if (f02.equals("profiling_traces_hz")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 1653938779:
                        if (f02.equals("trace_sample_rate")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 2140552383:
                        if (f02.equals("profile_sample_rate")) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        Boolean m02 = l2Var.m0();
                        if (m02 == null) {
                            break;
                        } else {
                            r3Var.f23556c = m02.booleanValue();
                            break;
                        }
                    case 1:
                        String T = l2Var.T();
                        if (T == null) {
                            break;
                        } else {
                            r3Var.f23558e = T;
                            break;
                        }
                    case 2:
                        Boolean m03 = l2Var.m0();
                        if (m03 == null) {
                            break;
                        } else {
                            r3Var.f23559f = m03.booleanValue();
                            break;
                        }
                    case 3:
                        Boolean m04 = l2Var.m0();
                        if (m04 == null) {
                            break;
                        } else {
                            r3Var.f23554a = m04.booleanValue();
                            break;
                        }
                    case 4:
                        Integer J = l2Var.J();
                        if (J == null) {
                            break;
                        } else {
                            r3Var.f23560g = J.intValue();
                            break;
                        }
                    case 5:
                        Double e02 = l2Var.e0();
                        if (e02 == null) {
                            break;
                        } else {
                            r3Var.f23557d = e02;
                            break;
                        }
                    case 6:
                        Double e03 = l2Var.e0();
                        if (e03 == null) {
                            break;
                        } else {
                            r3Var.f23555b = e03;
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
            r3Var.h(concurrentHashMap);
            l2Var.r();
            return r3Var;
        }
    }

    public r3() {
        this.f23556c = false;
        this.f23557d = null;
        this.f23554a = false;
        this.f23555b = null;
        this.f23558e = null;
        this.f23559f = false;
        this.f23560g = 0;
    }

    public Double a() {
        return this.f23555b;
    }

    public String b() {
        return this.f23558e;
    }

    public int c() {
        return this.f23560g;
    }

    public Double d() {
        return this.f23557d;
    }

    public boolean e() {
        return this.f23554a;
    }

    public boolean f() {
        return this.f23559f;
    }

    public boolean g() {
        return this.f23556c;
    }

    public void h(Map map) {
        this.f23561h = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("profile_sampled").g(iLogger, Boolean.valueOf(this.f23554a));
        m2Var.k("profile_sample_rate").g(iLogger, this.f23555b);
        m2Var.k("trace_sampled").g(iLogger, Boolean.valueOf(this.f23556c));
        m2Var.k("trace_sample_rate").g(iLogger, this.f23557d);
        m2Var.k("profiling_traces_dir_path").g(iLogger, this.f23558e);
        m2Var.k("is_profiling_enabled").g(iLogger, Boolean.valueOf(this.f23559f));
        m2Var.k("profiling_traces_hz").g(iLogger, Integer.valueOf(this.f23560g));
        Map map = this.f23561h;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23561h.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r3(s5 s5Var, x6 x6Var) {
        this.f23556c = x6Var.d().booleanValue();
        this.f23557d = x6Var.c();
        this.f23554a = x6Var.b().booleanValue();
        this.f23555b = x6Var.a();
        this.f23558e = s5Var.getProfilingTracesDirPath();
        this.f23559f = s5Var.isProfilingEnabled();
        this.f23560g = s5Var.getProfilingTracesHz();
    }
}
