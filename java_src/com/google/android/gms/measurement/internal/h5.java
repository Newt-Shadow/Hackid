package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
/* loaded from: classes.dex */
public final class h5 extends e5 {

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f7584e = {"app_version", "ALTER TABLE messages ADD COLUMN app_version TEXT;", "app_version_int", "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"};

    /* renamed from: c  reason: collision with root package name */
    private final g5 f7585c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7586d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h5(w6 w6Var) {
        super(w6Var);
        Context e10 = this.f8322a.e();
        this.f8322a.w();
        this.f7585c = new g5(this, e10, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0115 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x016a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x016a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x016a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x017a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean z(int r17, byte[] r18) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.h5.z(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return false;
    }

    public final void o() {
        int delete;
        h();
        try {
            SQLiteDatabase w10 = w();
            if (w10 != null && (delete = w10.delete("messages", null, null)) > 0) {
                this.f8322a.a().w().b("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e10) {
            this.f8322a.a().o().b("Error resetting local analytics data. error", e10);
        }
    }

    public final boolean p(g0 g0Var) {
        Parcel obtain = Parcel.obtain();
        h0.a(g0Var, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f8322a.a().p().a("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return z(0, marshall);
    }

    public final boolean q(ud udVar) {
        Parcel obtain = Parcel.obtain();
        vd.a(udVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f8322a.a().p().a("User property too long for local database. Sending directly to service");
            return false;
        }
        return z(1, marshall);
    }

    public final boolean r(i iVar) {
        w6 w6Var = this.f8322a;
        byte[] T = w6Var.C().T(iVar);
        if (T.length > 131072) {
            w6Var.a().p().a("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return z(2, T);
    }

    public final boolean s(e0 e0Var) {
        w6 w6Var = this.f8322a;
        byte[] T = w6Var.C().T(e0Var);
        if (T == null) {
            w6Var.a().p().a("Null default event parameters; not writing to database");
            return false;
        } else if (T.length > 131072) {
            w6Var.a().p().a("Default event parameters too long for local database. Sending directly to service");
            return false;
        } else {
            return z(4, T);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0351  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x02e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x02c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0341 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0341 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v16 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List t(int r30) {
        /*
            Method dump skipped, instructions count: 871
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.h5.t(int):java.util.List");
    }

    public final boolean u() {
        return z(3, new byte[0]);
    }

    public final boolean v() {
        h();
        if (!this.f7586d && x()) {
            int i10 = 5;
            int i11 = 0;
            while (true) {
                if (i11 < 5) {
                    SQLiteDatabase sQLiteDatabase = null;
                    try {
                        try {
                            try {
                                SQLiteDatabase w10 = w();
                                if (w10 == null) {
                                    this.f7586d = true;
                                } else {
                                    w10.beginTransaction();
                                    w10.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                                    w10.setTransactionSuccessful();
                                    w10.endTransaction();
                                    w10.close();
                                    return true;
                                }
                            } catch (SQLiteDatabaseLockedException unused) {
                                SystemClock.sleep(i10);
                                i10 += 20;
                                if (0 == 0) {
                                }
                                sQLiteDatabase.close();
                            }
                        } catch (SQLiteException e10) {
                            if (0 != 0) {
                                try {
                                    if (sQLiteDatabase.inTransaction()) {
                                        sQLiteDatabase.endTransaction();
                                    }
                                } catch (Throwable th) {
                                    if (0 != 0) {
                                        sQLiteDatabase.close();
                                    }
                                    throw th;
                                }
                            }
                            this.f8322a.a().o().b("Error deleting app launch break from local database", e10);
                            this.f7586d = true;
                            if (0 != 0) {
                                sQLiteDatabase.close();
                            }
                        }
                    } catch (SQLiteFullException e11) {
                        this.f8322a.a().o().b("Error deleting app launch break from local database", e11);
                        this.f7586d = true;
                        if (0 == 0) {
                        }
                        sQLiteDatabase.close();
                    }
                } else {
                    this.f8322a.a().r().a("Error deleting app launch break from local database in reasonable time");
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    final SQLiteDatabase w() {
        if (this.f7586d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f7585c.getWritableDatabase();
        if (writableDatabase == null) {
            this.f7586d = true;
            return null;
        }
        return writableDatabase;
    }

    final boolean x() {
        w6 w6Var = this.f8322a;
        Context e10 = w6Var.e();
        w6Var.w();
        return e10.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
