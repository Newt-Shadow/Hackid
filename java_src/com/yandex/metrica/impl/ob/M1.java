package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class M1 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0770p1 f10771a;

    /* renamed from: b  reason: collision with root package name */
    private final ec.f f10772b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public M1(InterfaceC0770p1 interfaceC0770p1, Context context) {
        this(interfaceC0770p1, new Zg().b(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i10, Bundle bundle) {
        if (i10 != 1) {
            if (i10 == 2) {
                this.f10772b.reportData(bundle);
                return;
            }
            return;
        }
        this.f10771a.reportData(bundle);
    }

    M1(InterfaceC0770p1 interfaceC0770p1, ec.f fVar) {
        this.f10771a = interfaceC0770p1;
        this.f10772b = fVar;
    }
}
