package com.yandex.metrica.impl.ob;

import android.util.Pair;
import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0438bi;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class S9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, C0438bi.a> f11254a = Collections.unmodifiableMap(new a());

    /* renamed from: b  reason: collision with root package name */
    private static final Map<C0438bi.a, Integer> f11255b = Collections.unmodifiableMap(new b());

    /* loaded from: classes2.dex */
    class a extends HashMap<Integer, C0438bi.a> {
        a() {
            put(1, C0438bi.a.WIFI);
            put(2, C0438bi.a.CELL);
        }
    }

    /* loaded from: classes2.dex */
    class b extends HashMap<C0438bi.a, Integer> {
        b() {
            put(C0438bi.a.WIFI, 1);
            put(C0438bi.a.CELL, 2);
        }
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.o fromModel(C0438bi c0438bi) {
        If.o oVar = new If.o();
        oVar.f10348a = c0438bi.f12063a;
        oVar.f10349b = c0438bi.f12064b;
        oVar.f10350c = c0438bi.f12065c;
        List<Pair<String, String>> list = c0438bi.f12066d;
        If.o.a[] aVarArr = new If.o.a[list.size()];
        int i10 = 0;
        for (Pair<String, String> pair : list) {
            If.o.a aVar = new If.o.a();
            aVar.f10355a = (String) pair.first;
            aVar.f10356b = (String) pair.second;
            aVarArr[i10] = aVar;
            i10++;
        }
        oVar.f10351d = aVarArr;
        Long l10 = c0438bi.f12067e;
        oVar.f10352e = l10 == null ? 0L : l10.longValue();
        List<C0438bi.a> list2 = c0438bi.f12068f;
        int[] iArr = new int[list2.size()];
        for (int i11 = 0; i11 < list2.size(); i11++) {
            iArr[i11] = f11255b.get(list2.get(i11)).intValue();
        }
        oVar.f10353f = iArr;
        return oVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0438bi toModel(If.o oVar) {
        String str = oVar.f10348a;
        String str2 = oVar.f10349b;
        String str3 = oVar.f10350c;
        If.o.a[] aVarArr = oVar.f10351d;
        ArrayList arrayList = new ArrayList(aVarArr.length);
        for (If.o.a aVar : aVarArr) {
            arrayList.add(new Pair(aVar.f10355a, aVar.f10356b));
        }
        Long valueOf = Long.valueOf(oVar.f10352e);
        int[] iArr = oVar.f10353f;
        ArrayList arrayList2 = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList2.add(f11254a.get(Integer.valueOf(i10)));
        }
        return new C0438bi(str, str2, str3, arrayList, valueOf, arrayList2);
    }
}
