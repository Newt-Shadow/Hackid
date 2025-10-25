package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.ne  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1370ne implements InterfaceC1314l8 {

    /* renamed from: a  reason: collision with root package name */
    public final C1445qe f20209a;

    /* renamed from: b  reason: collision with root package name */
    public final B3 f20210b;

    /* renamed from: c  reason: collision with root package name */
    public final Ea f20211c;

    /* renamed from: d  reason: collision with root package name */
    public final Ff f20212d;

    public C1370ne() {
        this(new C1445qe(), new B3(), new Ea(100), new Ff());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final List<Ci> fromModel(C1345me c1345me) {
        Ci ci;
        E8 e82 = new E8();
        e82.f18157a = c1345me.f20118a;
        e82.f18162f = new C1513t8();
        C1395oe c1395oe = c1345me.f20119b;
        C1463r8 c1463r8 = new C1463r8();
        c1463r8.f20500a = StringUtils.getUTF8Bytes(c1395oe.f20294a);
        C1503sn a10 = this.f20211c.a(c1395oe.f20295b);
        c1463r8.f20501b = StringUtils.getUTF8Bytes((String) a10.f20611a);
        c1463r8.f20504e = c1395oe.f20296c.size();
        Map<String, String> map = c1395oe.f20297d;
        if (map != null) {
            ci = this.f20209a.fromModel(map);
            c1463r8.f20502c = (C1563v8) ci.f18057a;
        } else {
            ci = null;
        }
        e82.f18162f.f20661a = c1463r8;
        C1483s3 c1483s3 = new C1483s3(C1483s3.b(a10, ci));
        List list = c1395oe.f20296c;
        ArrayList arrayList = new ArrayList();
        this.f20212d.getClass();
        int computeInt32Size = e82.f18157a != new E8().f18157a ? CodedOutputByteBufferNano.computeInt32Size(1, e82.f18157a) : 0;
        D8 d82 = e82.f18158b;
        if (d82 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(2, d82);
        }
        B8 b82 = e82.f18159c;
        if (b82 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(3, b82);
        }
        C8 c82 = e82.f18160d;
        int i10 = 4;
        if (c82 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(4, c82);
        }
        C1364n8 c1364n8 = e82.f18161e;
        if (c1364n8 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(5, c1364n8);
        }
        C1513t8 c1513t8 = e82.f18162f;
        if (c1513t8 != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(6, c1513t8);
        }
        ArrayList arrayList2 = new ArrayList();
        E8 e83 = new E8();
        e83.f18157a = e82.f18157a;
        C1513t8 c1513t82 = new C1513t8();
        e83.f18162f = c1513t82;
        c1513t82.f20661a = new C1463r8();
        C1463r8 c1463r82 = e83.f18162f.f20661a;
        C1463r8 c1463r83 = e82.f18162f.f20661a;
        c1463r82.f20501b = c1463r83.f20501b;
        c1463r82.f20500a = c1463r83.f20500a;
        c1463r82.f20504e = c1463r83.f20504e;
        c1463r82.f20502c = c1463r83.f20502c;
        C1483s3 c1483s32 = c1483s3;
        int i11 = 0;
        int i12 = computeInt32Size;
        while (i11 < list.size()) {
            C1488s8 c1488s8 = new C1488s8();
            c1488s8.f20585a = i11;
            Ci fromModel = this.f20210b.fromModel((C3) list.get(i11));
            c1488s8.f20586b = (C1389o8) fromModel.f18057a;
            fromModel.f18058b.getBytesTruncated();
            Ci ci2 = new Ci(c1488s8, fromModel);
            this.f20212d.getClass();
            int computeTagSize = CodedOutputByteBufferNano.computeTagSize(i10);
            int computeMessageSizeNoTag = CodedOutputByteBufferNano.computeMessageSizeNoTag((C1488s8) ci2.f18057a);
            int computeRawVarint32Size = computeTagSize + computeMessageSizeNoTag + ((computeMessageSizeNoTag & (-128)) == 0 ? 0 : CodedOutputByteBufferNano.computeRawVarint32Size(computeMessageSizeNoTag));
            if (arrayList2.size() != 0 && i12 + computeRawVarint32Size > 204800) {
                e83.f18162f.f20661a.f20503d = (C1488s8[]) arrayList2.toArray(new C1488s8[arrayList2.size()]);
                ArrayList arrayList3 = new ArrayList();
                arrayList.add(new Ci(e83, c1483s32));
                E8 e84 = new E8();
                e84.f18157a = e82.f18157a;
                C1513t8 c1513t83 = new C1513t8();
                e84.f18162f = c1513t83;
                c1513t83.f20661a = new C1463r8();
                C1463r8 c1463r84 = e84.f18162f.f20661a;
                C1463r8 c1463r85 = e82.f18162f.f20661a;
                c1463r84.f20501b = c1463r85.f20501b;
                c1463r84.f20500a = c1463r85.f20500a;
                c1463r84.f20504e = c1463r85.f20504e;
                c1463r84.f20502c = c1463r85.f20502c;
                c1483s32 = c1483s3;
                i12 = computeInt32Size;
                e83 = e84;
                arrayList2 = arrayList3;
            }
            arrayList2.add((C1488s8) ci2.f18057a);
            c1483s32 = new C1483s3(C1483s3.b(c1483s32, ci2.f18058b));
            i12 += computeRawVarint32Size;
            i11++;
            i10 = 4;
        }
        e83.f18162f.f20661a.f20503d = (C1488s8[]) arrayList2.toArray(new C1488s8[arrayList2.size()]);
        arrayList.add(new Ci(e83, c1483s32));
        return arrayList;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    public C1370ne(C1445qe c1445qe, B3 b32, Ea ea2, Ff ff2) {
        this.f20209a = c1445qe;
        this.f20210b = b32;
        this.f20211c = ea2;
        this.f20212d = ff2;
    }

    public final C1345me a(List<Ci> list) {
        throw new UnsupportedOperationException();
    }
}
