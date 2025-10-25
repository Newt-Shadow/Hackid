package l4;

import android.net.Uri;
import b3.x1;
import c4.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import o3.p;
import y4.o0;
import y4.q0;
/* loaded from: classes.dex */
public class a implements c4.a {

    /* renamed from: a  reason: collision with root package name */
    public final int f25197a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25198b;

    /* renamed from: c  reason: collision with root package name */
    public final int f25199c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f25200d;

    /* renamed from: e  reason: collision with root package name */
    public final C0240a f25201e;

    /* renamed from: f  reason: collision with root package name */
    public final b[] f25202f;

    /* renamed from: g  reason: collision with root package name */
    public final long f25203g;

    /* renamed from: h  reason: collision with root package name */
    public final long f25204h;

    /* renamed from: l4.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0240a {

        /* renamed from: a  reason: collision with root package name */
        public final UUID f25205a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f25206b;

        /* renamed from: c  reason: collision with root package name */
        public final p[] f25207c;

        public C0240a(UUID uuid, byte[] bArr, p[] pVarArr) {
            this.f25205a = uuid;
            this.f25206b = bArr;
            this.f25207c = pVarArr;
        }
    }

    public a(int i10, int i11, long j10, long j11, long j12, int i12, boolean z10, C0240a c0240a, b[] bVarArr) {
        this(i10, i11, j11 == 0 ? -9223372036854775807L : q0.M0(j11, 1000000L, j10), j12 != 0 ? q0.M0(j12, 1000000L, j10) : -9223372036854775807L, i12, z10, c0240a, bVarArr);
    }

    @Override // c4.a
    /* renamed from: b */
    public final a a(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVar = null;
        int i10 = 0;
        while (i10 < arrayList.size()) {
            c cVar = (c) arrayList.get(i10);
            b bVar2 = this.f25202f[cVar.f5032b];
            if (bVar2 != bVar && bVar != null) {
                arrayList2.add(bVar.b((x1[]) arrayList3.toArray(new x1[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f25217j[cVar.f5033c]);
            i10++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.b((x1[]) arrayList3.toArray(new x1[0])));
        }
        return new a(this.f25197a, this.f25198b, this.f25203g, this.f25204h, this.f25199c, this.f25200d, this.f25201e, (b[]) arrayList2.toArray(new b[0]));
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f25208a;

        /* renamed from: b  reason: collision with root package name */
        public final String f25209b;

        /* renamed from: c  reason: collision with root package name */
        public final long f25210c;

        /* renamed from: d  reason: collision with root package name */
        public final String f25211d;

        /* renamed from: e  reason: collision with root package name */
        public final int f25212e;

        /* renamed from: f  reason: collision with root package name */
        public final int f25213f;

        /* renamed from: g  reason: collision with root package name */
        public final int f25214g;

        /* renamed from: h  reason: collision with root package name */
        public final int f25215h;

        /* renamed from: i  reason: collision with root package name */
        public final String f25216i;

        /* renamed from: j  reason: collision with root package name */
        public final x1[] f25217j;

        /* renamed from: k  reason: collision with root package name */
        public final int f25218k;

        /* renamed from: l  reason: collision with root package name */
        private final String f25219l;

        /* renamed from: m  reason: collision with root package name */
        private final String f25220m;

        /* renamed from: n  reason: collision with root package name */
        private final List f25221n;

        /* renamed from: o  reason: collision with root package name */
        private final long[] f25222o;

        /* renamed from: p  reason: collision with root package name */
        private final long f25223p;

        public b(String str, String str2, int i10, String str3, long j10, String str4, int i11, int i12, int i13, int i14, String str5, x1[] x1VarArr, List list, long j11) {
            this(str, str2, i10, str3, j10, str4, i11, i12, i13, i14, str5, x1VarArr, list, q0.N0(list, 1000000L, j10), q0.M0(j11, 1000000L, j10));
        }

        public Uri a(int i10, int i11) {
            boolean z10;
            boolean z11;
            boolean z12 = true;
            if (this.f25217j != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            if (this.f25221n != null) {
                z11 = true;
            } else {
                z11 = false;
            }
            y4.a.f(z11);
            if (i11 >= this.f25221n.size()) {
                z12 = false;
            }
            y4.a.f(z12);
            String num = Integer.toString(this.f25217j[i10].f4510h);
            String l10 = ((Long) this.f25221n.get(i11)).toString();
            return o0.e(this.f25219l, this.f25220m.replace("{bitrate}", num).replace("{Bitrate}", num).replace("{start time}", l10).replace("{start_time}", l10));
        }

        public b b(x1[] x1VarArr) {
            return new b(this.f25219l, this.f25220m, this.f25208a, this.f25209b, this.f25210c, this.f25211d, this.f25212e, this.f25213f, this.f25214g, this.f25215h, this.f25216i, x1VarArr, this.f25221n, this.f25222o, this.f25223p);
        }

        public long c(int i10) {
            if (i10 == this.f25218k - 1) {
                return this.f25223p;
            }
            long[] jArr = this.f25222o;
            return jArr[i10 + 1] - jArr[i10];
        }

        public int d(long j10) {
            return q0.i(this.f25222o, j10, true, true);
        }

        public long e(int i10) {
            return this.f25222o[i10];
        }

        private b(String str, String str2, int i10, String str3, long j10, String str4, int i11, int i12, int i13, int i14, String str5, x1[] x1VarArr, List list, long[] jArr, long j11) {
            this.f25219l = str;
            this.f25220m = str2;
            this.f25208a = i10;
            this.f25209b = str3;
            this.f25210c = j10;
            this.f25211d = str4;
            this.f25212e = i11;
            this.f25213f = i12;
            this.f25214g = i13;
            this.f25215h = i14;
            this.f25216i = str5;
            this.f25217j = x1VarArr;
            this.f25221n = list;
            this.f25222o = jArr;
            this.f25223p = j11;
            this.f25218k = list.size();
        }
    }

    private a(int i10, int i11, long j10, long j11, int i12, boolean z10, C0240a c0240a, b[] bVarArr) {
        this.f25197a = i10;
        this.f25198b = i11;
        this.f25203g = j10;
        this.f25204h = j11;
        this.f25199c = i12;
        this.f25200d = z10;
        this.f25201e = c0240a;
        this.f25202f = bVarArr;
    }
}
