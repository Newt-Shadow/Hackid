package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.kn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0667kn extends AbstractC0593hn {
    public C0667kn(int i10) {
        super(i10);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0593hn
    public C0568gn<String, Vm> a(String str) {
        int i10 = 0;
        if (str != null && str.length() > a()) {
            String substring = str.substring(0, a());
            int length = C0419b.b(str).length;
            int length2 = C0419b.b(substring).length;
            i10 = str.getBytes().length - substring.getBytes().length;
            str = substring;
        }
        return new C0568gn<>(str, new Um(i10));
    }
}
