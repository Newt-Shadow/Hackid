package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class k5 extends fb implements jc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k5(byte[] bArr) {
        super(l5.X());
    }

    public final String A() {
        return ((l5) this.f6392b).N();
    }

    public final int t() {
        return ((l5) this.f6392b).H();
    }

    public final j5 u(int i10) {
        return ((l5) this.f6392b).I(i10);
    }

    public final k5 v(int i10, i5 i5Var) {
        l();
        ((l5) this.f6392b).U(i10, (j5) i5Var.p());
        return this;
    }

    public final List w() {
        return Collections.unmodifiableList(((l5) this.f6392b).J());
    }

    public final k5 x() {
        l();
        ((l5) this.f6392b).V();
        return this;
    }

    public final k5 y() {
        l();
        ((l5) this.f6392b).W();
        return this;
    }

    public final List z() {
        return Collections.unmodifiableList(((l5) this.f6392b).M());
    }
}
