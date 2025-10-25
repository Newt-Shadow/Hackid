package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.concurrent.Executor;
/* renamed from: com.yandex.metrica.impl.ob.d3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0473d3 {
    public final InterfaceC0643k a(Context context, Executor executor, Executor executor2, zb.b bVar, InterfaceC0718n interfaceC0718n, InterfaceC0693m interfaceC0693m) {
        int ordinal = bVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return new C0548g3();
            }
            return new yb.h(context, executor, executor2, interfaceC0718n, interfaceC0693m, new C0519f(interfaceC0718n), new C0569h(null, 1));
        }
        return new xb.g(context, executor, executor2, new C0444c(interfaceC0718n), new C0469d(), interfaceC0693m);
    }
}
