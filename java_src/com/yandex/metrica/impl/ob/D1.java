package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.util.SparseArray;
import com.yandex.metrica.YandexMetrica;
/* loaded from: classes2.dex */
public abstract class D1 {

    /* loaded from: classes2.dex */
    interface a {
        void a(Context context);
    }

    protected abstract int a(Nd nd2);

    abstract SparseArray<a> a();

    public synchronized void a(Context context) {
        Nd nd2 = new Nd(context);
        int a10 = a(nd2);
        int libraryApiLevel = YandexMetrica.getLibraryApiLevel();
        if (a10 != libraryApiLevel) {
            if (a10 > 0 && a10 < libraryApiLevel) {
                SparseArray<a> a11 = a();
                while (true) {
                    a10++;
                    if (a10 > libraryApiLevel) {
                        break;
                    }
                    a aVar = a11.get(a10);
                    if (aVar != null) {
                        aVar.a(context);
                    }
                }
            }
            a(nd2, libraryApiLevel);
            nd2.b();
        }
    }

    protected abstract void a(Nd nd2, int i10);
}
