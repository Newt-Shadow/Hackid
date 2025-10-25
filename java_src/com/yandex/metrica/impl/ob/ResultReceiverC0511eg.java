package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
/* renamed from: com.yandex.metrica.impl.ob.eg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class ResultReceiverC0511eg extends ResultReceiver {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f12331b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0461cg f12332a;

    public ResultReceiverC0511eg(Handler handler, InterfaceC0461cg interfaceC0461cg) {
        super(handler);
        this.f12332a = interfaceC0461cg;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i10, Bundle bundle) {
        C0486dg c0486dg;
        if (i10 == 1) {
            try {
                c0486dg = C0486dg.a(bundle.getByteArray("referrer"));
            } catch (Throwable unused) {
                c0486dg = null;
            }
            this.f12332a.a(c0486dg);
        }
    }
}
