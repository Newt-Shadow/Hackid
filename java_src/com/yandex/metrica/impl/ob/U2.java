package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes2.dex */
class U2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ResultReceiverC0520f0 a(Handler handler, T2 t22) {
        return new ResultReceiverC0520f0(handler, t22);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public A3 a(Context context, ResultReceiverC0520f0 resultReceiverC0520f0) {
        return new A3(context, resultReceiverC0520f0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T1 a(A3 a32, Context context, ICommonExecutor iCommonExecutor) {
        return new T1(a32, context, new C0745o1(context, iCommonExecutor), new P6(), new C0918v6());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0588hi a(Context context, T1 t12, C0429b9 c0429b9, Handler handler) {
        return new C0588hi(context, t12, c0429b9, handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0436bg a(T1 t12, C0429b9 c0429b9, Handler handler) {
        return new C0436bg(t12, c0429b9, handler);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public R1 a(Context context, A3 a32, T1 t12, Handler handler, C0588hi c0588hi) {
        return new R1(context, a32, t12, handler, c0588hi);
    }
}
