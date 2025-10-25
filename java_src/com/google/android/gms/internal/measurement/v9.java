package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
/* loaded from: classes.dex */
public abstract class v9 implements ic {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    public static void g(Iterable iterable, List list) {
        u9.j(iterable, list);
    }

    public final byte[] e() {
        try {
            int a10 = a();
            byte[] bArr = new byte[a10];
            int i10 = pa.f6668d;
            na naVar = new na(bArr, 0, a10);
            c(naVar);
            naVar.e();
            return bArr;
        } catch (IOException e10) {
            String name = getClass().getName();
            StringBuilder sb2 = new StringBuilder(name.length() + 72);
            sb2.append("Serializing ");
            sb2.append(name);
            sb2.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int f(tc tcVar);
}
