package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* renamed from: io.appmetrica.analytics.impl.rg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ResultReceiverC1471rg extends ResultReceiver {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC1073bg f20529a;

    public ResultReceiverC1471rg(Handler handler, InterfaceC1073bg interfaceC1073bg) {
        super(handler);
        this.f20529a = interfaceC1073bg;
    }

    public static void a(ResultReceiver resultReceiver, C1322lg c1322lg) {
        byte[] a10;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            if (c1322lg == null) {
                a10 = null;
            } else {
                a10 = c1322lg.a();
            }
            bundle.putByteArray("referrer", a10);
            resultReceiver.send(1, bundle);
        }
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i10, Bundle bundle) {
        if (i10 == 1) {
            C1322lg c1322lg = null;
            try {
                byte[] byteArray = bundle.getByteArray("referrer");
                if (byteArray != null && byteArray.length != 0) {
                    c1322lg = new C1322lg(byteArray);
                }
            } catch (Throwable unused) {
            }
            this.f20529a.a(c1322lg);
        }
    }
}
