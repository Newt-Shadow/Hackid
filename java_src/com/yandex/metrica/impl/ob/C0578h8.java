package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;
/* renamed from: com.yandex.metrica.impl.ob.h8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0578h8 implements InterfaceC0553g8 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12508a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12509b;

    /* renamed from: c  reason: collision with root package name */
    private final X7 f12510c;

    /* renamed from: d  reason: collision with root package name */
    private final C0886tm f12511d;

    /* renamed from: e  reason: collision with root package name */
    private O7 f12512e;

    public C0578h8(Context context, String str, C0886tm c0886tm, X7 x72) {
        this.f12508a = context;
        this.f12509b = str;
        this.f12511d = c0886tm;
        this.f12510c = x72;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0553g8
    public synchronized SQLiteDatabase a() {
        O7 o72;
        try {
            this.f12511d.a();
            o72 = new O7(this.f12508a, this.f12509b, this.f12510c);
            this.f12512e = o72;
        } catch (Throwable unused) {
            return null;
        }
        return o72.getWritableDatabase();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0553g8
    public synchronized void a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable unused) {
            }
        }
        A2.a((Closeable) this.f12512e);
        this.f12511d.b();
        this.f12512e = null;
    }
}
