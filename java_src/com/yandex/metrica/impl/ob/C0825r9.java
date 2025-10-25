package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0951wf;
import java.util.ArrayList;
/* renamed from: com.yandex.metrica.impl.ob.r9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0825r9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private final C0897u9 f13489a;

    public C0825r9() {
        this(new C0897u9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0877td c0877td = (C0877td) obj;
        C0951wf c0951wf = new C0951wf();
        c0951wf.f13879a = new C0951wf.b[c0877td.f13636a.size()];
        int i10 = 0;
        int i11 = 0;
        for (Bd bd2 : c0877td.f13636a) {
            C0951wf.b[] bVarArr = c0951wf.f13879a;
            C0951wf.b bVar = new C0951wf.b();
            bVar.f13885a = bd2.f9787a;
            bVar.f13886b = bd2.f9788b;
            bVarArr[i11] = bVar;
            i11++;
        }
        C1007z c1007z = c0877td.f13637b;
        if (c1007z != null) {
            c0951wf.f13880b = this.f13489a.fromModel(c1007z);
        }
        c0951wf.f13881c = new String[c0877td.f13638c.size()];
        for (String str : c0877td.f13638c) {
            c0951wf.f13881c[i10] = str;
            i10++;
        }
        return c0951wf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1007z c1007z;
        C0951wf c0951wf = (C0951wf) obj;
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            C0951wf.b[] bVarArr = c0951wf.f13879a;
            if (i11 >= bVarArr.length) {
                break;
            }
            C0951wf.b bVar = bVarArr[i11];
            arrayList.add(new Bd(bVar.f13885a, bVar.f13886b));
            i11++;
        }
        C0951wf.a aVar = c0951wf.f13880b;
        if (aVar != null) {
            c1007z = this.f13489a.toModel(aVar);
        } else {
            c1007z = null;
        }
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            String[] strArr = c0951wf.f13881c;
            if (i10 < strArr.length) {
                arrayList2.add(strArr[i10]);
                i10++;
            } else {
                return new C0877td(arrayList, c1007z, arrayList2);
            }
        }
    }

    C0825r9(C0897u9 c0897u9) {
        this.f13489a = c0897u9;
    }
}
