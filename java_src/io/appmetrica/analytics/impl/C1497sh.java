package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.sh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1497sh implements Vm {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1539u9 f20596a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1572vh f20597b;

    public C1497sh(C1572vh c1572vh, C1539u9 c1539u9) {
        this.f20597b = c1572vh;
        this.f20596a = c1539u9;
    }

    @Override // io.appmetrica.analytics.impl.Vm
    public final void a(Object obj) {
        List list = (List) obj;
        C1539u9 c1539u9 = this.f20596a;
        if (!Rn.a((Collection) list)) {
            c1539u9.f20725d = new C1489s9[list.size()];
            for (int i10 = 0; i10 < list.size(); i10++) {
                Tk tk = (Tk) list.get(i10);
                C1489s9[] c1489s9Arr = c1539u9.f20725d;
                Map map = Lf.f18534a;
                C1489s9 c1489s9 = new C1489s9();
                Integer num = tk.f18997a;
                if (num != null) {
                    c1489s9.f20588a = num.intValue();
                }
                Integer num2 = tk.f18998b;
                if (num2 != null) {
                    c1489s9.f20589b = num2.intValue();
                }
                if (!TextUtils.isEmpty(tk.f19000d)) {
                    c1489s9.f20590c = tk.f19000d;
                }
                c1489s9.f20591d = tk.f18999c;
                c1489s9Arr[i10] = c1489s9;
                this.f20597b.f20816g += CodedOutputByteBufferNano.computeMessageSizeNoTag(c1539u9.f20725d[i10]);
                this.f20597b.f20816g += CodedOutputByteBufferNano.computeTagSize(10);
            }
        }
    }
}
