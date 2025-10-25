package ve;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.c0;
import org.apache.tika.metadata.ClimateForcast;
import ve.h;
import xc.t;
/* loaded from: classes2.dex */
public final class f implements Closeable {
    public static final b C = new b(null);
    private static final m D;
    private final d A;
    private final Set B;

    /* renamed from: a */
    private final boolean f31474a;

    /* renamed from: b */
    private final c f31475b;

    /* renamed from: c */
    private final Map f31476c;

    /* renamed from: d */
    private final String f31477d;

    /* renamed from: e */
    private int f31478e;

    /* renamed from: f */
    private int f31479f;

    /* renamed from: g */
    private boolean f31480g;

    /* renamed from: h */
    private final re.e f31481h;

    /* renamed from: i */
    private final re.d f31482i;

    /* renamed from: j */
    private final re.d f31483j;

    /* renamed from: k */
    private final re.d f31484k;

    /* renamed from: l */
    private final ve.l f31485l;

    /* renamed from: m */
    private long f31486m;

    /* renamed from: n */
    private long f31487n;

    /* renamed from: o */
    private long f31488o;

    /* renamed from: p */
    private long f31489p;

    /* renamed from: q */
    private long f31490q;

    /* renamed from: r */
    private long f31491r;

    /* renamed from: s */
    private final m f31492s;

    /* renamed from: t */
    private m f31493t;

    /* renamed from: u */
    private long f31494u;

    /* renamed from: v */
    private long f31495v;

    /* renamed from: w */
    private long f31496w;

    /* renamed from: x */
    private long f31497x;

    /* renamed from: y */
    private final Socket f31498y;

    /* renamed from: z */
    private final ve.j f31499z;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a */
        private boolean f31500a;

        /* renamed from: b */
        private final re.e f31501b;

        /* renamed from: c */
        public Socket f31502c;

        /* renamed from: d */
        public String f31503d;

        /* renamed from: e */
        public af.f f31504e;

        /* renamed from: f */
        public af.e f31505f;

        /* renamed from: g */
        private c f31506g;

        /* renamed from: h */
        private ve.l f31507h;

        /* renamed from: i */
        private int f31508i;

        public a(boolean z10, re.e taskRunner) {
            kotlin.jvm.internal.m.e(taskRunner, "taskRunner");
            this.f31500a = z10;
            this.f31501b = taskRunner;
            this.f31506g = c.f31510b;
            this.f31507h = ve.l.f31635b;
        }

        public final f a() {
            return new f(this);
        }

        public final boolean b() {
            return this.f31500a;
        }

        public final String c() {
            String str = this.f31503d;
            if (str != null) {
                return str;
            }
            kotlin.jvm.internal.m.s("connectionName");
            return null;
        }

        public final c d() {
            return this.f31506g;
        }

        public final int e() {
            return this.f31508i;
        }

        public final ve.l f() {
            return this.f31507h;
        }

        public final af.e g() {
            af.e eVar = this.f31505f;
            if (eVar != null) {
                return eVar;
            }
            kotlin.jvm.internal.m.s("sink");
            return null;
        }

        public final Socket h() {
            Socket socket = this.f31502c;
            if (socket != null) {
                return socket;
            }
            kotlin.jvm.internal.m.s("socket");
            return null;
        }

        public final af.f i() {
            af.f fVar = this.f31504e;
            if (fVar != null) {
                return fVar;
            }
            kotlin.jvm.internal.m.s(ClimateForcast.SOURCE);
            return null;
        }

        public final re.e j() {
            return this.f31501b;
        }

        public final a k(c listener) {
            kotlin.jvm.internal.m.e(listener, "listener");
            n(listener);
            return this;
        }

        public final a l(int i10) {
            o(i10);
            return this;
        }

        public final void m(String str) {
            kotlin.jvm.internal.m.e(str, "<set-?>");
            this.f31503d = str;
        }

        public final void n(c cVar) {
            kotlin.jvm.internal.m.e(cVar, "<set-?>");
            this.f31506g = cVar;
        }

        public final void o(int i10) {
            this.f31508i = i10;
        }

        public final void p(af.e eVar) {
            kotlin.jvm.internal.m.e(eVar, "<set-?>");
            this.f31505f = eVar;
        }

        public final void q(Socket socket) {
            kotlin.jvm.internal.m.e(socket, "<set-?>");
            this.f31502c = socket;
        }

        public final void r(af.f fVar) {
            kotlin.jvm.internal.m.e(fVar, "<set-?>");
            this.f31504e = fVar;
        }

