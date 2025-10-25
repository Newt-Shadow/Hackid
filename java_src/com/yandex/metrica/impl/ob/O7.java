package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.Closeable;
/* loaded from: classes2.dex */
public class O7 extends SQLiteOpenHelper implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final String f10929a;

    /* renamed from: b  reason: collision with root package name */
    private final C0467cm f10930b;

    /* renamed from: c  reason: collision with root package name */
    protected final X7 f10931c;

    public O7(Context context, String str, X7 x72) {
        this(context, str, x72, Ul.a());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getReadableDatabase() {
        try {
            return super.getReadableDatabase();
        } catch (Throwable th) {
            this.f10930b.forceE(th, "", new Object[0]);
            this.f10930b.forceW("Could not get readable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.f10929a);
            ((C0736nh) C0761oh.a()).reportError("db_read_error", th);
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (Throwable th) {
            this.f10930b.forceE(th, "", new Object[0]);
            this.f10930b.forceW("Could not get writable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.f10929a);
            ((C0736nh) C0761oh.a()).reportError("db_write_error", th);
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f10931c.a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f10931c.a(sQLiteDatabase, i10, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        this.f10931c.b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f10931c.b(sQLiteDatabase, i10, i11);
    }

    O7(Context context, String str, X7 x72, C0467cm c0467cm) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, C0627j8.f12672a);
        this.f10931c = x72;
        this.f10929a = str;
        this.f10930b = c0467cm;
    }
}
