package io.sentry;

import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.StreamInformation;
import io.sentry.protocol.r;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class v6 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.r f23837a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23838b;

    /* renamed from: c  reason: collision with root package name */
    private final String f23839c;

    /* renamed from: d  reason: collision with root package name */
    private final String f23840d;

    /* renamed from: e  reason: collision with root package name */
    private final String f23841e;

    /* renamed from: f  reason: collision with root package name */
    private final String f23842f;

    /* renamed from: g  reason: collision with root package name */
    private final String f23843g;

    /* renamed from: h  reason: collision with root package name */
    private final String f23844h;

    /* renamed from: i  reason: collision with root package name */
    private final String f23845i;

    /* renamed from: j  reason: collision with root package name */
    private final io.sentry.protocol.r f23846j;

    /* renamed from: k  reason: collision with root package name */
    private Map f23847k;

    /* loaded from: classes2.dex */
    public static final class b implements g1 {
        private Exception c(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.b(j5.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public v6 a(l2 l2Var, ILogger iLogger) {
            String str;
            String str2;
            l2Var.t();
            c cVar = null;
            String str3 = null;
            io.sentry.protocol.r rVar = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            String str9 = null;
            String str10 = null;
            io.sentry.protocol.r rVar2 = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (true) {
                io.sentry.protocol.r rVar3 = rVar2;
                String str11 = str10;
                if (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                    String f02 = l2Var.f0();
                    f02.hashCode();
                    char c10 = 65535;
                    switch (f02.hashCode()) {
                        case -795593025:
                            if (f02.equals("user_segment")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -454767501:
                            if (f02.equals("replay_id")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -147132913:
                            if (f02.equals("user_id")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -85904877:
                            if (f02.equals("environment")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 3599307:
                            if (f02.equals("user")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 153193045:
                            if (f02.equals(StreamInformation.KEY_SAMPLE_RATE)) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case 1090594823:
                            if (f02.equals("release")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case 1270300245:
                            if (f02.equals("trace_id")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case 1864843258:
                            if (f02.equals("sampled")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case 1904812937:
                            if (f02.equals("public_key")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case 2141246174:
                            if (f02.equals("transaction")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            str4 = l2Var.T();
                            rVar2 = rVar3;
                            break;
                        case 1:
                            rVar2 = new r.a().a(l2Var, iLogger);
                            break;
                        case 2:
                            str3 = l2Var.T();
                            rVar2 = rVar3;
                            break;
                        case 3:
                            str7 = l2Var.T();
                            rVar2 = rVar3;
                            break;
                        case 4:
                            cVar = (c) l2Var.u0(iLogger, new c.a());
                            rVar2 = rVar3;
                            break;
                        case 5:
                            str9 = l2Var.T();
                            rVar2 = rVar3;
                            break;
                        case 6:
                            str6 = l2Var.T();
                            rVar2 = rVar3;
                            break;
                        case 7:
                            rVar = new r.a().a(l2Var, iLogger);
                            rVar2 = rVar3;
                            break;
                        case '\b':
                            str10 = l2Var.T();
                            rVar2 = rVar3;
                            continue;
                        case '\t':
                            str5 = l2Var.C();
                            rVar2 = rVar3;
                            break;
                        case '\n':
                            str8 = l2Var.T();
                            rVar2 = rVar3;
                            break;
                        default:
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            l2Var.b0(iLogger, concurrentHashMap, f02);
                            rVar2 = rVar3;
                            break;
                    }
                    str10 = str11;
                } else if (rVar != null) {
                    if (str5 != null) {
                        if (cVar != null) {
                            if (str3 == null) {
                                str3 = cVar.a();
                            }
                            if (str4 == null) {
                                str2 = cVar.b();
                                str = str3;
                                v6 v6Var = new v6(rVar, str5, str6, str7, str, str2, str8, str9, str11, rVar3);
                                v6Var.b(concurrentHashMap);
                                l2Var.r();
                                return v6Var;
                            }
                        }
                        str = str3;
                        str2 = str4;
                        v6 v6Var2 = new v6(rVar, str5, str6, str7, str, str2, str8, str9, str11, rVar3);
                        v6Var2.b(concurrentHashMap);
                        l2Var.r();
                        return v6Var2;
                    }
                    throw c("public_key", iLogger);
                } else {
                    throw c("trace_id", iLogger);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private String f23848a;

        /* renamed from: b  reason: collision with root package name */
        private String f23849b;

        /* renamed from: c  reason: collision with root package name */
        private Map f23850c;

        /* loaded from: classes2.dex */
        public static final class a implements g1 {
            @Override // io.sentry.g1
            /* renamed from: b */
            public c a(l2 l2Var, ILogger iLogger) {
                l2Var.t();
                String str = null;
                String str2 = null;
                ConcurrentHashMap concurrentHashMap = null;
                while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                    String f02 = l2Var.f0();
                    f02.hashCode();
                    if (!f02.equals(Chapter.KEY_ID)) {
                        if (!f02.equals("segment")) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            l2Var.b0(iLogger, concurrentHashMap, f02);
                        } else {
                            str2 = l2Var.T();
                        }
                    } else {
                        str = l2Var.T();
                    }
                }
                c cVar = new c(str, str2);
                cVar.c(concurrentHashMap);
                l2Var.r();
                return cVar;
            }
        }

        public String a() {
            return this.f23848a;
        }

        public String b() {
            return this.f23849b;
        }

        public void c(Map map) {
            this.f23850c = map;
        }

        private c(String str, String str2) {
            this.f23848a = str;
            this.f23849b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v6(io.sentry.protocol.r rVar, String str) {
        this(rVar, str, null, null, null, null, null, null, null);
    }

    public String a() {
        return this.f23844h;
    }

    public void b(Map map) {
        this.f23847k = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("trace_id").g(iLogger, this.f23837a);
        m2Var.k("public_key").c(this.f23838b);
        if (this.f23839c != null) {
            m2Var.k("release").c(this.f23839c);
        }
        if (this.f23840d != null) {
            m2Var.k("environment").c(this.f23840d);
        }
        if (this.f23841e != null) {
            m2Var.k("user_id").c(this.f23841e);
        }
        if (this.f23842f != null) {
            m2Var.k("user_segment").c(this.f23842f);
        }
        if (this.f23843g != null) {
            m2Var.k("transaction").c(this.f23843g);
        }
        if (this.f23844h != null) {
            m2Var.k(StreamInformation.KEY_SAMPLE_RATE).c(this.f23844h);
        }
        if (this.f23845i != null) {
            m2Var.k("sampled").c(this.f23845i);
        }
        if (this.f23846j != null) {
            m2Var.k("replay_id").g(iLogger, this.f23846j);
        }
        Map map = this.f23847k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23847k.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    v6(io.sentry.protocol.r rVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, io.sentry.protocol.r rVar2) {
        this(rVar, str, str2, str3, str4, null, str5, str6, str7, rVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v6(io.sentry.protocol.r rVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, io.sentry.protocol.r rVar2) {
        this.f23837a = rVar;
        this.f23838b = str;
        this.f23839c = str2;
        this.f23840d = str3;
        this.f23841e = str4;
        this.f23842f = str5;
        this.f23843g = str6;
        this.f23844h = str7;
        this.f23845i = str8;
        this.f23846j = rVar2;
    }
}
