package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.appmetrica.analytics.modulesapi.internal.common.TableDescription;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
/* renamed from: io.appmetrica.analytics.impl.g7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1189g7 extends DatabaseScript {
    @Override // io.appmetrica.analytics.coreapi.internal.db.DatabaseScript
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS binary_data");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS temp_cache");
        for (ModuleServicesDatabase moduleServicesDatabase : C1665za.E.o().b()) {
            for (TableDescription tableDescription : moduleServicesDatabase.getTables()) {
                sQLiteDatabase.execSQL(tableDescription.getDropTableScript());
            }
        }
    }
}
