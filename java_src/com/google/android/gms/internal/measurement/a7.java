package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class a7 extends fb implements jc {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ a7(byte[] r1) {
        /*
            r0 = this;
            com.google.android.gms.internal.measurement.d7 r1 = com.google.android.gms.internal.measurement.d7.R()
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.a7.<init>(byte[]):void");
    }

    public final String A() {
        return ((d7) this.f6392b).G();
    }

    public final a7 B(String str) {
        l();
        ((d7) this.f6392b).P(str);
        return this;
    }

    public final a7 C(String str) {
        l();
        ((d7) this.f6392b).Q(str);
        return this;
    }

    public final List t() {
        return Collections.unmodifiableList(((d7) this.f6392b).C());
    }

    public final int u() {
        return ((d7) this.f6392b).D();
    }

    public final f7 v(int i10) {
        return ((d7) this.f6392b).E(i10);
    }

    public final a7 w(int i10, e7 e7Var) {
        l();
        ((d7) this.f6392b).L(i10, (f7) e7Var.p());
        return this;
    }

    public final a7 x(e7 e7Var) {
        l();
        ((d7) this.f6392b).M((f7) e7Var.p());
        return this;
    }

    public final a7 y(Iterable iterable) {
        l();
        ((d7) this.f6392b).N(iterable);
        return this;
    }

    public final a7 z() {
        l();
        ((d7) this.f6392b).O();
        return this;
    }
}
