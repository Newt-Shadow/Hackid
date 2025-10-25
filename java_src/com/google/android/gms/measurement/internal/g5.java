package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g5 extends com.google.android.gms.internal.measurement.a1 {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ h5 f7559a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g5(h5 h5Var, Context context, String str) {
        super(context, "google_app_measurement_local.db", null, 1);
        Objects.requireNonNull(h5Var);
        this.f7559a = h5Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e10) {
            throw e10;
        } catch (SQLiteException unused) {
            w6 w6Var = this.f7559a.f8322a;
            w6Var.a().o().a("Opening the local database failed, dropping and recreating it");
            w6Var.w();
            if (!w6Var.e().getDatabasePath("google_app_measurement_local.db").delete()) {
                w6Var.a().o().b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e11) {
                this.f7559a.f8322a.a().o().b("Failed to open local database. Events will bypass local storage", e11);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        v.b(this.f7559a.f8322a.a(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String[] strArr;
        strArr = h5.f7584e;
        v.a(this.f7559a.f8322a.a(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", strArr);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
