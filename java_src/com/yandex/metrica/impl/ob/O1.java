package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.yandex.metrica.impl.ob.C0808qf;
import java.util.List;
/* loaded from: classes2.dex */
class O1 implements InterfaceC0415ak {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0808qf f10924a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ P1 f10925b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public O1(P1 p12, C0808qf c0808qf) {
        this.f10925b = p12;
        this.f10924a = c0808qf;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0415ak
    public void a(Zj zj) {
        C0808qf c0808qf = this.f10924a;
        List<Tj> c10 = zj.c();
        if (!A2.b(c10)) {
            c0808qf.f13300d = new C0808qf.e[c10.size()];
            for (int i10 = 0; i10 < c10.size(); i10++) {
                Tj tj = c10.get(i10);
                C0808qf.e[] eVarArr = c0808qf.f13300d;
                int i11 = J1.f10472e;
                C0808qf.e eVar = new C0808qf.e();
                if (tj.b() != null) {
                    eVar.f13373a = tj.b().intValue();
                }
                if (tj.c() != null) {
                    eVar.f13374b = tj.c().intValue();
                }
                if (!TextUtils.isEmpty(tj.a())) {
                    eVar.f13375c = tj.a();
                }
                eVar.f13376d = tj.d();
                eVarArr[i10] = eVar;
                P1.a(this.f10925b, CodedOutputByteBufferNano.computeMessageSizeNoTag(c0808qf.f13300d[i10]));
                P1.a(this.f10925b, CodedOutputByteBufferNano.computeTagSize(10));
            }
        }
    }
}
