package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.a7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0402a7 implements InterfaceC0741nm<File, Z6>, InterfaceC0716mm<File> {
    @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
    public Z6 a(File file) {
        String a10 = L0.a(file);
        if (!TextUtils.isEmpty(a10)) {
            try {
                return new Z6(a10);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
    public void b(File file) {
        try {
            file.delete();
        } catch (Throwable unused) {
        }
    }
}
