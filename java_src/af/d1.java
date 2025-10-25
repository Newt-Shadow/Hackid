package af;

import af.s0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class d1 extends k {

    /* renamed from: i  reason: collision with root package name */
    private static final a f381i = new a(null);

    /* renamed from: j  reason: collision with root package name */
    private static final s0 f382j = s0.a.e(s0.f443b, "/", false, 1, null);

    /* renamed from: e  reason: collision with root package name */
    private final s0 f383e;

    /* renamed from: f  reason: collision with root package name */
    private final k f384f;

    /* renamed from: g  reason: collision with root package name */
    private final Map f385g;

    /* renamed from: h  reason: collision with root package name */
    private final String f386h;

    /* loaded from: classes2.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public d1(s0 zipPath, k fileSystem, Map entries, String str) {
        kotlin.jvm.internal.m.e(zipPath, "zipPath");
        kotlin.jvm.internal.m.e(fileSystem, "fileSystem");
        kotlin.jvm.internal.m.e(entries, "entries");
        this.f383e = zipPath;
        this.f384f = fileSystem;
        this.f385g = entries;
        this.f386h = str;
    }

    private final s0 m(s0 s0Var) {
        return f382j.q(s0Var, true);
    }

    @Override // af.k
    public void a(s0 source, s0 target) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // af.k
    public void d(s0 dir, boolean z10) {
        kotlin.jvm.internal.m.e(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // af.k
    public void f(s0 path, boolean z10) {
        kotlin.jvm.internal.m.e(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // af.k
    public j h(s0 path) {
        Long valueOf;
        f fVar;
        kotlin.jvm.internal.m.e(path, "path");
        bf.i iVar = (bf.i) this.f385g.get(m(path));
        Throwable th = null;
        if (iVar == null) {
            return null;
        }
        boolean z10 = !iVar.h();
        boolean h10 = iVar.h();
        if (iVar.h()) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(iVar.g());
        }
        j jVar = new j(z10, h10, null, valueOf, null, iVar.e(), null, null, 128, null);
        if (iVar.f() == -1) {
            return jVar;
        }
        i i10 = this.f384f.i(this.f383e);
        try {
            fVar = m0.b(i10.z(iVar.f()));
            if (i10 != null) {
                try {
                    i10.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (i10 != null) {
                try {
                    i10.close();
                } catch (Throwable th4) {
                    xc.b.a(th3, th4);
                }
            }
            th = th3;
            fVar = null;
        }
        if (th == null) {
            kotlin.jvm.internal.m.b(fVar);
            return bf.j.h(fVar, jVar);
        }
        throw th;
    }

    @Override // af.k
    public i i(s0 file) {
        kotlin.jvm.internal.m.e(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // af.k
    public i k(s0 file, boolean z10, boolean z11) {
        kotlin.jvm.internal.m.e(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // af.k
    public a1 l(s0 file) {
        f fVar;
        kotlin.jvm.internal.m.e(file, "file");
        bf.i iVar = (bf.i) this.f385g.get(m(file));
        if (iVar != null) {
            i i10 = this.f384f.i(this.f383e);
            Throwable th = null;
            try {
                fVar = m0.b(i10.z(iVar.f()));
                if (i10 != null) {
                    try {
                        i10.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                if (i10 != null) {
                    try {
                        i10.close();
                    } catch (Throwable th4) {
                        xc.b.a(th3, th4);
                    }
                }
                fVar = null;
                th = th3;
            }
            if (th == null) {
                kotlin.jvm.internal.m.b(fVar);
                bf.j.k(fVar);
                if (iVar.d() == 0) {
                    return new bf.g(fVar, iVar.g(), true);
                }
                return new bf.g(new q(new bf.g(fVar, iVar.c(), true), new Inflater(true)), iVar.g(), false);
            }
            throw th;
        }
        throw new FileNotFoundException("no such file: " + file);
    }
}
