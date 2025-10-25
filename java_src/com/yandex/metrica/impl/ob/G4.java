package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public class G4 extends K4<M4> {

    /* renamed from: a  reason: collision with root package name */
    private final C0893u5 f10115a;

    public G4(F3 f32) {
        this.f10115a = new C0893u5(f32);
    }

    @Override // com.yandex.metrica.impl.ob.K4
    public H4 a(int i10) {
        ArrayList arrayList = new ArrayList();
        int ordinal = EnumC0396a1.a(i10).ordinal();
        if (ordinal != 16) {
            if (ordinal != 24) {
                if (ordinal == 47) {
                    arrayList.add(this.f10115a.c());
                }
            } else {
                arrayList.add(this.f10115a.b());
            }
        } else {
            arrayList.add(this.f10115a.a());
        }
        return new H4(arrayList);
    }
}
