package com.yandex.metrica.impl.ob;

import com.yandex.metrica.plugins.IPluginReporter;
import java.util.Map;
/* loaded from: classes2.dex */
public interface I0 extends M0, IPluginReporter {
    void a(int i10, String str, String str2, Map<String, String> map, Map<String, byte[]> map2);

    void a(String str, String str2);

    void a(String str, byte[] bArr);

    void b(String str);

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    /* synthetic */ void b(String str, String str2);

    void c(String str);

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    /* synthetic */ void d(String str, String str2);
}
