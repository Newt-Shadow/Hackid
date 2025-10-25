package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.yandex.metrica.impl.ob.C0709mf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Ga implements Fa {

    /* renamed from: a  reason: collision with root package name */
    private final Ha f10122a;

    /* renamed from: b  reason: collision with root package name */
    private final Ca f10123b;

    /* renamed from: c  reason: collision with root package name */
    private final C0667kn f10124c;

    /* renamed from: d  reason: collision with root package name */
    private final La f10125d;

    public Ga() {
        this(new Ha(), new Ca(), new C0667kn(100), new La());
    }

    private C0709mf a(C0709mf c0709mf) {
        C0709mf c0709mf2 = new C0709mf();
        c0709mf2.f12880a = c0709mf.f12880a;
        C0709mf.h hVar = new C0709mf.h();
        c0709mf2.f12885f = hVar;
        hVar.f12905a = new C0709mf.f();
        C0709mf.f fVar = c0709mf2.f12885f.f12905a;
        C0709mf.f fVar2 = c0709mf.f12885f.f12905a;
        fVar.f12898b = fVar2.f12898b;
        fVar.f12897a = fVar2.f12897a;
        fVar.f12901e = fVar2.f12901e;
        fVar.f12899c = fVar2.f12899c;
        return c0709mf2;
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Na<C0709mf.i, Vm> na2;
        int i10;
        int computeRawVarint32Size;
        Va va2 = (Va) obj;
        C0709mf c0709mf = new C0709mf();
        c0709mf.f12880a = va2.f11655b;
        c0709mf.f12885f = new C0709mf.h();
        Wa wa2 = va2.f11656c;
        C0709mf.f fVar = new C0709mf.f();
        fVar.f12897a = C0419b.b(wa2.f11688a);
        C0568gn<String, Vm> a10 = this.f10124c.a(wa2.f11689b);
        fVar.f12898b = C0419b.b(a10.f12493a);
        fVar.f12901e = wa2.f11690c.size();
        Map<String, String> map = wa2.f11691d;
        if (map != null) {
            na2 = this.f10122a.fromModel(map);
            fVar.f12899c = na2.f10887a;
        } else {
            na2 = null;
        }
        c0709mf.f12885f.f12905a = fVar;
        Vm a11 = Um.a(a10, na2);
        List<Ua> list = wa2.f11690c;
        ArrayList arrayList = new ArrayList();
        this.f10125d.getClass();
        if (c0709mf.f12880a != new C0709mf().f12880a) {
            i10 = CodedOutputByteBufferNano.computeInt32Size(1, c0709mf.f12880a) + 0;
        } else {
            i10 = 0;
        }
        C0709mf.q qVar = c0709mf.f12881b;
        if (qVar != null) {
            i10 += CodedOutputByteBufferNano.computeMessageSize(2, qVar);
        }
        C0709mf.o oVar = c0709mf.f12882c;
        if (oVar != null) {
            i10 += CodedOutputByteBufferNano.computeMessageSize(3, oVar);
        }
        C0709mf.p pVar = c0709mf.f12883d;
        int i11 = 4;
        if (pVar != null) {
            i10 += CodedOutputByteBufferNano.computeMessageSize(4, pVar);
        }
        C0709mf.b bVar = c0709mf.f12884e;
        if (bVar != null) {
            i10 += CodedOutputByteBufferNano.computeMessageSize(5, bVar);
        }
        C0709mf.h hVar = c0709mf.f12885f;
        if (hVar != null) {
            i10 += CodedOutputByteBufferNano.computeMessageSize(6, hVar);
        }
        ArrayList arrayList2 = new ArrayList();
        C0709mf a12 = a(c0709mf);
        Vm vm = a11;
        int i12 = 0;
        int i13 = i10;
        while (i12 < list.size()) {
            C0709mf.g gVar = new C0709mf.g();
            gVar.f12903a = i12;
            Na<C0709mf.c, Vm> fromModel = this.f10123b.fromModel(list.get(i12));
            gVar.f12904b = fromModel.f10887a;
            this.f10125d.getClass();
            int computeTagSize = CodedOutputByteBufferNano.computeTagSize(i11);
            int computeMessageSizeNoTag = CodedOutputByteBufferNano.computeMessageSizeNoTag(gVar);
            if ((computeMessageSizeNoTag & (-128)) == 0) {
                computeRawVarint32Size = 0;
            } else {
                computeRawVarint32Size = CodedOutputByteBufferNano.computeRawVarint32Size(computeMessageSizeNoTag);
            }
            int i14 = computeTagSize + computeMessageSizeNoTag + computeRawVarint32Size;
            if (arrayList2.size() != 0 && i13 + i14 > 204800) {
                a12.f12885f.f12905a.f12900d = (C0709mf.g[]) arrayList2.toArray(new C0709mf.g[arrayList2.size()]);
                ArrayList arrayList3 = new ArrayList();
                arrayList.add(new Na(a12, vm));
                vm = a11;
                i13 = i10;
                a12 = a(c0709mf);
                arrayList2 = arrayList3;
            }
            arrayList2.add(gVar);
            vm = Um.a(vm, fromModel);
            i13 += i14;
            i12++;
            i11 = 4;
        }
        a12.f12885f.f12905a.f12900d = (C0709mf.g[]) arrayList2.toArray(new C0709mf.g[arrayList2.size()]);
        arrayList.add(new Na(a12, vm));
        return arrayList;
    }

    @Override // com.yandex.metrica.impl.ob.Fa, com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Ga(Ha ha2, Ca ca2, C0667kn c0667kn, La la2) {
        this.f10122a = ha2;
        this.f10123b = ca2;
        this.f10124c = c0667kn;
        this.f10125d = la2;
    }
}
