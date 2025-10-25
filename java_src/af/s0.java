package af;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class s0 implements Comparable {

    /* renamed from: b  reason: collision with root package name */
    public static final a f443b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public static final String f444c;

    /* renamed from: a  reason: collision with root package name */
    private final g f445a;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ s0 d(a aVar, File file, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return aVar.a(file, z10);
        }

        public static /* synthetic */ s0 e(a aVar, String str, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return aVar.b(str, z10);
        }

        public static /* synthetic */ s0 f(a aVar, Path path, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return aVar.c(path, z10);
        }

        public final s0 a(File file, boolean z10) {
            kotlin.jvm.internal.m.e(file, "<this>");
            String file2 = file.toString();
            kotlin.jvm.internal.m.d(file2, "toString()");
            return b(file2, z10);
        }

        public final s0 b(String str, boolean z10) {
            kotlin.jvm.internal.m.e(str, "<this>");
            return bf.d.k(str, z10);
        }

        public final s0 c(Path path, boolean z10) {
            kotlin.jvm.internal.m.e(path, "<this>");
            return b(path.toString(), z10);
        }
    }

    static {
        String separator = File.separator;
        kotlin.jvm.internal.m.d(separator, "separator");
        f444c = separator;
    }

    public s0(g bytes) {
        kotlin.jvm.internal.m.e(bytes, "bytes");
        this.f445a = bytes;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(s0 other) {
        kotlin.jvm.internal.m.e(other, "other");
        return b().compareTo(other.b());
    }

    public final g b() {
        return this.f445a;
    }

    public boolean equals(Object obj) {
        if ((obj instanceof s0) && kotlin.jvm.internal.m.a(((s0) obj).b(), b())) {
            return true;
        }
        return false;
    }

    public final s0 f() {
        int o10;
        o10 = bf.d.o(this);
        if (o10 == -1) {
            return null;
        }
        return new s0(b().E(0, o10));
    }

    public int hashCode() {
        return b().hashCode();
    }

    public final List i() {
        int o10;
        ArrayList arrayList = new ArrayList();
        o10 = bf.d.o(this);
        if (o10 == -1) {
            o10 = 0;
        } else if (o10 < b().size() && b().j(o10) == 92) {
            o10++;
        }
        int size = b().size();
        int i10 = o10;
        while (o10 < size) {
            if (b().j(o10) == 47 || b().j(o10) == 92) {
                arrayList.add(b().E(i10, o10));
                i10 = o10 + 1;
            }
            o10++;
        }
        if (i10 < b().size()) {
            arrayList.add(b().E(i10, b().size()));
        }
        return arrayList;
    }

    public final boolean j() {
        int o10;
        o10 = bf.d.o(this);
        if (o10 != -1) {
            return true;
        }
        return false;
    }

    public final String l() {
        return m().H();
    }

    public final g m() {
        int l10;
        l10 = bf.d.l(this);
        if (l10 != -1) {
            return g.F(b(), l10 + 1, 0, 2, null);
        }
        if (u() != null && b().size() == 2) {
            return g.f388e;
        }
        return b();
    }

    public final s0 n() {
        return f443b.b(toString(), true);
    }

    public final s0 o() {
        g gVar;
        g gVar2;
        g gVar3;
        boolean n10;
        int l10;
        s0 s0Var;
        g gVar4;
        g gVar5;
        g b10 = b();
        gVar = bf.d.f4749d;
        if (kotlin.jvm.internal.m.a(b10, gVar)) {
            return null;
        }
        g b11 = b();
        gVar2 = bf.d.f4746a;
        if (kotlin.jvm.internal.m.a(b11, gVar2)) {
            return null;
        }
        g b12 = b();
        gVar3 = bf.d.f4747b;
        if (!kotlin.jvm.internal.m.a(b12, gVar3)) {
            n10 = bf.d.n(this);
            if (!n10) {
                l10 = bf.d.l(this);
                if (l10 == 2 && u() != null) {
                    if (b().size() == 3) {
                        return null;
                    }
                    s0Var = new s0(g.F(b(), 0, 3, 1, null));
                } else {
                    if (l10 == 1) {
                        g b13 = b();
                        gVar5 = bf.d.f4747b;
                        if (b13.D(gVar5)) {
                            return null;
                        }
                    }
                    if (l10 == -1 && u() != null) {
                        if (b().size() == 2) {
                            return null;
                        }
                        s0Var = new s0(g.F(b(), 0, 2, 1, null));
                    } else if (l10 == -1) {
                        gVar4 = bf.d.f4749d;
                        return new s0(gVar4);
                    } else if (l10 == 0) {
                        s0Var = new s0(g.F(b(), 0, 1, 1, null));
                    } else {
                        return new s0(g.F(b(), 0, l10, 1, null));
                    }
                }
                return s0Var;
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007f, code lost:
        r9 = bf.d.m(r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final af.s0 p(af.s0 r9) {
        /*
            r8 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.m.e(r9, r0)
            af.s0 r0 = r8.f()
            af.s0 r1 = r9.f()
            boolean r0 = kotlin.jvm.internal.m.a(r0, r1)
            java.lang.String r1 = " and "
            if (r0 == 0) goto Lda
            java.util.List r0 = r8.i()
            java.util.List r2 = r9.i()
            int r3 = r0.size()
            int r4 = r2.size()
            int r3 = java.lang.Math.min(r3, r4)
            r4 = 0
            r5 = r4
        L2b:
            if (r5 >= r3) goto L3e
            java.lang.Object r6 = r0.get(r5)
            java.lang.Object r7 = r2.get(r5)
            boolean r6 = kotlin.jvm.internal.m.a(r6, r7)
            if (r6 == 0) goto L3e
            int r5 = r5 + 1
            goto L2b
        L3e:
            r6 = 1
            if (r5 != r3) goto L5d
            af.g r3 = r8.b()
            int r3 = r3.size()
            af.g r7 = r9.b()
            int r7 = r7.size()
            if (r3 != r7) goto L5d
            af.s0$a r9 = af.s0.f443b
            java.lang.String r0 = "."
            r1 = 0
            af.s0 r9 = af.s0.a.e(r9, r0, r4, r6, r1)
            goto Lb8
        L5d:
            int r3 = r2.size()
            java.util.List r3 = r2.subList(r5, r3)
            af.g r7 = bf.d.c()
            int r3 = r3.indexOf(r7)
            r7 = -1
            if (r3 != r7) goto L71
            goto L72
        L71:
            r6 = r4
        L72:
            if (r6 == 0) goto Lb9
            af.d r1 = new af.d
            r1.<init>()
            af.g r9 = bf.d.f(r9)
            if (r9 != 0) goto L8b
            af.g r9 = bf.d.f(r8)
            if (r9 != 0) goto L8b
            java.lang.String r9 = af.s0.f444c
            af.g r9 = bf.d.i(r9)
        L8b:
            int r2 = r2.size()
            r3 = r5
        L90:
            if (r3 >= r2) goto L9f
            af.g r6 = bf.d.c()
            r1.s0(r6)
            r1.s0(r9)
            int r3 = r3 + 1
            goto L90
        L9f:
            int r2 = r0.size()
        La3:
            if (r5 >= r2) goto Lb4
            java.lang.Object r3 = r0.get(r5)
            af.g r3 = (af.g) r3
            r1.s0(r3)
            r1.s0(r9)
            int r5 = r5 + 1
            goto La3
        Lb4:
            af.s0 r9 = bf.d.q(r1, r4)
        Lb8:
            return r9
        Lb9:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Impossible relative path to resolve: "
            r0.append(r2)
            r0.append(r8)
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r0.<init>(r9)
            throw r0
        Lda:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Paths of different roots cannot be relative to each other: "
            r0.append(r2)
            r0.append(r8)
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r0.<init>(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: af.s0.p(af.s0):af.s0");
    }

    public final s0 q(s0 child, boolean z10) {
        kotlin.jvm.internal.m.e(child, "child");
        return bf.d.j(this, child, z10);
    }

    public final s0 r(String child) {
        kotlin.jvm.internal.m.e(child, "child");
        return bf.d.j(this, bf.d.q(new d().g0(child), false), false);
    }

    public final File s() {
        return new File(toString());
    }

    public final Path t() {
        Path path;
        path = Paths.get(toString(), new String[0]);
        kotlin.jvm.internal.m.d(path, "get(toString())");
        return path;
    }

    public String toString() {
        return b().H();
    }

    public final Character u() {
        g gVar;
        boolean z10;
        g b10 = b();
        gVar = bf.d.f4746a;
        boolean z11 = false;
        if (g.s(b10, gVar, 0, 2, null) != -1 || b().size() < 2 || b().j(1) != 58) {
            return null;
        }
        char j10 = (char) b().j(0);
        if ('a' <= j10 && j10 < '{') {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            if ('A' <= j10 && j10 < '[') {
                z11 = true;
            }
            if (!z11) {
                return null;
            }
        }
        return Character.valueOf(j10);
    }
}
