package af;

import java.util.List;
import java.util.RandomAccess;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class p0 extends yc.c implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    public static final a f431d = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final g[] f432b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f433c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(long j10, d dVar, int i10, List list, int i11, int i12, List list2) {
            boolean z10;
            int i13;
            int i14;
            boolean z11;
            int i15;
            int i16;
            d dVar2;
            boolean z12;
            int i17 = i10;
            if (i11 < i12) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                for (int i18 = i11; i18 < i12; i18++) {
                    if (((g) list.get(i18)).size() >= i17) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (!z12) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                g gVar = (g) list.get(i11);
                g gVar2 = (g) list.get(i12 - 1);
                int i19 = -1;
                if (i17 == gVar.size()) {
                    int i20 = i11 + 1;
                    i13 = i20;
                    i14 = ((Number) list2.get(i11)).intValue();
                    gVar = (g) list.get(i20);
                } else {
                    i13 = i11;
                    i14 = -1;
                }
                if (gVar.j(i17) != gVar2.j(i17)) {
                    int i21 = 1;
                    for (int i22 = i13 + 1; i22 < i12; i22++) {
                        if (((g) list.get(i22 - 1)).j(i17) != ((g) list.get(i22)).j(i17)) {
                            i21++;
                        }
                    }
                    long c10 = j10 + c(dVar) + 2 + (i21 * 2);
                    dVar.K(i21);
                    dVar.K(i14);
                    for (int i23 = i13; i23 < i12; i23++) {
                        byte j11 = ((g) list.get(i23)).j(i17);
                        if (i23 == i13 || j11 != ((g) list.get(i23 - 1)).j(i17)) {
                            dVar.K(j11 & ForkServer.ERROR);
                        }
                    }
                    d dVar3 = new d();
                    while (i13 < i12) {
                        byte j12 = ((g) list.get(i13)).j(i17);
                        int i24 = i13 + 1;
                        int i25 = i24;
                        while (true) {
                            if (i25 < i12) {
                                if (j12 != ((g) list.get(i25)).j(i17)) {
                                    i15 = i25;
                                    break;
                                }
                                i25++;
                            } else {
                                i15 = i12;
                                break;
                            }
                        }
                        if (i24 == i15 && i17 + 1 == ((g) list.get(i13)).size()) {
                            dVar.K(((Number) list2.get(i13)).intValue());
                            i16 = i15;
                            dVar2 = dVar3;
                        } else {
                            dVar.K(((int) (c10 + c(dVar3))) * i19);
                            i16 = i15;
                            dVar2 = dVar3;
                            a(c10, dVar3, i17 + 1, list, i13, i15, list2);
                        }
                        dVar3 = dVar2;
                        i13 = i16;
                        i19 = -1;
                    }
                    dVar.W0(dVar3);
                    return;
                }
                int min = Math.min(gVar.size(), gVar2.size());
                int i26 = 0;
                for (int i27 = i17; i27 < min && gVar.j(i27) == gVar2.j(i27); i27++) {
                    i26++;
                }
                long c11 = j10 + c(dVar) + 2 + i26 + 1;
                dVar.K(-i26);
                dVar.K(i14);
                int i28 = i17 + i26;
                while (i17 < i28) {
                    dVar.K(gVar.j(i17) & ForkServer.ERROR);
                    i17++;
                }
                if (i13 + 1 == i12) {
                    if (i28 == ((g) list.get(i13)).size()) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        dVar.K(((Number) list2.get(i13)).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                d dVar4 = new d();
                dVar.K(((int) (c(dVar4) + c11)) * (-1));
                a(c11, dVar4, i28, list, i13, i12, list2);
                dVar.W0(dVar4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        static /* synthetic */ void b(a aVar, long j10, d dVar, int i10, List list, int i11, int i12, List list2, int i13, Object obj) {
            long j11;
            int i14;
            int i15;
            int i16;
            if ((i13 & 1) != 0) {
                j11 = 0;
            } else {
                j11 = j10;
            }
            if ((i13 & 4) != 0) {
                i14 = 0;
            } else {
                i14 = i10;
            }
            if ((i13 & 16) != 0) {
                i15 = 0;
            } else {
                i15 = i11;
            }
            if ((i13 & 32) != 0) {
                i16 = list.size();
            } else {
                i16 = i12;
            }
            aVar.a(j11, dVar, i14, list, i15, i16, list2);
        }

        private final long c(d dVar) {
            return dVar.k0() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:54:0x00e7, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final af.p0 d(af.g... r17) {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: af.p0.a.d(af.g[]):af.p0");
        }
    }

    public /* synthetic */ p0(g[] gVarArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVarArr, iArr);
    }

    @Override // yc.b, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        return m((g) obj);
    }

    @Override // yc.b
    public int i() {
        return this.f432b.length;
    }

    @Override // yc.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof g)) {
            return -1;
        }
        return r((g) obj);
    }

    @Override // yc.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof g)) {
            return -1;
        }
        return s((g) obj);
    }

    public /* bridge */ boolean m(g gVar) {
        return super.contains(gVar);
    }

    @Override // yc.c, java.util.List
    /* renamed from: n */
    public g get(int i10) {
        return this.f432b[i10];
    }

    public final g[] o() {
        return this.f432b;
    }

    public final int[] p() {
        return this.f433c;
    }

    public /* bridge */ int r(g gVar) {
        return super.indexOf(gVar);
    }

    public /* bridge */ int s(g gVar) {
        return super.lastIndexOf(gVar);
    }

    private p0(g[] gVarArr, int[] iArr) {
        this.f432b = gVarArr;
        this.f433c = iArr;
    }
}
