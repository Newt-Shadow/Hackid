package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import android.util.SparseArray;
/* loaded from: classes2.dex */
public class X7 {

    /* renamed from: a  reason: collision with root package name */
    private final AbstractC0652k8 f11751a;

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC0652k8 f11752b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseArray<AbstractC0652k8> f11753c;

    /* renamed from: d  reason: collision with root package name */
    private final Y7 f11754d;

    /* loaded from: classes2.dex */
    public static class b {
        public X7 a(String str, AbstractC0652k8 abstractC0652k8, AbstractC0652k8 abstractC0652k82, SparseArray<AbstractC0652k8> sparseArray, Y7 y72) {
            return new X7(str, abstractC0652k8, abstractC0652k82, sparseArray, y72);
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f11751a.a(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    public void b(SQLiteDatabase sQLiteDatabase) {
        try {
            Y7 y72 = this.f11754d;
            if (y72 == null || ((Z7) y72).a(sQLiteDatabase)) {
                return;
            }
            try {
                this.f11752b.a(sQLiteDatabase);
            } catch (Throwable unused) {
            }
            this.f11751a.a(sQLiteDatabase);
        } catch (Throwable unused2) {
        }
    }

    private X7(String str, AbstractC0652k8 abstractC0652k8, AbstractC0652k8 abstractC0652k82, SparseArray<AbstractC0652k8> sparseArray, Y7 y72) {
        this.f11751a = abstractC0652k8;
        this.f11752b = abstractC0652k82;
        this.f11753c = sparseArray;
        this.f11754d = y72;
    }

    public void a(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (i10 > i11) {
            try {
                this.f11752b.a(sQLiteDatabase);
            } catch (Throwable unused) {
            }
            try {
                this.f11751a.a(sQLiteDatabase);
            } catch (Throwable unused2) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.database.sqlite.SQLiteDatabase r3, int r4, int r5) {
        /*
            r2 = this;
            r0 = 1
            if (r5 <= r4) goto L18
            int r4 = r4 + r0
        L4:
            if (r4 > r5) goto L16
            android.util.SparseArray<com.yandex.metrica.impl.ob.k8> r1 = r2.f11753c     // Catch: java.lang.Throwable -> L18
            java.lang.Object r1 = r1.get(r4)     // Catch: java.lang.Throwable -> L18
            com.yandex.metrica.impl.ob.k8 r1 = (com.yandex.metrica.impl.ob.AbstractC0652k8) r1     // Catch: java.lang.Throwable -> L18
            if (r1 == 0) goto L13
            r1.a(r3)     // Catch: java.lang.Throwable -> L18
        L13:
            int r4 = r4 + 1
            goto L4
        L16:
            r4 = 0
            goto L19
        L18:
            r4 = r0
        L19:
            com.yandex.metrica.impl.ob.Y7 r5 = r2.f11754d
            com.yandex.metrica.impl.ob.Z7 r5 = (com.yandex.metrica.impl.ob.Z7) r5
            boolean r5 = r5.a(r3)
            r5 = r5 ^ r0
            r4 = r4 | r5
            if (r4 == 0) goto L2f
            com.yandex.metrica.impl.ob.k8 r4 = r2.f11752b
            r4.a(r3)     // Catch: java.lang.Throwable -> L2a
        L2a:
            com.yandex.metrica.impl.ob.k8 r4 = r2.f11751a
            r4.a(r3)     // Catch: java.lang.Throwable -> L2f
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.X7.b(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
