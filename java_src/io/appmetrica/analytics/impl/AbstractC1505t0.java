package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
/* renamed from: io.appmetrica.analytics.impl.t0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1505t0 {
    public static M6 a(Handler handler, C1480s0 c1480s0) {
        return new M6(handler, c1480s0);
    }

    public static C1645yf a(Context context, M6 m62) {
        return new C1645yf(context, m62);
    }

    public static C1598wi a(C1645yf c1645yf, Context context, ICommonExecutor iCommonExecutor) {
        C1207h0 c1207h0 = new C1207h0(context, iCommonExecutor, C1509t4.j().e());
        return new C1598wi(c1207h0, new C1653yn(new C1616xb()), new W4(c1645yf), new Uj(context, c1207h0));
    }

    public static C1676zl a(Context context, C1598wi c1598wi, Te te2, Handler handler) {
        return new C1676zl(c1598wi, new Hl(context, te2), handler);
    }

    public static C1223hg a(C1598wi c1598wi, Te te2, Handler handler) {
        return new C1223hg(c1598wi, te2, handler, te2.s());
    }

    public static C1299ki a(Context context, C1645yf c1645yf, C1598wi c1598wi, Handler handler, C1676zl c1676zl) {
        return new C1299ki(context, c1645yf, c1598wi, handler, c1676zl);
    }
}
