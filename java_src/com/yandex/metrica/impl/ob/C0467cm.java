package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0808qf;
/* renamed from: com.yandex.metrica.impl.ob.cm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0467cm extends Vl {

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f12194c = {3, 6, 4};

    /* renamed from: d  reason: collision with root package name */
    private static final C0467cm f12195d = new C0467cm("");

    public C0467cm(String str) {
        super(str);
    }

    public static C0467cm a() {
        return f12195d;
    }

    @Override // com.yandex.metrica.coreutils.logger.a
    public String getTag() {
        return "AppMetrica";
    }

    public C0467cm() {
        this("");
    }

    public void a(C0808qf.d dVar, String str) {
        C0808qf.d.a[] aVarArr;
        boolean z10;
        String str2;
        for (C0808qf.d.a aVar : dVar.f13333c) {
            if (aVar != null) {
                int[] iArr = f12194c;
                int length = iArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        z10 = false;
                        break;
                    }
                    if (aVar.f13337c == iArr[i10]) {
                        z10 = true;
                        break;
                    }
                    i10++;
                }
                if (z10) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(": ");
                    if (aVar.f13337c == 3 && TextUtils.isEmpty(aVar.f13338d)) {
                        str2 = "Native crash of app";
                    } else if (aVar.f13337c == 4) {
                        StringBuilder sb3 = new StringBuilder(aVar.f13338d);
                        byte[] bArr = aVar.f13339e;
                        if (bArr != null) {
                            String str3 = new String(bArr);
                            if (!TextUtils.isEmpty(str3)) {
                                sb3.append(" with value ");
                                sb3.append(str3);
                            }
                        }
                        str2 = sb3.toString();
                    } else {
                        str2 = aVar.f13338d;
                    }
                    sb2.append(str2);
                    i(sb2.toString());
                }
            }
        }
    }
}
