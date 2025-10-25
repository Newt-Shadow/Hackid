package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0808qf;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.te  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0878te {

    /* renamed from: a  reason: collision with root package name */
    private final D9 f13639a = new D9();

    public C0808qf.d.a.b[] a(byte[] bArr) {
        int i10 = 0;
        if (bArr != null) {
            Map<String, byte[]> model = this.f13639a.toModel(bArr);
            int size = model.size();
            C0808qf.d.a.b[] bVarArr = new C0808qf.d.a.b[size];
            for (int i11 = 0; i11 < size; i11++) {
                bVarArr[i11] = new C0808qf.d.a.b();
            }
            for (Object obj : ((LinkedHashMap) model).entrySet()) {
                int i12 = i10 + 1;
                if (i10 < 0) {
                    yc.o.q();
                }
                Map.Entry entry = (Map.Entry) obj;
                C0808qf.d.a.b bVar = bVarArr[i10];
                String str = (String) entry.getKey();
                Charset charset = rd.d.f29089b;
                if (str != null) {
                    byte[] bytes = str.getBytes(charset);
                    kotlin.jvm.internal.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                    bVar.f13363a = bytes;
                    bVar.f13364b = (byte[]) entry.getValue();
                    i10 = i12;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            }
            return bVarArr;
        }
        return new C0808qf.d.a.b[0];
    }
}
