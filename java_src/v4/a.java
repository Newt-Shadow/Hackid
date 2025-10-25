package v4;

import java.util.ArrayList;
import java.util.Collections;
import m4.b;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public final class a extends m4.g {

    /* renamed from: o  reason: collision with root package name */
    private final e0 f31205o;

    public a() {
        super("Mp4WebvttDecoder");
        this.f31205o = new e0();
    }

    private static m4.b B(e0 e0Var, int i10) {
        CharSequence charSequence = null;
        b.C0247b c0247b = null;
        while (i10 > 0) {
            if (i10 >= 8) {
                int p10 = e0Var.p();
                int p11 = e0Var.p();
                int i11 = p10 - 8;
                String E = q0.E(e0Var.e(), e0Var.f(), i11);
                e0Var.U(i11);
                i10 = (i10 - 8) - i11;
                if (p11 == 1937011815) {
                    c0247b = f.o(E);
                } else if (p11 == 1885436268) {
                    charSequence = f.q(null, E.trim(), Collections.emptyList());
                }
            } else {
                throw new m4.j("Incomplete vtt cue box header found.");
            }
        }
        if (charSequence == null) {
            charSequence = "";
        }
        if (c0247b != null) {
            return c0247b.o(charSequence).a();
        }
        return f.l(charSequence);
    }

    @Override // m4.g
    protected m4.h z(byte[] bArr, int i10, boolean z10) {
        this.f31205o.R(bArr, i10);
        ArrayList arrayList = new ArrayList();
        while (this.f31205o.a() > 0) {
            if (this.f31205o.a() >= 8) {
                int p10 = this.f31205o.p();
                if (this.f31205o.p() == 1987343459) {
                    arrayList.add(B(this.f31205o, p10 - 8));
                } else {
                    this.f31205o.U(p10 - 8);
                }
            } else {
                throw new m4.j("Incomplete Mp4Webvtt Top Level box header found.");
            }
        }
        return new b(arrayList);
    }
}