        public final a s(Socket socket, String peerName, af.f source, af.e sink) {
            String l10;
            kotlin.jvm.internal.m.e(socket, "socket");
            kotlin.jvm.internal.m.e(peerName, "peerName");
            kotlin.jvm.internal.m.e(source, "source");
            kotlin.jvm.internal.m.e(sink, "sink");
            q(socket);
            if (b()) {
                l10 = oe.d.f27590i + ' ' + peerName;
            } else {
                l10 = kotlin.jvm.internal.m.l("MockWebServer ", peerName);
            }
            m(l10);
            r(source);
            p(sink);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            return f.D;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class c {

        /* renamed from: a */
        public static final b f31509a = new b(null);

        /* renamed from: b */
        public static final c f31510b = new a();

        /* loaded from: classes2.dex */
        public static final class a extends c {
            a() {
            }

            @Override // ve.f.c
            public void b(ve.i stream) {
                kotlin.jvm.internal.m.e(stream, "stream");
                stream.d(ve.b.REFUSED_STREAM, null);
            }
        }

        /* loaded from: classes2.dex */
        public static final class b {
            private b() {
            }

            public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public void a(f connection, m settings) {
            kotlin.jvm.internal.m.e(connection, "connection");
            kotlin.jvm.internal.m.e(settings, "settings");
        }

        public abstract void b(ve.i iVar);
    }

    /* loaded from: classes2.dex */
    public final class d implements h.c, id.a {

        /* renamed from: a */
        private final ve.h f31511a;

        /* renamed from: b */
        final /* synthetic */ f f31512b;

        /* loaded from: classes2.dex */
        public static final class a extends re.a {

            /* renamed from: e */
            final /* synthetic */ String f31513e;

            /* renamed from: f */
            final /* synthetic */ boolean f31514f;

            /* renamed from: g */
            final /* synthetic */ f f31515g;

            /* renamed from: h */
            final /* synthetic */ c0 f31516h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, boolean z10, f fVar, c0 c0Var) {
                super(str, z10);
                this.f31513e = str;
                this.f31514f = z10;
                this.f31515g = fVar;
                this.f31516h = c0Var;
            }

            @Override // re.a
            public long f() {
                this.f31515g.o0().a(this.f31515g, (m) this.f31516h.f24971a);
                return -1L;
            }
        }

        /* loaded from: classes2.dex */
        public static final class b extends re.a {

            /* renamed from: e */
            final /* synthetic */ String f31517e;

            /* renamed from: f */
            final /* synthetic */ boolean f31518f;

            /* renamed from: g */
            final /* synthetic */ f f31519g;

            /* renamed from: h */
            final /* synthetic */ ve.i f31520h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, boolean z10, f fVar, ve.i iVar) {
                super(str, z10);
                this.f31517e = str;
                this.f31518f = z10;
                this.f31519g = fVar;
                this.f31520h = iVar;
            }

            @Override // re.a
            public long f() {
                try {
                    this.f31519g.o0().b(this.f31520h);
                    return -1L;
                } catch (IOException e10) {
                    we.j.f32161a.g().j(kotlin.jvm.internal.m.l("Http2Connection.Listener failure for ", this.f31519g.d0()), 4, e10);
                    try {
                        this.f31520h.d(ve.b.PROTOCOL_ERROR, e10);
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }
        }

        /* loaded from: classes2.dex */
        public static final class c extends re.a {

            /* renamed from: e */
            final /* synthetic */ String f31521e;

            /* renamed from: f */
            final /* synthetic */ boolean f31522f;

            /* renamed from: g */
            final /* synthetic */ f f31523g;

            /* renamed from: h */
            final /* synthetic */ int f31524h;

            /* renamed from: i */
            final /* synthetic */ int f31525i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(String str, boolean z10, f fVar, int i10, int i11) {
                super(str, z10);
                this.f31521e = str;
                this.f31522f = z10;
                this.f31523g = fVar;
                this.f31524h = i10;
                this.f31525i = i11;
            }

            @Override // re.a
            public long f() {
                this.f31523g.q1(true, this.f31524h, this.f31525i);
                return -1L;
            }
        }

        /* renamed from: ve.f$d$d */
        /* loaded from: classes2.dex */
        public static final class C0351d extends re.a {

            /* renamed from: e */
            final /* synthetic */ String f31526e;

            /* renamed from: f */
            final /* synthetic */ boolean f31527f;

            /* renamed from: g */
            final /* synthetic */ d f31528g;

            /* renamed from: h */
            final /* synthetic */ boolean f31529h;

            /* renamed from: i */
            final /* synthetic */ m f31530i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0351d(String str, boolean z10, d dVar, boolean z11, m mVar) {
                super(str, z10);
                this.f31526e = str;
                this.f31527f = z10;
                this.f31528g = dVar;
                this.f31529h = z11;
                this.f31530i = mVar;
            }

            @Override // re.a
            public long f() {
                this.f31528g.n(this.f31529h, this.f31530i);
                return -1L;
            }
        }

        public d(f this$0, ve.h reader) {
            kotlin.jvm.internal.m.e(this$0, "this$0");
            kotlin.jvm.internal.m.e(reader, "reader");
            this.f31512b = this$0;
            this.f31511a = reader;
        }

        @Override // ve.h.c
        public void a() {
        }

        @Override // ve.h.c
        public void b(boolean z10, int i10, int i11, List headerBlock) {
            kotlin.jvm.internal.m.e(headerBlock, "headerBlock");
            if (this.f31512b.e1(i10)) {
                this.f31512b.b1(i10, headerBlock, z10);
                return;
            }
            f fVar = this.f31512b;
            synchronized (fVar) {
                ve.i J0 = fVar.J0(i10);
                if (J0 == null) {
                    if (fVar.f31480g) {
                        return;
                    }
                    if (i10 <= fVar.k0()) {
                        return;
                    }
                    if (i10 % 2 == fVar.q0() % 2) {
                        return;
                    }
                    ve.i iVar = new ve.i(i10, fVar, false, z10, oe.d.O(headerBlock));
                    fVar.h1(i10);
                    fVar.T0().put(Integer.valueOf(i10), iVar);
                    re.d i12 = fVar.f31481h.i();
                    i12.i(new b(fVar.d0() + '[' + i10 + "] onStream", true, fVar, iVar), 0L);
                    return;
                }
                t tVar = t.f32733a;
                J0.x(oe.d.O(headerBlock), z10);
            }
        }

        @Override // ve.h.c
        public void d(int i10, long j10) {
            if (i10 == 0) {
                f fVar = this.f31512b;
                synchronized (fVar) {
                    fVar.f31497x = fVar.U0() + j10;
                    fVar.notifyAll();
                    t tVar = t.f32733a;
                }
                return;
            }
            ve.i J0 = this.f31512b.J0(i10);
            if (J0 != null) {
                synchronized (J0) {
                    J0.a(j10);
                    t tVar2 = t.f32733a;
                }
            }
        }

        @Override // ve.h.c
        public void f(boolean z10, int i10, int i11) {
            if (z10) {
                f fVar = this.f31512b;
                synchronized (fVar) {
                    if (i10 == 1) {
                        fVar.f31487n++;
                    } else if (i10 == 2) {
                        fVar.f31489p++;
                    } else {
                        if (i10 == 3) {
                            fVar.f31490q++;
                            fVar.notifyAll();
                        }
                        t tVar = t.f32733a;
                    }
                }
                return;
            }
            this.f31512b.f31482i.i(new c(kotlin.jvm.internal.m.l(this.f31512b.d0(), " ping"), true, this.f31512b, i10, i11), 0L);
        }

        @Override // ve.h.c
        public void g(int i10, ve.b errorCode) {
            kotlin.jvm.internal.m.e(errorCode, "errorCode");
            if (this.f31512b.e1(i10)) {
                this.f31512b.d1(i10, errorCode);
                return;
            }
            ve.i f12 = this.f31512b.f1(i10);
            if (f12 != null) {
                f12.y(errorCode);
            }
        }

        @Override // ve.h.c
        public void h(int i10, int i11, int i12, boolean z10) {
        }

        @Override // ve.h.c
        public void i(int i10, ve.b errorCode, af.g debugData) {
            int i11;
            Object[] array;
            kotlin.jvm.internal.m.e(errorCode, "errorCode");
            kotlin.jvm.internal.m.e(debugData, "debugData");
            debugData.size();
            f fVar = this.f31512b;
            synchronized (fVar) {
                i11 = 0;
                array = fVar.T0().values().toArray(new ve.i[0]);
                if (array != null) {
                    fVar.f31480g = true;
                    t tVar = t.f32733a;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
            }
            ve.i[] iVarArr = (ve.i[]) array;
            int length = iVarArr.length;
            while (i11 < length) {
                ve.i iVar = iVarArr[i11];
                i11++;
                if (iVar.j() > i10 && iVar.t()) {
                    iVar.y(ve.b.REFUSED_STREAM);
                    this.f31512b.f1(iVar.j());
                }
            }
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            o();
            return t.f32733a;
        }

        @Override // ve.h.c
        public void k(boolean z10, m settings) {
            kotlin.jvm.internal.m.e(settings, "settings");
            this.f31512b.f31482i.i(new C0351d(kotlin.jvm.internal.m.l(this.f31512b.d0(), " applyAndAckSettings"), true, this, z10, settings), 0L);
        }

        @Override // ve.h.c
        public void l(int i10, int i11, List requestHeaders) {
            kotlin.jvm.internal.m.e(requestHeaders, "requestHeaders");
            this.f31512b.c1(i11, requestHeaders);
        }

        @Override // ve.h.c
        public void m(boolean z10, int i10, af.f source, int i11) {
            kotlin.jvm.internal.m.e(source, "source");
            if (this.f31512b.e1(i10)) {
                this.f31512b.a1(i10, source, i11, z10);
                return;
            }
            ve.i J0 = this.f31512b.J0(i10);
            if (J0 == null) {
                this.f31512b.s1(i10, ve.b.PROTOCOL_ERROR);
                long j10 = i11;
                this.f31512b.n1(j10);
                source.skip(j10);
                return;
            }
            J0.w(source, i11);
            if (z10) {
                J0.x(oe.d.f27583b, true);
            }
        }

        public final void n(boolean z10, m settings) {
            long c10;
            int i10;
            ve.i[] iVarArr;
            kotlin.jvm.internal.m.e(settings, "settings");
            c0 c0Var = new c0();
            ve.j W0 = this.f31512b.W0();
            f fVar = this.f31512b;
            synchronized (W0) {
                synchronized (fVar) {
                    m A0 = fVar.A0();
                    if (!z10) {
                        m mVar = new m();
                        mVar.g(A0);
                        mVar.g(settings);
                        settings = mVar;
                    }
                    c0Var.f24971a = settings;
                    c10 = settings.c() - A0.c();
                    i10 = 0;
                    if (c10 != 0 && !fVar.T0().isEmpty()) {
                        Object[] array = fVar.T0().values().toArray(new ve.i[0]);
                        if (array != null) {
                            iVarArr = (ve.i[]) array;
                            fVar.j1((m) c0Var.f24971a);
                            fVar.f31484k.i(new a(kotlin.jvm.internal.m.l(fVar.d0(), " onSettings"), true, fVar, c0Var), 0L);
                            t tVar = t.f32733a;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        }
                    }
                    iVarArr = null;
                    fVar.j1((m) c0Var.f24971a);
                    fVar.f31484k.i(new a(kotlin.jvm.internal.m.l(fVar.d0(), " onSettings"), true, fVar, c0Var), 0L);
                    t tVar2 = t.f32733a;
                }
                try {
                    fVar.W0().a((m) c0Var.f24971a);
                } catch (IOException e10) {
                    fVar.W(e10);
                }
                t tVar3 = t.f32733a;
            }
            if (iVarArr != null) {
                int length = iVarArr.length;
                while (i10 < length) {
                    ve.i iVar = iVarArr[i10];
                    i10++;
                    synchronized (iVar) {
                        iVar.a(c10);
                        t tVar4 = t.f32733a;
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [ve.b] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable, ve.h] */
        public void o() {
            ve.b bVar;
            ve.b bVar2 = ve.b.INTERNAL_ERROR;
            IOException e10 = null;
            try {
                try {
                    this.f31511a.c(this);
                    while (this.f31511a.b(false, this)) {
                    }
                    ve.b bVar3 = ve.b.NO_ERROR;
                    try {
                        this.f31512b.P(bVar3, ve.b.CANCEL, null);
                        bVar = bVar3;
                    } catch (IOException e11) {
                        e10 = e11;
                        ve.b bVar4 = ve.b.PROTOCOL_ERROR;
                        f fVar = this.f31512b;
                        fVar.P(bVar4, bVar4, e10);
                        bVar = fVar;
                        bVar2 = this.f31511a;
                        oe.d.l(bVar2);
                    }
                } catch (Throwable th) {
                    th = th;
                    this.f31512b.P(bVar, bVar2, e10);
                    oe.d.l(this.f31511a);
                    throw th;
                }
            } catch (IOException e12) {
                e10 = e12;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                this.f31512b.P(bVar, bVar2, e10);
                oe.d.l(this.f31511a);
                throw th;
            }
            bVar2 = this.f31511a;
            oe.d.l(bVar2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class e extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31531e;

        /* renamed from: f */
        final /* synthetic */ boolean f31532f;

        /* renamed from: g */
        final /* synthetic */ f f31533g;

        /* renamed from: h */
        final /* synthetic */ int f31534h;

        /* renamed from: i */
        final /* synthetic */ af.d f31535i;

        /* renamed from: j */
        final /* synthetic */ int f31536j;

        /* renamed from: k */
        final /* synthetic */ boolean f31537k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, boolean z10, f fVar, int i10, af.d dVar, int i11, boolean z11) {
            super(str, z10);
            this.f31531e = str;
            this.f31532f = z10;
            this.f31533g = fVar;
            this.f31534h = i10;
            this.f31535i = dVar;
            this.f31536j = i11;
            this.f31537k = z11;
        }

        @Override // re.a
        public long f() {
            try {
                boolean d10 = this.f31533g.f31485l.d(this.f31534h, this.f31535i, this.f31536j, this.f31537k);
                if (d10) {
                    this.f31533g.W0().s(this.f31534h, ve.b.CANCEL);
                }
                if (d10 || this.f31537k) {
                    synchronized (this.f31533g) {
                        this.f31533g.B.remove(Integer.valueOf(this.f31534h));
                    }
                    return -1L;
                }
                return -1L;
            } catch (IOException unused) {
                return -1L;
            }
        }
    }

    /* renamed from: ve.f$f */
    /* loaded from: classes2.dex */
    public static final class C0352f extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31538e;

        /* renamed from: f */
        final /* synthetic */ boolean f31539f;

        /* renamed from: g */
        final /* synthetic */ f f31540g;

        /* renamed from: h */
        final /* synthetic */ int f31541h;

        /* renamed from: i */
        final /* synthetic */ List f31542i;

        /* renamed from: j */
        final /* synthetic */ boolean f31543j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0352f(String str, boolean z10, f fVar, int i10, List list, boolean z11) {
            super(str, z10);
            this.f31538e = str;
            this.f31539f = z10;
            this.f31540g = fVar;
            this.f31541h = i10;
            this.f31542i = list;
            this.f31543j = z11;
        }

        @Override // re.a
        public long f() {
            boolean c10 = this.f31540g.f31485l.c(this.f31541h, this.f31542i, this.f31543j);
            if (c10) {
                try {
                    this.f31540g.W0().s(this.f31541h, ve.b.CANCEL);
                } catch (IOException unused) {
                    return -1L;
                }
            }
            if (c10 || this.f31543j) {
                synchronized (this.f31540g) {
                    this.f31540g.B.remove(Integer.valueOf(this.f31541h));
                }
                return -1L;
            }
            return -1L;
        }
    }

    /* loaded from: classes2.dex */
    public static final class g extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31544e;

        /* renamed from: f */
        final /* synthetic */ boolean f31545f;

        /* renamed from: g */
        final /* synthetic */ f f31546g;

        /* renamed from: h */
        final /* synthetic */ int f31547h;

        /* renamed from: i */
        final /* synthetic */ List f31548i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, boolean z10, f fVar, int i10, List list) {
            super(str, z10);
            this.f31544e = str;
            this.f31545f = z10;
            this.f31546g = fVar;
            this.f31547h = i10;
            this.f31548i = list;
        }

        @Override // re.a
        public long f() {
            if (this.f31546g.f31485l.b(this.f31547h, this.f31548i)) {
                try {
                    this.f31546g.W0().s(this.f31547h, ve.b.CANCEL);
                    synchronized (this.f31546g) {
                        this.f31546g.B.remove(Integer.valueOf(this.f31547h));
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            }
            return -1L;
        }
    }

    /* loaded from: classes2.dex */
    public static final class h extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31549e;

        /* renamed from: f */
        final /* synthetic */ boolean f31550f;

        /* renamed from: g */
        final /* synthetic */ f f31551g;

        /* renamed from: h */
        final /* synthetic */ int f31552h;

        /* renamed from: i */
        final /* synthetic */ ve.b f31553i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, boolean z10, f fVar, int i10, ve.b bVar) {
            super(str, z10);
            this.f31549e = str;
            this.f31550f = z10;
            this.f31551g = fVar;
            this.f31552h = i10;
            this.f31553i = bVar;
        }

        @Override // re.a
        public long f() {
            this.f31551g.f31485l.a(this.f31552h, this.f31553i);
            synchronized (this.f31551g) {
                this.f31551g.B.remove(Integer.valueOf(this.f31552h));
                t tVar = t.f32733a;
            }
            return -1L;
        }
    }

    /* loaded from: classes2.dex */
    public static final class i extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31554e;

        /* renamed from: f */
        final /* synthetic */ boolean f31555f;

        /* renamed from: g */
        final /* synthetic */ f f31556g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, boolean z10, f fVar) {
            super(str, z10);
            this.f31554e = str;
            this.f31555f = z10;
            this.f31556g = fVar;
        }

        @Override // re.a
        public long f() {
            this.f31556g.q1(false, 2, 0);
            return -1L;
        }
    }

    /* loaded from: classes2.dex */
    public static final class j extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31557e;

        /* renamed from: f */
        final /* synthetic */ f f31558f;

        /* renamed from: g */
        final /* synthetic */ long f31559g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(String str, f fVar, long j10) {
            super(str, false, 2, null);
            this.f31557e = str;
            this.f31558f = fVar;
            this.f31559g = j10;
        }

        @Override // re.a
        public long f() {
            boolean z10;
            synchronized (this.f31558f) {
                if (this.f31558f.f31487n >= this.f31558f.f31486m) {
                    this.f31558f.f31486m++;
                    z10 = false;
                } else {
                    z10 = true;
                }
            }
            if (z10) {
                this.f31558f.W(null);
                return -1L;
            }
            this.f31558f.q1(false, 1, 0);
            return this.f31559g;
        }
    }

    /* loaded from: classes2.dex */
    public static final class k extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31560e;

        /* renamed from: f */
        final /* synthetic */ boolean f31561f;

        /* renamed from: g */
        final /* synthetic */ f f31562g;

        /* renamed from: h */
        final /* synthetic */ int f31563h;

        /* renamed from: i */
        final /* synthetic */ ve.b f31564i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, boolean z10, f fVar, int i10, ve.b bVar) {
            super(str, z10);
            this.f31560e = str;
            this.f31561f = z10;
            this.f31562g = fVar;
            this.f31563h = i10;
            this.f31564i = bVar;
        }

