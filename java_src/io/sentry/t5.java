package io.sentry;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.protocol.r;
import io.sentry.t3;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class t5 extends t3 implements q1 {

    /* renamed from: p  reason: collision with root package name */
    private File f23678p;

    /* renamed from: t  reason: collision with root package name */
    private int f23682t;

    /* renamed from: v  reason: collision with root package name */
    private Date f23684v;

    /* renamed from: z  reason: collision with root package name */
    private Map f23688z;

    /* renamed from: s  reason: collision with root package name */
    private io.sentry.protocol.r f23681s = new io.sentry.protocol.r();

    /* renamed from: q  reason: collision with root package name */
    private String f23679q = "replay_event";

    /* renamed from: r  reason: collision with root package name */
    private b f23680r = b.SESSION;

    /* renamed from: x  reason: collision with root package name */
    private List f23686x = new ArrayList();

    /* renamed from: y  reason: collision with root package name */
    private List f23687y = new ArrayList();

    /* renamed from: w  reason: collision with root package name */
    private List f23685w = new ArrayList();

    /* renamed from: u  reason: collision with root package name */
    private Date f23683u = j.c();

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public t5 a(l2 l2Var, ILogger iLogger) {
            t3.a aVar = new t3.a();
            t5 t5Var = new t5();
            l2Var.t();
            String str = null;
            b bVar = null;
            Integer num = null;
            Date date = null;
            HashMap hashMap = null;
            io.sentry.protocol.r rVar = null;
            Date date2 = null;
            List list = null;
            List list2 = null;
            List list3 = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -454767501:
                        if (f02.equals("replay_id")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -264026847:
                        if (f02.equals("replay_start_timestamp")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3598564:
                        if (f02.equals("urls")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 55126294:
                        if (f02.equals(Constants.TIMESTAMP)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 329864193:
                        if (f02.equals("error_ids")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 724602046:
                        if (f02.equals("trace_ids")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1055447186:
                        if (f02.equals("replay_type")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1077649831:
                        if (f02.equals("segment_id")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        rVar = (io.sentry.protocol.r) l2Var.u0(iLogger, new r.a());
                        break;
                    case 1:
                        date2 = l2Var.i0(iLogger);
                        break;
                    case 2:
                        str = l2Var.T();
                        break;
                    case 3:
                        list = (List) l2Var.B0();
                        break;
                    case 4:
                        date = l2Var.i0(iLogger);
                        break;
                    case 5:
                        list2 = (List) l2Var.B0();
                        break;
                    case 6:
                        list3 = (List) l2Var.B0();
                        break;
                    case 7:
                        bVar = (b) l2Var.u0(iLogger, new b.a());
                        break;
                    case '\b':
                        num = l2Var.J();
                        break;
                    default:
                        if (!aVar.a(t5Var, f02, l2Var, iLogger)) {
                            if (hashMap == null) {
                                hashMap = new HashMap();
                            }
                            l2Var.b0(iLogger, hashMap, f02);
                            break;
                        } else {
                            break;
                        }
                }
            }
            l2Var.r();
            if (str != null) {
                t5Var.p0(str);
            }
            if (bVar != null) {
                t5Var.l0(bVar);
            }
            if (num != null) {
                t5Var.m0(num.intValue());
            }
            if (date != null) {
                t5Var.n0(date);
            }
            t5Var.j0(rVar);
            t5Var.k0(date2);
            t5Var.r0(list);
            t5Var.i0(list2);
            t5Var.o0(list3);
            t5Var.q0(hashMap);
            return t5Var;
        }
    }

    /* loaded from: classes2.dex */
    public enum b implements q1 {
        SESSION,
        BUFFER;

        /* loaded from: classes2.dex */
        public static final class a implements g1 {
            @Override // io.sentry.g1
            /* renamed from: b */
            public b a(l2 l2Var, ILogger iLogger) {
                return b.valueOf(l2Var.C().toUpperCase(Locale.ROOT));
            }
        }

        @Override // io.sentry.q1
        public void serialize(m2 m2Var, ILogger iLogger) {
            m2Var.c(name().toLowerCase(Locale.ROOT));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t5.class != obj.getClass()) {
            return false;
        }
        t5 t5Var = (t5) obj;
        if (this.f23682t == t5Var.f23682t && io.sentry.util.q.a(this.f23679q, t5Var.f23679q) && this.f23680r == t5Var.f23680r && io.sentry.util.q.a(this.f23681s, t5Var.f23681s) && io.sentry.util.q.a(this.f23685w, t5Var.f23685w) && io.sentry.util.q.a(this.f23686x, t5Var.f23686x) && io.sentry.util.q.a(this.f23687y, t5Var.f23687y)) {
            return true;
        }
        return false;
    }

    public Date g0() {
        return this.f23683u;
    }

    public File h0() {
        return this.f23678p;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23679q, this.f23680r, this.f23681s, Integer.valueOf(this.f23682t), this.f23685w, this.f23686x, this.f23687y);
    }

    public void i0(List list) {
        this.f23686x = list;
    }

    public void j0(io.sentry.protocol.r rVar) {
        this.f23681s = rVar;
    }

    public void k0(Date date) {
        this.f23684v = date;
    }

    public void l0(b bVar) {
        this.f23680r = bVar;
    }

    public void m0(int i10) {
        this.f23682t = i10;
    }

    public void n0(Date date) {
        this.f23683u = date;
    }

    public void o0(List list) {
        this.f23687y = list;
    }

    public void p0(String str) {
        this.f23679q = str;
    }

    public void q0(Map map) {
        this.f23688z = map;
    }

    public void r0(List list) {
        this.f23685w = list;
    }

    public void s0(File file) {
        this.f23678p = file;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("type").c(this.f23679q);
        m2Var.k("replay_type").g(iLogger, this.f23680r);
        m2Var.k("segment_id").a(this.f23682t);
        m2Var.k(Constants.TIMESTAMP).g(iLogger, this.f23683u);
        if (this.f23681s != null) {
            m2Var.k("replay_id").g(iLogger, this.f23681s);
        }
        if (this.f23684v != null) {
            m2Var.k("replay_start_timestamp").g(iLogger, this.f23684v);
        }
        if (this.f23685w != null) {
            m2Var.k("urls").g(iLogger, this.f23685w);
        }
        if (this.f23686x != null) {
            m2Var.k("error_ids").g(iLogger, this.f23686x);
        }
        if (this.f23687y != null) {
            m2Var.k("trace_ids").g(iLogger, this.f23687y);
        }
        new t3.b().a(this, m2Var, iLogger);
        Map map = this.f23688z;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23688z.get(str));
            }
        }
        m2Var.r();
    }
}
