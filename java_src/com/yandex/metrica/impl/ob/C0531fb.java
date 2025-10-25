package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.fb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0531fb extends C0617in {
    public C0531fb(int i10) {
        super(i10);
    }

    @Override // com.yandex.metrica.impl.ob.C0617in
    protected int b(Object obj) {
        Sa sa2 = (Sa) obj;
        if (sa2 == null) {
            return 0;
        }
        return C0419b.b(sa2.f11257b).length + 12;
    }
}
