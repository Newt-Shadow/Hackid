package i4;

import android.net.Uri;
import android.text.TextUtils;
import b3.x1;
import c3.t3;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import q3.h0;
import t3.a;
import y4.m0;
import y4.v;
/* loaded from: classes.dex */
public final class d implements h {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f17119d = {8, 13, 11, 2, 0, 1, 7};

    /* renamed from: b  reason: collision with root package name */
    private final int f17120b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f17121c;

    public d() {
        this(0, true);
    }

    private static void b(int i10, List list) {
        if (q6.e.g(f17119d, i10) != -1 && !list.contains(Integer.valueOf(i10))) {
            list.add(Integer.valueOf(i10));
        }
    }

    private g3.k d(int i10, x1 x1Var, List list, m0 m0Var) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 7) {
                        if (i10 != 8) {
                            if (i10 != 11) {
                                if (i10 != 13) {
                                    return null;
                                }
                                return new t(x1Var.f4505c, m0Var);
                            }
                            return f(this.f17120b, this.f17121c, x1Var, list, m0Var);
                        }
                        return e(m0Var, x1Var, list);
                    }
                    return new n3.f(0, 0L);
                }
                return new q3.h();
            }
            return new q3.e();
        }
        return new q3.b();
    }

    private static o3.g e(m0 m0Var, x1 x1Var, List list) {
        int i10;
        if (g(x1Var)) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        if (list == null) {
            list = Collections.emptyList();
        }
        return new o3.g(i10, m0Var, null, list);
    }

    private static h0 f(int i10, boolean z10, x1 x1Var, List list, m0 m0Var) {
        int i11 = i10 | 16;
        if (list != null) {
            i11 |= 32;
        } else if (z10) {
            list = Collections.singletonList(new x1.b().g0("application/cea-608").G());
        } else {
            list = Collections.emptyList();
        }
        String str = x1Var.f4511i;
        if (!TextUtils.isEmpty(str)) {
            if (!v.b(str, "audio/mp4a-latm")) {
                i11 |= 2;
            }
            if (!v.b(str, "video/avc")) {
                i11 |= 4;
            }
        }
        return new h0(2, m0Var, new q3.j(i11, list));
    }

    private static boolean g(x1 x1Var) {
        a.b d10;
        t3.a aVar = x1Var.f4512j;
        if (aVar == null) {
            return false;
        }
        for (int i10 = 0; i10 < aVar.e(); i10++) {
            if (aVar.d(i10) instanceof q) {
                return !((q) d10).f17240c.isEmpty();
            }
        }
        return false;
    }

    private static boolean h(g3.k kVar, g3.l lVar) {
        try {
            boolean f10 = kVar.f(lVar);
            lVar.l();
            return f10;
        } catch (EOFException unused) {
            lVar.l();
            return false;
        } catch (Throwable th) {
            lVar.l();
            throw th;
        }
    }

    @Override // i4.h
    /* renamed from: c */
    public b a(Uri uri, x1 x1Var, List list, m0 m0Var, Map map, g3.l lVar, t3 t3Var) {
        int a10 = y4.k.a(x1Var.f4514l);
        int b10 = y4.k.b(map);
        int c10 = y4.k.c(uri);
        int[] iArr = f17119d;
        ArrayList arrayList = new ArrayList(iArr.length);
        b(a10, arrayList);
        b(b10, arrayList);
        b(c10, arrayList);
        for (int i10 : iArr) {
            b(i10, arrayList);
        }
        lVar.l();
        g3.k kVar = null;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            int intValue = ((Integer) arrayList.get(i11)).intValue();
            g3.k kVar2 = (g3.k) y4.a.e(d(intValue, x1Var, list, m0Var));
            if (h(kVar2, lVar)) {
                return new b(kVar2, x1Var, m0Var);
            }
            if (kVar == null && (intValue == a10 || intValue == b10 || intValue == c10 || intValue == 11)) {
                kVar = kVar2;
            }
        }
        return new b((g3.k) y4.a.e(kVar), x1Var, m0Var);
    }

    public d(int i10, boolean z10) {
        this.f17120b = i10;
        this.f17121c = z10;
    }
}
