package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.vd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0925vd {
    public static final boolean a(Context context, String str) {
        if (context.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        return false;
    }
}
