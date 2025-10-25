package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public final class V6 extends InterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f19112a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ W6 f19113b;

    public V6(W6 w62, C1386o5 c1386o5) {
        this.f19113b = w62;
        this.f19112a = c1386o5;
    }

    public final synchronized void a(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f19113b.getClass();
            arrayList2.add(Integer.valueOf(((ContentValues) it.next()).getAsInteger("type").intValue()));
        }
        Iterator it2 = this.f19113b.f19153j.iterator();
        while (it2.hasNext()) {
            ((InterfaceC1066b9) it2.next()).a(arrayList2);
        }
        ((C1660z5) this.f19112a.f20268p).e();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        while (isRunning()) {
            try {
                synchronized (this) {
                    if (W6.a(this.f19113b)) {
                        wait();
                    }
                }
            } catch (Throwable unused) {
                stopRunning();
            }
            synchronized (this.f19113b.f19148e) {
                arrayList = new ArrayList(this.f19113b.f19149f);
                this.f19113b.f19149f.clear();
            }
            W6 w62 = this.f19113b;
            w62.getClass();
            if (!arrayList.isEmpty()) {
                w62.f19145b.lock();
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    SQLiteDatabase writableDatabase = w62.f19146c.getWritableDatabase();
                    if (writableDatabase != null) {
                        try {
                            writableDatabase.beginTransaction();
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ContentValues contentValues = (ContentValues) it.next();
                                writableDatabase.insertOrThrow("events", null, contentValues);
                                w62.f19152i.incrementAndGet();
                                w62.a(contentValues, "Event saved to db");
                            }
                            writableDatabase.setTransactionSuccessful();
                            w62.f19152i.get();
                        } catch (Throwable unused2) {
                            sQLiteDatabase = writableDatabase;
                            if (sQLiteDatabase != null) {
                                sQLiteDatabase.endTransaction();
                            }
                            w62.f19145b.unlock();
                            a(arrayList);
                        }
                    }
                    if (writableDatabase != null) {
                        try {
                            writableDatabase.endTransaction();
                        } catch (Throwable unused3) {
                        }
                    }
                } catch (Throwable unused4) {
                }
                w62.f19145b.unlock();
            }
            a(arrayList);
        }
    }
}
