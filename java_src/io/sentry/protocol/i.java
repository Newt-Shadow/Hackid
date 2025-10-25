package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
import org.apache.tika.metadata.Office;
/* loaded from: classes2.dex */
public final class i implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final transient Thread f23401a;

    /* renamed from: b  reason: collision with root package name */
    private String f23402b;

    /* renamed from: c  reason: collision with root package name */
    private String f23403c;

    /* renamed from: d  reason: collision with root package name */
    private String f23404d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f23405e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23406f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23407g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f23408h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23409i;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public i a(l2 l2Var, ILogger iLogger) {
            i iVar = new i();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1724546052:
                        if (f02.equals("description")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3076010:
                        if (f02.equals("data")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3347973:
                        if (f02.equals(Office.PREFIX_DOC_META)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 692803388:
                        if (f02.equals("handled")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 989128517:
                        if (f02.equals("synthetic")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 1297152568:
                        if (f02.equals("help_link")) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        iVar.f23403c = l2Var.T();
                        break;
                    case 1:
                        iVar.f23407g = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 2:
                        iVar.f23406f = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 3:
                        iVar.f23402b = l2Var.T();
                        break;
                    case 4:
                        iVar.f23405e = l2Var.m0();
                        break;
                    case 5:
                        iVar.f23408h = l2Var.m0();
                        break;
                    case 6:
                        iVar.f23404d = l2Var.T();
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            l2Var.r();
            iVar.k(hashMap);
            return iVar;
        }
    }

    public i() {
        this(null);
    }

    public Boolean h() {
        return this.f23405e;
    }

    public void i(Boolean bool) {
        this.f23405e = bool;
    }

    public void j(String str) {
        this.f23402b = str;
    }

    public void k(Map map) {
        this.f23409i = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23402b != null) {
            m2Var.k("type").c(this.f23402b);
        }
        if (this.f23403c != null) {
            m2Var.k("description").c(this.f23403c);
        }
        if (this.f23404d != null) {
            m2Var.k("help_link").c(this.f23404d);
        }
        if (this.f23405e != null) {
            m2Var.k("handled").h(this.f23405e);
        }
        if (this.f23406f != null) {
            m2Var.k(Office.PREFIX_DOC_META).g(iLogger, this.f23406f);
        }
        if (this.f23407g != null) {
            m2Var.k("data").g(iLogger, this.f23407g);
        }
        if (this.f23408h != null) {
            m2Var.k("synthetic").h(this.f23408h);
        }
        Map map = this.f23409i;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23409i.get(str));
            }
        }
        m2Var.r();
    }

    public i(Thread thread) {
        this.f23401a = thread;
    }
}
