package io.appmetrica.analytics.logger.common.impl;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final e f21166a;

    public b() {
        this(new e());
    }

    public final ArrayList a(String str) {
        String[] split = str.split("\\n");
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            int i10 = 0;
            while (str2.length() > i10) {
                int length = str2.length();
                int i11 = i10 + 3800;
                int min = Math.min(length, i11);
                if (length > i11) {
                    int a10 = e.a(this.f21166a.f21171a.matcher(str2), i10, min);
                    if (a10 == -1) {
                        length = min;
                    } else {
                        length = a10 + 1;
                    }
                }
                arrayList.add(str2.substring(i10, length));
                i10 = length;
            }
        }
        return arrayList;
    }

    public b(e eVar) {
        this.f21166a = eVar;
    }
}
