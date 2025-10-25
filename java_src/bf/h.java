package bf;

import af.a1;
import af.k;
import af.s0;
import id.l;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import rd.y;
import xc.q;
import yc.w;
/* loaded from: classes2.dex */
public final class h extends k {

    /* renamed from: f  reason: collision with root package name */
    private static final a f4757f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final s0 f4758g = s0.a.e(s0.f443b, "/", false, 1, null);

    /* renamed from: e  reason: collision with root package name */
    private final xc.d f4759e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: bf.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0083a extends n implements l {

            /* renamed from: e  reason: collision with root package name */
            public static final C0083a f4760e = new C0083a();

            C0083a() {
                super(1);
            }

            @Override // id.l
            /* renamed from: a */
            public final Boolean invoke(i entry) {
                m.e(entry, "entry");
                return Boolean.valueOf(h.f4757f.c(entry.a()));
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean c(s0 s0Var) {
            boolean v10;
            v10 = y.v(s0Var.l(), ".class", true);
            return !v10;
        }

        public final s0 b() {
            return h.f4758g;
        }

        public final List d(ClassLoader classLoader) {
            List c02;
            m.e(classLoader, "<this>");
            Enumeration<URL> resources = classLoader.getResources("");
            m.d(resources, "getResources(\"\")");
            ArrayList<URL> list = Collections.list(resources);
            m.d(list, "list(this)");
            ArrayList arrayList = new ArrayList();
            for (URL it : list) {
                a aVar = h.f4757f;
                m.d(it, "it");
                xc.k e10 = aVar.e(it);
                if (e10 != null) {
                    arrayList.add(e10);
                }
            }
            Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
            m.d(resources2, "getResources(\"META-INF/MANIFEST.MF\")");
            ArrayList<URL> list2 = Collections.list(resources2);
            m.d(list2, "list(this)");
            ArrayList arrayList2 = new ArrayList();
            for (URL it2 : list2) {
                a aVar2 = h.f4757f;
                m.d(it2, "it");
                xc.k f10 = aVar2.f(it2);
                if (f10 != null) {
                    arrayList2.add(f10);
                }
            }
            c02 = w.c0(arrayList, arrayList2);
            return c02;
        }

        public final xc.k e(URL url) {
            m.e(url, "<this>");
            if (!m.a(url.getProtocol(), Constants.FILE)) {
                return null;
            }
            return q.a(k.f414b, s0.a.d(s0.f443b, new File(url.toURI()), false, 1, null));
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
            r0 = rd.b0.f0(r10, "!", 0, false, 6, null);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final xc.k f(java.net.URL r10) {
            /*
                r9 = this;
                java.lang.String r0 = "<this>"
                kotlin.jvm.internal.m.e(r10, r0)
                java.lang.String r10 = r10.toString()
                java.lang.String r0 = "toString()"
                kotlin.jvm.internal.m.d(r10, r0)
                java.lang.String r0 = "jar:file:"
                r7 = 0
                r1 = 2
                r8 = 0
                boolean r0 = rd.n.H(r10, r0, r7, r1, r8)
                if (r0 != 0) goto L1a
                return r8
            L1a:
                java.lang.String r2 = "!"
                r3 = 0
                r4 = 0
                r5 = 6
                r6 = 0
                r1 = r10
                int r0 = rd.n.f0(r1, r2, r3, r4, r5, r6)
                r1 = -1
                if (r0 != r1) goto L29
                return r8
            L29:
                af.s0$a r1 = af.s0.f443b
                java.io.File r2 = new java.io.File
                r3 = 4
                java.lang.String r10 = r10.substring(r3, r0)
                java.lang.String r0 = "this as java.lang.String…ing(startIndex, endIndex)"
                kotlin.jvm.internal.m.d(r10, r0)
                java.net.URI r10 = java.net.URI.create(r10)
                r2.<init>(r10)
                r10 = 1
                af.s0 r10 = af.s0.a.d(r1, r2, r7, r10, r8)
                af.k r0 = af.k.f414b
                bf.h$a$a r1 = bf.h.a.C0083a.f4760e
                af.d1 r10 = bf.j.d(r10, r0, r1)
                af.s0 r0 = r9.b()
                xc.k r10 = xc.q.a(r10, r0)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: bf.h.a.f(java.net.URL):xc.k");
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ClassLoader f4761e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(ClassLoader classLoader) {
            super(0);
            this.f4761e = classLoader;
        }

        @Override // id.a
        /* renamed from: b */
        public final List invoke() {
            return h.f4757f.d(this.f4761e);
        }
    }

    public h(ClassLoader classLoader, boolean z10) {
        xc.d a10;
        m.e(classLoader, "classLoader");
        a10 = xc.f.a(new b(classLoader));
        this.f4759e = a10;
        if (z10) {
            p().size();
        }
    }

    private final s0 o(s0 s0Var) {
        return f4758g.q(s0Var, true);
    }

    private final List p() {
        return (List) this.f4759e.getValue();
    }

    private final String q(s0 s0Var) {
        return o(s0Var).p(f4758g).toString();
    }

    @Override // af.k
    public void a(s0 source, s0 target) {
        m.e(source, "source");
        m.e(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // af.k
    public void d(s0 dir, boolean z10) {
        m.e(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // af.k
    public void f(s0 path, boolean z10) {
        m.e(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // af.k
    public af.j h(s0 path) {
        m.e(path, "path");
        if (!f4757f.c(path)) {
            return null;
        }
        String q10 = q(path);
        for (xc.k kVar : p()) {
            af.j h10 = ((k) kVar.a()).h(((s0) kVar.b()).r(q10));
            if (h10 != null) {
                return h10;
            }
        }
        return null;
    }

    @Override // af.k
    public af.i i(s0 file) {
        m.e(file, "file");
        if (f4757f.c(file)) {
            String q10 = q(file);
            for (xc.k kVar : p()) {
                try {
                    return ((k) kVar.a()).i(((s0) kVar.b()).r(q10));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException("file not found: " + file);
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    @Override // af.k
    public af.i k(s0 file, boolean z10, boolean z11) {
        m.e(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // af.k
    public a1 l(s0 file) {
        m.e(file, "file");
        if (f4757f.c(file)) {
            String q10 = q(file);
            for (xc.k kVar : p()) {
                try {
                    return ((k) kVar.a()).l(((s0) kVar.b()).r(q10));
                } catch (FileNotFoundException unused) {
                }
            }
            throw new FileNotFoundException("file not found: " + file);
        }
        throw new FileNotFoundException("file not found: " + file);
    }
}
