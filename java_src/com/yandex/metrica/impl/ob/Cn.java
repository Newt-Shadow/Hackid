package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class Cn implements Comparator<F2> {
    @Override // java.util.Comparator
    public int compare(F2 f22, F2 f23) {
        F2 f24 = f22;
        F2 f25 = f23;
        if (!TextUtils.equals(f24.f10056a, f25.f10056a) || !TextUtils.equals(f24.f10057b, f25.f10057b)) {
            return 10;
        }
        return 0;
    }
}
