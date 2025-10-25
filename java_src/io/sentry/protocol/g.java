package io.sentry.protocol;

import com.arthenica.ffmpegkit.Chapter;
import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class g implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23388a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f23389b;

    /* renamed from: c  reason: collision with root package name */
    private String f23390c;

    /* renamed from: d  reason: collision with root package name */
    private String f23391d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f23392e;

    /* renamed from: f  reason: collision with root package name */
    private String f23393f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f23394g;

    /* renamed from: h  reason: collision with root package name */
    private String f23395h;

    /* renamed from: i  reason: collision with root package name */
    private String f23396i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23397j;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public g a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            g gVar = new g();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1421884745:
                        if (f02.equals("npot_support")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1085970574:
                        if (f02.equals("vendor_id")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1009234244:
                        if (f02.equals("multi_threaded_rendering")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3355:
                        if (f02.equals(Chapter.KEY_ID)) {
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
                    case 59480866:
                        if (f02.equals("vendor_name")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 351608024:
                        if (f02.equals("version")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 967446079:
                        if (f02.equals("api_type")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (f02.equals("memory_size")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        gVar.f23396i = l2Var.T();
                        break;
                    case 1:
                        gVar.f23390c = l2Var.T();
                        break;
                    case 2:
                        gVar.f23394g = l2Var.m0();
                        break;
                    case 3:
                        gVar.f23389b = l2Var.J();
                        break;
                    case 4:
                        gVar.f23388a = l2Var.T();
                        break;
                    case 5:
                        gVar.f23391d = l2Var.T();
                        break;
                    case 6:
                        gVar.f23395h = l2Var.T();
                        break;
                    case 7:
                        gVar.f23393f = l2Var.T();
                        break;
                    case '\b':
                        gVar.f23392e = l2Var.J();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            gVar.j(concurrentHashMap);
            l2Var.r();
            return gVar;
        }
    }

    public g() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(g gVar) {
        this.f23388a = gVar.f23388a;
        this.f23389b = gVar.f23389b;
        this.f23390c = gVar.f23390c;
        this.f23391d = gVar.f23391d;
        this.f23392e = gVar.f23392e;
        this.f23393f = gVar.f23393f;
        this.f23394g = gVar.f23394g;
        this.f23395h = gVar.f23395h;
        this.f23396i = gVar.f23396i;
        this.f23397j = io.sentry.util.b.c(gVar.f23397j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (io.sentry.util.q.a(this.f23388a, gVar.f23388a) && io.sentry.util.q.a(this.f23389b, gVar.f23389b) && io.sentry.util.q.a(this.f23390c, gVar.f23390c) && io.sentry.util.q.a(this.f23391d, gVar.f23391d) && io.sentry.util.q.a(this.f23392e, gVar.f23392e) && io.sentry.util.q.a(this.f23393f, gVar.f23393f) && io.sentry.util.q.a(this.f23394g, gVar.f23394g) && io.sentry.util.q.a(this.f23395h, gVar.f23395h) && io.sentry.util.q.a(this.f23396i, gVar.f23396i)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23388a, this.f23389b, this.f23390c, this.f23391d, this.f23392e, this.f23393f, this.f23394g, this.f23395h, this.f23396i);
    }

    public void j(Map map) {
        this.f23397j = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23388a != null) {
            m2Var.k(Constants.NAME).c(this.f23388a);
        }
        if (this.f23389b != null) {
            m2Var.k(Chapter.KEY_ID).f(this.f23389b);
        }
        if (this.f23390c != null) {
            m2Var.k("vendor_id").c(this.f23390c);
        }
        if (this.f23391d != null) {
            m2Var.k("vendor_name").c(this.f23391d);
        }
        if (this.f23392e != null) {
            m2Var.k("memory_size").f(this.f23392e);
        }
        if (this.f23393f != null) {
            m2Var.k("api_type").c(this.f23393f);
        }
        if (this.f23394g != null) {
            m2Var.k("multi_threaded_rendering").h(this.f23394g);
        }
        if (this.f23395h != null) {
            m2Var.k("version").c(this.f23395h);
        }
        if (this.f23396i != null) {
            m2Var.k("npot_support").c(this.f23396i);
        }
        Map map = this.f23397j;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23397j.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
