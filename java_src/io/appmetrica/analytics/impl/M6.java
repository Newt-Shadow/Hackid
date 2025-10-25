package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* loaded from: classes2.dex */
public final class M6 extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final L6 f18575a;

    public M6(Handler handler, L6 l62) {
        super(handler);
        this.f18575a = l62;
    }

    public static void a(ResultReceiver resultReceiver, C1285k4 c1285k4) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            c1285k4.b(bundle);
            resultReceiver.send(1, bundle);
        }
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.f18575a.a(i10, bundle);
    }

    public static void a(ResultReceiver resultReceiver, EnumC1551ul enumC1551ul, C1285k4 c1285k4) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("startup_error_key_code", enumC1551ul.f20753a);
            c1285k4.b(bundle);
            resultReceiver.send(2, bundle);
        }
    }
}
