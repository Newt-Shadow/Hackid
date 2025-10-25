package io.appmetrica.analytics.impl;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class T4 extends AbstractC1670zf {

    /* renamed from: a  reason: collision with root package name */
    public final S4 f18955a;

    public T4(O4 o42) {
        this.f18955a = new S4(o42);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC1670zf
    public final AbstractC1216h9 a(int i10) {
        ArrayList arrayList = new ArrayList();
        int ordinal = EnumC1367nb.a(i10).ordinal();
        if (ordinal != 12) {
            if (ordinal != 14) {
                if (ordinal == 34) {
                    arrayList.add(this.f18955a.f18921c);
                }
            } else {
                arrayList.add(this.f18955a.f18920b);
            }
        } else {
            arrayList.add(this.f18955a.f18919a);
        }
        return new C1191g9(arrayList);
    }
}
