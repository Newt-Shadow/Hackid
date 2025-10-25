package io.appmetrica.analytics.identifiers.impl;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2.dex */
public final class p extends kotlin.jvm.internal.n implements id.l {

    /* renamed from: a  reason: collision with root package name */
    public static final p f17910a = new p();

    public p() {
        super(1);
    }

    @Override // id.l
    public final Object invoke(Object obj) {
        IBinder iBinder = (IBinder) obj;
        int i10 = t.f17914a;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.yandex.android.advid.service.YandexAdvIdInterface");
        if (queryLocalInterface != null && (queryLocalInterface instanceof u)) {
            return (u) queryLocalInterface;
        }
        return new s(iBinder);
    }
}