        @Override // re.a
        public long f() {
            try {
                this.f31562g.r1(this.f31563h, this.f31564i);
                return -1L;
            } catch (IOException e10) {
                this.f31562g.W(e10);
                return -1L;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class l extends re.a {

        /* renamed from: e */
        final /* synthetic */ String f31565e;

        /* renamed from: f */
        final /* synthetic */ boolean f31566f;

        /* renamed from: g */
        final /* synthetic */ f f31567g;

        /* renamed from: h */
        final /* synthetic */ int f31568h;

        /* renamed from: i */
        final /* synthetic */ long f31569i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, boolean z10, f fVar, int i10, long j10) {
            super(str, z10);
            this.f31565e = str;
            this.f31566f = z10;
            this.f31567g = fVar;
            this.f31568h = i10;
            this.f31569i = j10;
        }

        @Override // re.a
        public long f() {
            try {
                this.f31567g.W0().v(this.f31568h, this.f31569i);
                return -1L;
            } catch (IOException e10) {
                this.f31567g.W(e10);
                return -1L;
            }
        }
    }

    static {
        m mVar = new m();
        mVar.h(7, 65535);
        mVar.h(5, 16384);
        D = mVar;
    }

    public f(a builder) {
        int i10;
        kotlin.jvm.internal.m.e(builder, "builder");
        boolean b10 = builder.b();
        this.f31474a = b10;
        this.f31475b = builder.d();
        this.f31476c = new LinkedHashMap();
        String c10 = builder.c();
        this.f31477d = c10;
        if (builder.b()) {
            i10 = 3;
        } else {
            i10 = 2;
        }
        this.f31479f = i10;
        re.e j10 = builder.j();
        this.f31481h = j10;
        re.d i11 = j10.i();
        this.f31482i = i11;
        this.f31483j = j10.i();
        this.f31484k = j10.i();
        this.f31485l = builder.f();
        m mVar = new m();
        if (builder.b()) {
            mVar.h(7, 16777216);
        }
        this.f31492s = mVar;
        m mVar2 = D;
        this.f31493t = mVar2;
        this.f31497x = mVar2.c();
        this.f31498y = builder.h();
        this.f31499z = new ve.j(builder.g(), b10);
        this.A = new d(this, new ve.h(builder.i(), b10));
        this.B = new LinkedHashSet();
        if (builder.e() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(builder.e());
            i11.i(new j(kotlin.jvm.internal.m.l(c10, " ping"), this, nanos), nanos);
        }
    }

    public final void W(IOException iOException) {
        ve.b bVar = ve.b.PROTOCOL_ERROR;
        P(bVar, bVar, iOException);
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0055 A[Catch: all -> 0x0096, TryCatch #1 {, blocks: (B:48:0x0006, B:67:0x0062, B:69:0x0065, B:70:0x006d, B:72:0x0074, B:77:0x0084, B:78:0x008f, B:49:0x0007, B:51:0x0010, B:52:0x0015, B:54:0x0019, B:56:0x0033, B:58:0x003f, B:63:0x004f, B:65:0x0055, B:66:0x0060, B:79:0x0090, B:80:0x0095), top: B:87:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final ve.i Y0(int r11, java.util.List r12, boolean r13) {
        /*
            r10 = this;
            r6 = r13 ^ 1
            r4 = 0
            ve.j r7 = r10.f31499z
            monitor-enter(r7)
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L99
            int r0 = r10.q0()     // Catch: java.lang.Throwable -> L96
            r1 = 1073741823(0x3fffffff, float:1.9999999)
            if (r0 <= r1) goto L15
            ve.b r0 = ve.b.REFUSED_STREAM     // Catch: java.lang.Throwable -> L96
            r10.k1(r0)     // Catch: java.lang.Throwable -> L96
        L15:
            boolean r0 = r10.f31480g     // Catch: java.lang.Throwable -> L96
            if (r0 != 0) goto L90
            int r8 = r10.q0()     // Catch: java.lang.Throwable -> L96
            int r0 = r10.q0()     // Catch: java.lang.Throwable -> L96
            int r0 = r0 + 2
            r10.i1(r0)     // Catch: java.lang.Throwable -> L96
            ve.i r9 = new ve.i     // Catch: java.lang.Throwable -> L96
            r5 = 0
            r0 = r9
            r1 = r8
            r2 = r10
            r3 = r6
            r0.<init>(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L96
            r0 = 1
            if (r13 == 0) goto L4e
            long r1 = r10.V0()     // Catch: java.lang.Throwable -> L96
            long r3 = r10.U0()     // Catch: java.lang.Throwable -> L96
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 >= 0) goto L4e
            long r1 = r9.r()     // Catch: java.lang.Throwable -> L96
            long r3 = r9.q()     // Catch: java.lang.Throwable -> L96
            int r13 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r13 < 0) goto L4c
            goto L4e
        L4c:
            r13 = 0
            goto L4f
        L4e:
            r13 = r0
        L4f:
            boolean r1 = r9.u()     // Catch: java.lang.Throwable -> L96
            if (r1 == 0) goto L60
            java.util.Map r1 = r10.T0()     // Catch: java.lang.Throwable -> L96
            java.lang.Integer r2 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L96
            r1.put(r2, r9)     // Catch: java.lang.Throwable -> L96
        L60:
            xc.t r1 = xc.t.f32733a     // Catch: java.lang.Throwable -> L96
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L99
            if (r11 != 0) goto L6d
            ve.j r11 = r10.W0()     // Catch: java.lang.Throwable -> L99
            r11.h(r6, r8, r12)     // Catch: java.lang.Throwable -> L99
            goto L7b
        L6d:
            boolean r1 = r10.X()     // Catch: java.lang.Throwable -> L99
            r0 = r0 ^ r1
            if (r0 == 0) goto L84
            ve.j r0 = r10.W0()     // Catch: java.lang.Throwable -> L99
            r0.q(r11, r8, r12)     // Catch: java.lang.Throwable -> L99
        L7b:
            monitor-exit(r7)
            if (r13 == 0) goto L83
            ve.j r11 = r10.f31499z
            r11.flush()
        L83:
            return r9
        L84:
            java.lang.String r11 = "client streams shouldn't have associated stream IDs"
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L99
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> L99
            r12.<init>(r11)     // Catch: java.lang.Throwable -> L99
            throw r12     // Catch: java.lang.Throwable -> L99
        L90:
            ve.a r11 = new ve.a     // Catch: java.lang.Throwable -> L96
            r11.<init>()     // Catch: java.lang.Throwable -> L96
            throw r11     // Catch: java.lang.Throwable -> L96
        L96:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L99
            throw r11     // Catch: java.lang.Throwable -> L99
        L99:
            r11 = move-exception
            monitor-exit(r7)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: ve.f.Y0(int, java.util.List, boolean):ve.i");
    }

    public static /* synthetic */ void m1(f fVar, boolean z10, re.e eVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            eVar = re.e.f29139i;
        }
        fVar.l1(z10, eVar);
    }

    public final m A0() {
        return this.f31493t;
    }

    public final Socket D0() {
        return this.f31498y;
    }

    public final synchronized ve.i J0(int i10) {
        return (ve.i) this.f31476c.get(Integer.valueOf(i10));
    }

    public final void P(ve.b connectionCode, ve.b streamCode, IOException iOException) {
        int i10;
        Object[] objArr;
        kotlin.jvm.internal.m.e(connectionCode, "connectionCode");
        kotlin.jvm.internal.m.e(streamCode, "streamCode");
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        try {
            k1(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (!T0().isEmpty()) {
                objArr = T0().values().toArray(new ve.i[0]);
                if (objArr != null) {
                    T0().clear();
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
            } else {
                objArr = null;
            }
            t tVar = t.f32733a;
        }
        ve.i[] iVarArr = (ve.i[]) objArr;
        if (iVarArr != null) {
            for (ve.i iVar : iVarArr) {
                try {
                    iVar.d(streamCode, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            W0().close();
        } catch (IOException unused3) {
        }
        try {
            D0().close();
        } catch (IOException unused4) {
        }
        this.f31482i.o();
        this.f31483j.o();
        this.f31484k.o();
    }

    public final Map T0() {
        return this.f31476c;
    }

    public final long U0() {
        return this.f31497x;
    }

    public final long V0() {
        return this.f31496w;
    }

    public final ve.j W0() {
        return this.f31499z;
    }

    public final boolean X() {
        return this.f31474a;
    }

    public final synchronized boolean X0(long j10) {
        if (this.f31480g) {
            return false;
        }
        if (this.f31489p < this.f31488o) {
            if (j10 >= this.f31491r) {
                return false;
            }
        }
        return true;
    }

    public final ve.i Z0(List requestHeaders, boolean z10) {
        kotlin.jvm.internal.m.e(requestHeaders, "requestHeaders");
        return Y0(0, requestHeaders, z10);
    }

    public final void a1(int i10, af.f source, int i11, boolean z10) {
        kotlin.jvm.internal.m.e(source, "source");
        af.d dVar = new af.d();
        long j10 = i11;
        source.O0(j10);
        source.L0(dVar, j10);
        this.f31483j.i(new e(this.f31477d + '[' + i10 + "] onData", true, this, i10, dVar, i11, z10), 0L);
    }

    public final void b1(int i10, List requestHeaders, boolean z10) {
        kotlin.jvm.internal.m.e(requestHeaders, "requestHeaders");
        re.d dVar = this.f31483j;
        dVar.i(new C0352f(this.f31477d + '[' + i10 + "] onHeaders", true, this, i10, requestHeaders, z10), 0L);
    }

    public final void c1(int i10, List requestHeaders) {
        kotlin.jvm.internal.m.e(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.B.contains(Integer.valueOf(i10))) {
                s1(i10, ve.b.PROTOCOL_ERROR);
                return;
            }
            this.B.add(Integer.valueOf(i10));
            re.d dVar = this.f31483j;
            dVar.i(new g(this.f31477d + '[' + i10 + "] onRequest", true, this, i10, requestHeaders), 0L);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        P(ve.b.NO_ERROR, ve.b.CANCEL, null);
    }

    public final String d0() {
        return this.f31477d;
    }

    public final void d1(int i10, ve.b errorCode) {
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        re.d dVar = this.f31483j;
        dVar.i(new h(this.f31477d + '[' + i10 + "] onReset", true, this, i10, errorCode), 0L);
    }

    public final boolean e1(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    public final synchronized ve.i f1(int i10) {
        ve.i iVar;
        iVar = (ve.i) this.f31476c.remove(Integer.valueOf(i10));
        notifyAll();
        return iVar;
    }

    public final void flush() {
        this.f31499z.flush();
    }

    public final void g1() {
        synchronized (this) {
            long j10 = this.f31489p;
            long j11 = this.f31488o;
            if (j10 < j11) {
                return;
            }
            this.f31488o = j11 + 1;
            this.f31491r = System.nanoTime() + 1000000000;
            t tVar = t.f32733a;
            this.f31482i.i(new i(kotlin.jvm.internal.m.l(this.f31477d, " ping"), true, this), 0L);
        }
    }

    public final void h1(int i10) {
        this.f31478e = i10;
    }

    public final void i1(int i10) {
        this.f31479f = i10;
    }

    public final void j1(m mVar) {
        kotlin.jvm.internal.m.e(mVar, "<set-?>");
        this.f31493t = mVar;
    }

    public final int k0() {
        return this.f31478e;
    }

    public final void k1(ve.b statusCode) {
        kotlin.jvm.internal.m.e(statusCode, "statusCode");
        synchronized (this.f31499z) {
            a0 a0Var = new a0();
            synchronized (this) {
                if (this.f31480g) {
                    return;
                }
                this.f31480g = true;
                a0Var.f24967a = k0();
                t tVar = t.f32733a;
                W0().g(a0Var.f24967a, statusCode, oe.d.f27582a);
            }
        }
    }

    public final void l1(boolean z10, re.e taskRunner) {
        kotlin.jvm.internal.m.e(taskRunner, "taskRunner");
        if (z10) {
            this.f31499z.b();
            this.f31499z.u(this.f31492s);
            int c10 = this.f31492s.c();
            if (c10 != 65535) {
                this.f31499z.v(0, c10 - 65535);
            }
        }
        taskRunner.i().i(new re.c(this.f31477d, true, this.A), 0L);
    }

    public final synchronized void n1(long j10) {
        long j11 = this.f31494u + j10;
        this.f31494u = j11;
        long j12 = j11 - this.f31495v;
        if (j12 >= this.f31492s.c() / 2) {
            t1(0, j12);
            this.f31495v += j12;
        }
    }

    public final c o0() {
        return this.f31475b;
    }

    public final void o1(int i10, boolean z10, af.d dVar, long j10) {
        int min;
        long j11;
        boolean z11;
        if (j10 == 0) {
            this.f31499z.c(z10, i10, dVar, 0);
            return;
        }
        while (j10 > 0) {
            synchronized (this) {
                while (V0() >= U0()) {
                    try {
                        if (T0().containsKey(Integer.valueOf(i10))) {
                            wait();
                        } else {
                            throw new IOException("stream closed");
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                }
                min = Math.min((int) Math.min(j10, U0() - V0()), W0().j());
                j11 = min;
                this.f31496w = V0() + j11;
                t tVar = t.f32733a;
            }
            j10 -= j11;
            ve.j jVar = this.f31499z;
            if (z10 && j10 == 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            jVar.c(z11, i10, dVar, min);
        }
    }

    public final void p1(int i10, boolean z10, List alternating) {
        kotlin.jvm.internal.m.e(alternating, "alternating");
        this.f31499z.h(z10, i10, alternating);
    }

    public final int q0() {
        return this.f31479f;
    }

    public final void q1(boolean z10, int i10, int i11) {
        try {
            this.f31499z.k(z10, i10, i11);
        } catch (IOException e10) {
            W(e10);
        }
    }

    public final void r1(int i10, ve.b statusCode) {
        kotlin.jvm.internal.m.e(statusCode, "statusCode");
        this.f31499z.s(i10, statusCode);
    }

    public final void s1(int i10, ve.b errorCode) {
        kotlin.jvm.internal.m.e(errorCode, "errorCode");
        re.d dVar = this.f31482i;
        dVar.i(new k(this.f31477d + '[' + i10 + "] writeSynReset", true, this, i10, errorCode), 0L);
    }

    public final m t0() {
        return this.f31492s;
    }

    public final void t1(int i10, long j10) {
        re.d dVar = this.f31482i;
        dVar.i(new l(this.f31477d + '[' + i10 + "] windowUpdate", true, this, i10, j10), 0L);
    }
}
