package io.appmetrica.analytics.impl;

import android.content.Context;
import android.util.SparseArray;
import io.appmetrica.analytics.AppMetrica;
/* loaded from: classes2.dex */
public abstract class Vc {
    public abstract void a(int i10);

    public final synchronized void a(Context context) {
        int b10 = b();
        int libraryApiLevel = AppMetrica.getLibraryApiLevel();
        if (b10 != libraryApiLevel) {
            if (b10 < libraryApiLevel) {
                SparseArray c10 = c();
                while (true) {
                    b10++;
                    if (b10 > libraryApiLevel) {
                        break;
                    }
                    Uc uc2 = (Uc) c10.get(b10);
                    if (uc2 != null) {
                        uc2.a(context);
                    }
                }
            }
            a(libraryApiLevel);
        }
    }

    public abstract int b();

    public abstract SparseArray c();

    public final int a() {
        return AppMetrica.getLibraryApiLevel();
    }
}
