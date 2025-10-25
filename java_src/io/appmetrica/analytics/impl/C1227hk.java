package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
import io.appmetrica.analytics.coreutils.internal.io.CloseableUtilsKt;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
/* renamed from: io.appmetrica.analytics.impl.hk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1227hk implements Uc {

    /* renamed from: a  reason: collision with root package name */
    public final co f19755a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19756b = "startup_state";

    /* renamed from: c  reason: collision with root package name */
    public final AESEncrypter f19757c;

    public C1227hk(co coVar) {
        this.f19755a = coVar;
        C1031a c1031a = new C1031a(C1665za.j().f());
        this.f19757c = new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, c1031a.b(), c1031a.a());
    }

    @Override // io.appmetrica.analytics.impl.Uc
    public final void a(Context context) {
        SQLiteDatabase readableDatabase = C1288k7.a(context).h().getReadableDatabase();
        if (readableDatabase != null) {
            try {
                Lb a10 = a(readableDatabase);
                Tl tl = new Tl(new C4(new A4()));
                if (a10 != null) {
                    a(this.f19755a, tl, a10);
                    tl.f19016p = a10.f18525c;
                    tl.f19018r = a10.f18524b;
                }
                Ul ul = new Ul(tl);
                Cm a11 = Bm.a(Ul.class);
                a11.a(context, a11.d(context)).save(ul);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(co coVar, Tl tl, Lb lb2) {
        String optStringOrNull;
        synchronized (coVar) {
            optStringOrNull = JsonUtils.optStringOrNull(coVar.f19494a.a(), "device_id");
        }
        if (TextUtils.isEmpty(optStringOrNull)) {
            if (!TextUtils.isEmpty(lb2.f18526d)) {
                coVar.a(lb2.f18526d);
            }
            if (!TextUtils.isEmpty(lb2.f18527e)) {
                coVar.b(lb2.f18527e);
            }
            if (TextUtils.isEmpty(lb2.f18523a)) {
                return;
            }
            tl.f19001a = lb2.f18523a;
        }
    }

    public final Lb a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        try {
            cursor = sQLiteDatabase.query("binary_data", new String[]{"value"}, "data_key = ?", new String[]{this.f19756b}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.getCount() == 1 && cursor.moveToFirst()) {
                        Lb lb2 = (Lb) MessageNano.mergeFrom(new Lb(), this.f19757c.decrypt(cursor.getBlob(cursor.getColumnIndexOrThrow("value"))));
                        CloseableUtilsKt.closeSafely(cursor);
                        return lb2;
                    }
                } catch (Throwable unused) {
                }
            }
            if (cursor != null) {
                cursor.getCount();
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        CloseableUtilsKt.closeSafely(cursor);
        return null;
    }
}
