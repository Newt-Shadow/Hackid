package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class Q7 implements ServiceComponentsInitializer {

    /* renamed from: a  reason: collision with root package name */
    public final List f18811a;

    public Q7() {
        List k10;
        k10 = yc.o.k("io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint", "io.appmetrica.analytics.apphud.internal.ApphudServiceModuleEntryPoint", "io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint");
        this.f18811a = k10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer
    public final void onCreate(Context context) {
        int r10;
        C1145ed c1145ed = C1665za.E.f21055s;
        List<String> list = this.f18811a;
        r10 = yc.p.r(list, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (String str : list) {
            arrayList.add(new F5(str));
        }
        Object[] array = arrayList.toArray(new F5[0]);
        if (array != null) {
            F5[] f5Arr = (F5[]) array;
            InterfaceC1120dd[] interfaceC1120ddArr = (InterfaceC1120dd[]) Arrays.copyOf(f5Arr, f5Arr.length);
            synchronized (c1145ed) {
                yc.t.w(c1145ed.f19594a, interfaceC1120ddArr);
            }
            C1665za.E.f21055s.a(new Se(context, "io.appmetrica.analytics.modules.ads", "lsm"));
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
    }
}
