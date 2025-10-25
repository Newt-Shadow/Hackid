package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessorsHolder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: io.appmetrica.analytics.impl.x5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1610x5 implements ModuleAdRevenueProcessor, ModuleAdRevenueProcessorsHolder {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f20901a = new ArrayList();

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final String getDescription() {
        String X;
        ArrayList arrayList = this.f20901a;
        X = yc.w.X(arrayList, null, "Composite processor with " + this.f20901a.size() + " children: [", "]", 0, null, C1585w5.f20850a, 25, null);
        return X;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor
    public final boolean process(Object... objArr) {
        Object obj;
        boolean z10;
        ModuleAdRevenueProcessor moduleAdRevenueProcessor;
        boolean process;
        LoggerStorage.getMainPublicOrAnonymousLogger().info("Processing Ad Revenue for " + Arrays.toString(objArr), new Object[0]);
        Iterator it = this.f20901a.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                try {
                    process = ((ModuleAdRevenueProcessor) obj).process(Arrays.copyOf(objArr, objArr.length));
                    if (!process) {
                        LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue was not processed by " + moduleAdRevenueProcessor.getDescription(), new Object[0]);
                    }
                } catch (Throwable th) {
                    LoggerStorage.getMainPublicOrAnonymousLogger().error(th, "Got exception from processor " + moduleAdRevenueProcessor.getDescription(), new Object[0]);
                }
                if (process) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (((ModuleAdRevenueProcessor) obj) != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            LoggerStorage.getMainPublicOrAnonymousLogger().info("Ad Revenue was not processed by " + getDescription() + " since processor for " + Arrays.toString(objArr) + " was not found", new Object[0]);
        }
        return z10;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessorsHolder
    public final void register(ModuleAdRevenueProcessor moduleAdRevenueProcessor) {
        this.f20901a.add(moduleAdRevenueProcessor);
    }
}
