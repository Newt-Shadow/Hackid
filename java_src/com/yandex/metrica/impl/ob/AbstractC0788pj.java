package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.telephony.CellInfo;
import com.yandex.metrica.impl.ob.C0907uj;
@TargetApi(17)
/* renamed from: com.yandex.metrica.impl.ob.pj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0788pj implements S {

    /* renamed from: a  reason: collision with root package name */
    private final String f13176a = "[" + getClass().getName() + "]";

    /* renamed from: b  reason: collision with root package name */
    private volatile Sh f13177b;

    private boolean b(CellInfo cellInfo) {
        Sh sh = this.f13177b;
        if (sh == null || !sh.f11308t) {
            return false;
        }
        return !sh.f11309u || cellInfo.isRegistered();
    }

    public void a(CellInfo cellInfo, C0907uj.a aVar) {
        b(cellInfo, aVar);
        if (b(cellInfo)) {
            c(cellInfo, aVar);
        }
    }

    protected abstract void b(CellInfo cellInfo, C0907uj.a aVar);

    protected abstract void c(CellInfo cellInfo, C0907uj.a aVar);

    @Override // com.yandex.metrica.impl.ob.S
    public void a(Sh sh) {
        this.f13177b = sh;
    }
}
