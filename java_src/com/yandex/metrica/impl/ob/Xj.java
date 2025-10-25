package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* loaded from: classes2.dex */
public class Xj extends AbstractC0812qj {

    /* renamed from: a  reason: collision with root package name */
    private int f11809a;

    /* renamed from: b  reason: collision with root package name */
    private AbstractC0812qj f11810b;

    public Xj(Context context, ICommonExecutor iCommonExecutor) {
        this(context.getApplicationContext(), new C0717mn(), iCommonExecutor);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void a() {
        int i10 = this.f11809a + 1;
        this.f11809a = i10;
        if (i10 == 1) {
            this.f11810b.a();
        }
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void b() {
        int i10 = this.f11809a - 1;
        this.f11809a = i10;
        if (i10 == 0) {
            this.f11810b.b();
        }
    }

    Xj(Context context, C0717mn c0717mn, ICommonExecutor iCommonExecutor) {
        if (c0717mn.a(context, "android.hardware.telephony")) {
            this.f11810b = new Ij(context, iCommonExecutor);
        } else {
            this.f11810b = new Kj();
        }
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void a(InterfaceC0415ak interfaceC0415ak) {
        this.f11810b.a(interfaceC0415ak);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public synchronized void a(InterfaceC0931vj interfaceC0931vj) {
        this.f11810b.a(interfaceC0931vj);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public void a(boolean z10) {
        this.f11810b.a(z10);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0812qj
    public void a(C0787pi c0787pi) {
        this.f11810b.a(c0787pi);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0731nc
    public void a(C0706mc c0706mc) {
        this.f11810b.a(c0706mc);
    }
}
