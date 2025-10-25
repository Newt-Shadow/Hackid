package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.appmetrica.analytics.modulesapi.internal.common.TableDescription;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
/* renamed from: io.appmetrica.analytics.impl.f7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1164f7 extends DatabaseScript {
    @Override // io.appmetrica.analytics.coreapi.internal.db.DatabaseScript
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS temp_cache (id INTEGER PRIMARY KEY,scope TEXT,data BLOB,timestamp INTEGER)");
        for (ModuleServicesDatabase moduleServicesDatabase : C1665za.E.o().b()) {
            for (TableDescription tableDescription : moduleServicesDatabase.getTables()) {
                sQLiteDatabase.execSQL(tableDescription.getCreateTableScript());
            }
        }
    }
}
