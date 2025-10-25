package io.sentry.protocol;

import com.arthenica.ffmpegkit.Chapter;
import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.k5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.w;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* loaded from: classes2.dex */
public final class x implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private Long f23507a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f23508b;

    /* renamed from: c  reason: collision with root package name */
    private String f23509c;

    /* renamed from: d  reason: collision with root package name */
    private String f23510d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f23511e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f23512f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f23513g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f23514h;

    /* renamed from: i  reason: collision with root package name */
    private w f23515i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23516j;

    /* renamed from: k  reason: collision with root package name */
    private Map f23517k;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public x a(l2 l2Var, ILogger iLogger) {
            x xVar = new x();
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1339353468:
                        if (f02.equals("daemon")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1165461084:
                        if (f02.equals(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -502917346:
                        if (f02.equals("held_locks")) {
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
                    case 3343801:
                        if (f02.equals("main")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 109757585:
                        if (f02.equals("state")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1025385094:
                        if (f02.equals("crashed")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1126940025:
                        if (f02.equals("current")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 2055832509:
                        if (f02.equals("stacktrace")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        xVar.f23513g = l2Var.m0();
                        break;
                    case 1:
                        xVar.f23508b = l2Var.J();
                        break;
                    case 2:
                        Map Z = l2Var.Z(iLogger, new k5.a());
                        if (Z == null) {
                            break;
                        } else {
                            xVar.f23516j = new HashMap(Z);
                            break;
                        }
                    case 3:
                        xVar.f23507a = l2Var.M();
                        break;
                    case 4:
                        xVar.f23514h = l2Var.m0();
                        break;
                    case 5:
                        xVar.f23509c = l2Var.T();
                        break;
                    case 6:
                        xVar.f23510d = l2Var.T();
                        break;
                    case 7:
                        xVar.f23511e = l2Var.m0();
                        break;
                    case '\b':
                        xVar.f23512f = l2Var.m0();
                        break;
                    case '\t':
                        xVar.f23515i = (w) l2Var.u0(iLogger, new w.a());
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            xVar.A(concurrentHashMap);
            l2Var.r();
            return xVar;
        }
    }

    public void A(Map map) {
        this.f23517k = map;
    }

    public Map k() {
        return this.f23516j;
    }

    public Long l() {
        return this.f23507a;
    }

    public String m() {
        return this.f23509c;
    }

    public w n() {
        return this.f23515i;
    }

    public Boolean o() {
        return this.f23512f;
    }

    public Boolean p() {
        return this.f23514h;
    }

    public void q(Boolean bool) {
        this.f23511e = bool;
    }

    public void r(Boolean bool) {
        this.f23512f = bool;
    }

    public void s(Boolean bool) {
        this.f23513g = bool;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23507a != null) {
            m2Var.k(Chapter.KEY_ID).f(this.f23507a);
        }
        if (this.f23508b != null) {
            m2Var.k(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR).f(this.f23508b);
        }
        if (this.f23509c != null) {
            m2Var.k(Constants.NAME).c(this.f23509c);
        }
        if (this.f23510d != null) {
            m2Var.k("state").c(this.f23510d);
        }
        if (this.f23511e != null) {
            m2Var.k("crashed").h(this.f23511e);
        }
        if (this.f23512f != null) {
            m2Var.k("current").h(this.f23512f);
        }
        if (this.f23513g != null) {
            m2Var.k("daemon").h(this.f23513g);
        }
        if (this.f23514h != null) {
            m2Var.k("main").h(this.f23514h);
        }
        if (this.f23515i != null) {
            m2Var.k("stacktrace").g(iLogger, this.f23515i);
        }
        if (this.f23516j != null) {
            m2Var.k("held_locks").g(iLogger, this.f23516j);
        }
        Map map = this.f23517k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23517k.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void t(Map map) {
        this.f23516j = map;
    }

    public void u(Long l10) {
        this.f23507a = l10;
    }

    public void v(Boolean bool) {
        this.f23514h = bool;
    }

    public void w(String str) {
        this.f23509c = str;
    }

    public void x(Integer num) {
        this.f23508b = num;
    }

    public void y(w wVar) {
        this.f23515i = wVar;
    }

    public void z(String str) {
        this.f23510d = str;
    }
}
