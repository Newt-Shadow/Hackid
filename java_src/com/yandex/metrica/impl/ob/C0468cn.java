package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
/* renamed from: com.yandex.metrica.impl.ob.cn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0468cn extends Sm<String> {
    public C0468cn(int i10, String str) {
        this(i10, str, Ul.a());
    }

    public C0468cn(int i10, String str, C0467cm c0467cm) {
        super(i10, str, c0467cm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0543fn
    public String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            if (bytes.length > super.b()) {
                String str2 = new String(bytes, 0, super.b(), "UTF-8");
                try {
                    if (this.f11370c.isEnabled()) {
                        this.f11370c.fw("\"%s\" %s exceeded limit of %d bytes", super.a(), str, Integer.valueOf(super.b()));
                    }
                } catch (UnsupportedEncodingException unused) {
                }
                return str2;
            }
            return str;
        } catch (UnsupportedEncodingException unused2) {
            return str;
        }
    }
}
