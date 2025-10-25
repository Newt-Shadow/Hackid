package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteOpenHelper;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider;
import java.io.File;
/* renamed from: io.appmetrica.analytics.impl.lk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1326lk implements ServiceStorageProvider {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20060a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC1178fl f20061b;

    /* renamed from: c  reason: collision with root package name */
    public final SQLiteOpenHelper f20062c;

    public C1326lk(Context context, InterfaceC1178fl interfaceC1178fl, SQLiteOpenHelper sQLiteOpenHelper) {
        this.f20060a = context;
        this.f20061b = interfaceC1178fl;
        this.f20062c = sQLiteOpenHelper;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final File getAppDataStorage() {
        return FileUtils.getAppDataDir(this.f20060a);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final File getAppFileStorage() {
        return FileUtils.getAppStorageDirectory(this.f20060a);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final SQLiteOpenHelper getDbStorage() {
        return this.f20062c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final File getSdkDataStorage() {
        return FileUtils.sdkStorage(this.f20060a);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final TempCacheStorage getTempCacheStorage() {
        Zm zm;
        C1288k7 a10 = C1288k7.a(this.f20060a);
        synchronized (a10) {
            if (a10.f19937o == null) {
                Context context = a10.f19927e;
                Dm dm = Dm.SERVICE;
                if (a10.f19936n == null) {
                    a10.f19936n = new Ym(new C1078bl(a10.h()), "temp_cache");
                }
                a10.f19937o = new Zm(context, dm, a10.f19936n);
            }
            zm = a10.f19937o;
        }
        return zm;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final ModulePreferences legacyModulePreferences() {
        return new Kb(this.f20061b);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider
    public final ModulePreferences modulePreferences(String str) {
        return new C1269jd(str, this.f20061b);
    }
}
