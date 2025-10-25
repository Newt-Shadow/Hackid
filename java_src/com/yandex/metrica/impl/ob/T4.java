package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.impl.ac.CrashpadServiceHelper;
/* loaded from: classes2.dex */
public class T4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0716mm<String> f11403b;

    /* loaded from: classes2.dex */
    class a implements InterfaceC0716mm<String> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(String str) {
            String str2 = str;
            if (A2.a(21)) {
                CrashpadServiceHelper.a(str2);
            }
        }
    }

    public T4(L3 l32) {
        this(l32, new a());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        Bundle l10 = c0445c0.l();
        if (l10 != null) {
            String string = l10.getString("payload_crash_id");
            if (!TextUtils.isEmpty(string)) {
                this.f11403b.b(string);
                return true;
            }
            return true;
        }
        return true;
    }

    public T4(L3 l32, InterfaceC0716mm<String> interfaceC0716mm) {
        super(l32);
        this.f11403b = interfaceC0716mm;
    }
}
