package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
/* renamed from: io.appmetrica.analytics.impl.zm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1677zm extends Cm {
    @Override // io.appmetrica.analytics.impl.Cm
    public final ProtobufStateStorage a(Context context, IBinaryDataHelper iBinaryDataHelper) {
        byte[] bArr;
        byte[] bArr2;
        Q3 q32 = new Q3();
        try {
            bArr = AbstractC1176fj.a(context.getPackageName());
        } catch (Throwable unused) {
            bArr = new byte[16];
        }
        try {
            bArr2 = AbstractC1176fj.a(new StringBuilder(context.getPackageName()).reverse().toString());
        } catch (Throwable unused2) {
            bArr2 = new byte[16];
        }
        return new If("clids_info", iBinaryDataHelper, new J8(q32, new AESEncrypter(AESEncrypter.DEFAULT_ALGORITHM, bArr, bArr2)), new L3());
    }

    @Override // io.appmetrica.analytics.impl.Cm
    public final IBinaryDataHelper c(Context context) {
        C1309l3 c1309l3;
        C1288k7 a10 = C1288k7.a(context);
        synchronized (a10) {
            if (a10.f19931i == null) {
                a10.f19931i = new C1309l3(a10.g());
            }
            c1309l3 = a10.f19931i;
        }
        return c1309l3;
    }

    @Override // io.appmetrica.analytics.impl.Cm
    public final IBinaryDataHelper d(Context context) {
        IBinaryDataHelper g10;
        C1288k7 a10 = C1288k7.a(context);
        synchronized (a10) {
            g10 = a10.g();
        }
        return g10;
    }
}
