package v4;

import android.text.TextUtils;
import b3.e3;
import java.util.ArrayList;
import y4.e0;
/* loaded from: classes.dex */
public final class h extends m4.g {

    /* renamed from: o  reason: collision with root package name */
    private final e0 f31255o;

    /* renamed from: p  reason: collision with root package name */
    private final c f31256p;

    public h() {
        super("WebvttDecoder");
        this.f31255o = new e0();
        this.f31256p = new c();
    }

    private static int B(e0 e0Var) {
        int i10 = -1;
        int i11 = 0;
        while (i10 == -1) {
            i11 = e0Var.f();
            String r10 = e0Var.r();
            if (r10 == null) {
                i10 = 0;
            } else if ("STYLE".equals(r10)) {
                i10 = 2;
            } else if (r10.startsWith("NOTE")) {
                i10 = 1;
            } else {
                i10 = 3;
            }
        }
        e0Var.T(i11);
        return i10;
    }

    private static void C(e0 e0Var) {
        do {
        } while (!TextUtils.isEmpty(e0Var.r()));
    }

    @Override // m4.g
    protected m4.h z(byte[] bArr, int i10, boolean z10) {
        e n10;
        this.f31255o.R(bArr, i10);
        ArrayList arrayList = new ArrayList();
        try {
            i.e(this.f31255o);
            do {
            } while (!TextUtils.isEmpty(this.f31255o.r()));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int B = B(this.f31255o);
                if (B != 0) {
                    if (B == 1) {
                        C(this.f31255o);
                    } else if (B == 2) {
                        if (arrayList2.isEmpty()) {
                            this.f31255o.r();
                            arrayList.addAll(this.f31256p.d(this.f31255o));
                        } else {
                            throw new m4.j("A style block was found after the first cue.");
                        }
                    } else if (B == 3 && (n10 = f.n(this.f31255o, arrayList)) != null) {
                        arrayList2.add(n10);
                    }
                } else {
                    return new k(arrayList2);
                }
            }
        } catch (e3 e10) {
            throw new m4.j(e10);
        }
    }
}
