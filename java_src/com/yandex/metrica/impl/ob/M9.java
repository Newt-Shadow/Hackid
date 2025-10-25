package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0935w;
import com.yandex.metrica.impl.ob.E;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class M9 implements ProtobufConverter {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.b fromModel(Ac ac2) {
        If.k.b bVar = new If.k.b();
        bVar.f10337a = new int[ac2.f9711a.size()];
        Iterator<E.b.a> it = ac2.f9711a.iterator();
        int i10 = 0;
        while (true) {
            int i11 = 3;
            int i12 = 2;
            if (!it.hasNext()) {
                break;
            }
            int[] iArr = bVar.f10337a;
            int ordinal = it.next().ordinal();
            if (ordinal == 1) {
                i11 = 0;
            } else if (ordinal != 2) {
                if (ordinal != 3) {
                    i12 = 4;
                    if (ordinal == 4) {
                    }
                }
                i11 = i12;
            } else {
                i11 = 1;
            }
            iArr[i10] = i11;
            i10++;
        }
        bVar.f10338b = new int[ac2.f9712b.size()];
        int i13 = 0;
        for (C0935w.a aVar : ac2.f9712b) {
            int[] iArr2 = bVar.f10338b;
            int ordinal2 = aVar.ordinal();
            iArr2[i13] = ordinal2 != 1 ? ordinal2 != 2 ? 3 : 2 : 0;
            i13++;
        }
        return bVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Ac toModel(If.k.b bVar) {
        E.b.a aVar;
        C0935w.a aVar2;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        if (bVar.f10337a.length != 0) {
            int i11 = 0;
            while (true) {
                int[] iArr = bVar.f10337a;
                if (i11 >= iArr.length) {
                    break;
                }
                int i12 = iArr[i11];
                if (i12 == 0) {
                    aVar = E.b.a.NONE;
                } else if (i12 == 1) {
                    aVar = E.b.a.USB;
                } else if (i12 == 2) {
                    aVar = E.b.a.WIRELESS;
                } else if (i12 != 3) {
                    aVar = E.b.a.UNKNOWN;
                } else {
                    aVar = E.b.a.AC;
                }
                arrayList.add(aVar);
                i11++;
            }
        } else {
            arrayList.addAll(Arrays.asList(E.b.a.values()));
        }
        ArrayList arrayList2 = new ArrayList();
        if (bVar.f10338b.length != 0) {
            while (true) {
                int[] iArr2 = bVar.f10338b;
                if (i10 >= iArr2.length) {
                    break;
                }
                int i13 = iArr2[i10];
                if (i13 == 0) {
                    aVar2 = C0935w.a.BACKGROUND;
                } else if (i13 != 2) {
                    aVar2 = C0935w.a.UNKNOWN;
                } else {
                    aVar2 = C0935w.a.VISIBLE;
                }
                arrayList2.add(aVar2);
                i10++;
            }
        } else {
            arrayList2.addAll(Arrays.asList(C0935w.a.values()));
        }
        return new Ac(arrayList, arrayList2);
    }
}
