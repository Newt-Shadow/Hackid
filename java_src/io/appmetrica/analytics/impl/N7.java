package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.clientcomponents.ClientComponentsInitializer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class N7 implements ClientComponentsInitializer {

    /* renamed from: a  reason: collision with root package name */
    public final List f18636a;

    public N7() {
        List k10;
        k10 = yc.o.k("io.appmetrica.analytics.adrevenue.admob.v23.internal.AdMobClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.applovin.v12.internal.AppLovinClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.fyber.v3.internal.FyberClientModuleEntryPoint", "io.appmetrica.analytics.adrevenue.ironsource.v7.internal.IronSourceClientModuleEntryPoint", "io.appmetrica.analytics.apphud.internal.ApphudClientModuleEntryPoint", "io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint", "io.appmetrica.analytics.reporterextension.internal.ReporterExtensionClientModuleEntryPoint");
        this.f18636a = k10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.clientcomponents.ClientComponentsInitializer
    public final void onCreate() {
        int r10;
        if (C1509t4.j().f20618a.c()) {
            C1145ed c1145ed = C1509t4.j().f20630m;
            List<String> list = this.f18636a;
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
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
    }
}
