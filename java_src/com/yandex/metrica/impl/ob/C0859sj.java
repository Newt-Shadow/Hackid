package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellInfo;
import com.yandex.metrica.impl.ob.C0907uj;
@TargetApi(17)
/* renamed from: com.yandex.metrica.impl.ob.sj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0859sj implements Lj {

    /* renamed from: a  reason: collision with root package name */
    private final C1003yj f13600a;

    /* renamed from: b  reason: collision with root package name */
    private final C0979xj f13601b;

    public C0859sj() {
        this(new C1003yj(), new C0979xj());
    }

    @Override // com.yandex.metrica.impl.ob.S
    public void a(Sh sh) {
        this.f13600a.a(sh);
    }

    C0859sj(C1003yj c1003yj, C0979xj c0979xj) {
        this.f13600a = c1003yj;
        this.f13601b = c0979xj;
    }

    @Override // com.yandex.metrica.impl.ob.Lj
    public C0907uj a(CellInfo cellInfo) {
        C0907uj.a aVar = new C0907uj.a();
        this.f13600a.a(cellInfo, aVar);
        return this.f13601b.a(new C0907uj(aVar));
    }
}
