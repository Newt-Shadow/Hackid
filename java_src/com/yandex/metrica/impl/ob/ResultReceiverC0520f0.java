package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
@SuppressLint({"ParcelCreator"})
/* renamed from: com.yandex.metrica.impl.ob.f0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class ResultReceiverC0520f0 extends ResultReceiver {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f12354b = 0;

    /* renamed from: a  reason: collision with root package name */
    private final a f12355a;

    /* renamed from: com.yandex.metrica.impl.ob.f0$a */
    /* loaded from: classes2.dex */
    public interface a {
        void a(int i10, Bundle bundle);
    }

    public ResultReceiverC0520f0(Handler handler, a aVar) {
        super(handler);
        this.f12355a = aVar;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i10, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.setClassLoader(C0541fl.class.getClassLoader());
        this.f12355a.a(i10, bundle);
    }
}
