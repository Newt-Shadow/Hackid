package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.yandex.metrica.impl.ob.i8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0603i8 implements InterfaceC0553g8 {

    /* renamed from: a  reason: collision with root package name */
    private final O7 f12597a;

    public C0603i8(O7 o72) {
        this.f12597a = o72;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0553g8
    public void a(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0553g8
    public SQLiteDatabase a() {
        try {
            return this.f12597a.getWritableDatabase();
        } catch (Throwable unused) {
            return null;
        }
    }
}
