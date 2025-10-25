package io.sentry.protocol;

import com.arthenica.ffmpegkit.MediaInformation;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.k5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class v implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23485a;

    /* renamed from: b  reason: collision with root package name */
    private String f23486b;

    /* renamed from: c  reason: collision with root package name */
    private String f23487c;

    /* renamed from: d  reason: collision with root package name */
    private Integer f23488d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f23489e;

    /* renamed from: f  reason: collision with root package name */
    private String f23490f;

    /* renamed from: g  reason: collision with root package name */
    private String f23491g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f23492h;

    /* renamed from: i  reason: collision with root package name */
    private String f23493i;

    /* renamed from: j  reason: collision with root package name */
    private Boolean f23494j;

    /* renamed from: k  reason: collision with root package name */
    private String f23495k;

    /* renamed from: l  reason: collision with root package name */
    private String f23496l;

    /* renamed from: m  reason: collision with root package name */
    private String f23497m;

    /* renamed from: n  reason: collision with root package name */
    private String f23498n;

    /* renamed from: o  reason: collision with root package name */
    private String f23499o;

    /* renamed from: p  reason: collision with root package name */
    private Map f23500p;

    /* renamed from: q  reason: collision with root package name */
    private String f23501q;

    /* renamed from: r  reason: collision with root package name */
    private k5 f23502r;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public v a(l2 l2Var, ILogger iLogger) {
            v vVar = new v();
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1443345323:
                        if (f02.equals("image_addr")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1184392185:
                        if (f02.equals("in_app")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1113875953:
                        if (f02.equals("raw_function")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1102671691:
                        if (f02.equals("lineno")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (f02.equals("module")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -1052618729:
                        if (f02.equals("native")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -887523944:
                        if (f02.equals("symbol")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -807062458:
                        if (f02.equals("package")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -734768633:
                        if (f02.equals(MediaInformation.KEY_FILENAME)) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -330260936:
                        if (f02.equals("symbol_addr")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 3327275:
                        if (f02.equals("lock")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case 94842689:
                        if (f02.equals("colno")) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case 410194178:
                        if (f02.equals("instruction_addr")) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case 1116694660:
                        if (f02.equals("context_line")) {
                            c10 = '\r';
                            break;
                        }
                        break;
                    case 1380938712:
                        if (f02.equals("function")) {
                            c10 = 14;
                            break;
                        }
                        break;
                    case 1713445842:
                        if (f02.equals("abs_path")) {
                            c10 = 15;
                            break;
                        }
                        break;
                    case 1874684019:
                        if (f02.equals("platform")) {
                            c10 = 16;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        vVar.f23496l = l2Var.T();
                        break;
                    case 1:
                        vVar.f23492h = l2Var.m0();
                        break;
                    case 2:
                        vVar.f23501q = l2Var.T();
                        break;
                    case 3:
                        vVar.f23488d = l2Var.J();
                        break;
                    case 4:
                        vVar.f23487c = l2Var.T();
                        break;
                    case 5:
                        vVar.f23494j = l2Var.m0();
                        break;
                    case 6:
                        vVar.f23499o = l2Var.T();
                        break;
                    case 7:
                        vVar.f23493i = l2Var.T();
                        break;
                    case '\b':
                        vVar.f23485a = l2Var.T();
                        break;
                    case '\t':
                        vVar.f23497m = l2Var.T();
                        break;
                    case '\n':
                        vVar.f23502r = (k5) l2Var.u0(iLogger, new k5.a());
                        break;
                    case 11:
                        vVar.f23489e = l2Var.J();
                        break;
                    case '\f':
                        vVar.f23498n = l2Var.T();
                        break;
                    case '\r':
                        vVar.f23491g = l2Var.T();
                        break;
                    case 14:
                        vVar.f23486b = l2Var.T();
                        break;
                    case 15:
                        vVar.f23490f = l2Var.T();
                        break;
                    case 16:
                        vVar.f23495k = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            vVar.A(concurrentHashMap);
            l2Var.r();
            return vVar;
        }
    }

    public void A(Map map) {
        this.f23500p = map;
    }

    public String r() {
        return this.f23487c;
    }

    public void s(String str) {
        this.f23485a = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23485a != null) {
            m2Var.k(MediaInformation.KEY_FILENAME).c(this.f23485a);
        }
        if (this.f23486b != null) {
            m2Var.k("function").c(this.f23486b);
        }
        if (this.f23487c != null) {
            m2Var.k("module").c(this.f23487c);
        }
        if (this.f23488d != null) {
            m2Var.k("lineno").f(this.f23488d);
        }
        if (this.f23489e != null) {
            m2Var.k("colno").f(this.f23489e);
        }
        if (this.f23490f != null) {
            m2Var.k("abs_path").c(this.f23490f);
        }
        if (this.f23491g != null) {
            m2Var.k("context_line").c(this.f23491g);
        }
        if (this.f23492h != null) {
            m2Var.k("in_app").h(this.f23492h);
        }
        if (this.f23493i != null) {
            m2Var.k("package").c(this.f23493i);
        }
        if (this.f23494j != null) {
            m2Var.k("native").h(this.f23494j);
        }
        if (this.f23495k != null) {
            m2Var.k("platform").c(this.f23495k);
        }
        if (this.f23496l != null) {
            m2Var.k("image_addr").c(this.f23496l);
        }
        if (this.f23497m != null) {
            m2Var.k("symbol_addr").c(this.f23497m);
        }
        if (this.f23498n != null) {
            m2Var.k("instruction_addr").c(this.f23498n);
        }
        if (this.f23501q != null) {
            m2Var.k("raw_function").c(this.f23501q);
        }
        if (this.f23499o != null) {
            m2Var.k("symbol").c(this.f23499o);
        }
        if (this.f23502r != null) {
            m2Var.k("lock").g(iLogger, this.f23502r);
        }
        Map map = this.f23500p;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23500p.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void t(String str) {
        this.f23486b = str;
    }

    public void u(Boolean bool) {
        this.f23492h = bool;
    }

    public void v(Integer num) {
        this.f23488d = num;
    }

    public void w(k5 k5Var) {
        this.f23502r = k5Var;
    }

    public void x(String str) {
        this.f23487c = str;
    }

    public void y(Boolean bool) {
        this.f23494j = bool;
    }

    public void z(String str) {
        this.f23493i = str;
    }
}
