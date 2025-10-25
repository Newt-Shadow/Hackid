package o4;

import java.util.List;
import m4.g;
import m4.h;
import y4.e0;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: o  reason: collision with root package name */
    private final b f27319o;

    public a(List list) {
        super("DvbDecoder");
        e0 e0Var = new e0((byte[]) list.get(0));
        this.f27319o = new b(e0Var.M(), e0Var.M());
    }

    @Override // m4.g
    protected h z(byte[] bArr, int i10, boolean z10) {
        if (z10) {
            this.f27319o.r();
        }
        return new c(this.f27319o.b(bArr, i10));
    }
}
