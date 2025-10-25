package com.yandex.metrica.impl.ob;

import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;
/* loaded from: classes2.dex */
public class Q1 extends C1011z3 {

    /* renamed from: c  reason: collision with root package name */
    protected C0960x0 f11134c;

    /* renamed from: d  reason: collision with root package name */
    protected C0609ie f11135d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f11136e;

    /* renamed from: f  reason: collision with root package name */
    private final String f11137f;

    /* JADX INFO: Access modifiers changed from: protected */
    public Q1(A3 a32, CounterConfiguration counterConfiguration) {
        this(a32, counterConfiguration, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0443bn c0443bn) {
        this.f11134c = new C0960x0(c0443bn);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle c() {
        Bundle bundle = new Bundle();
        CounterConfiguration b10 = b();
        synchronized (b10) {
            bundle.putParcelable("COUNTER_CFG_OBJ", b10);
        }
        A3 a10 = a();
        synchronized (a10) {
            bundle.putParcelable("PROCESS_CFG_OBJ", a10);
        }
        return bundle;
    }

    public String d() {
        return this.f11134c.a();
    }

    public String e() {
        return this.f11137f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f11136e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        this.f11136e = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f11136e = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Q1(A3 a32, CounterConfiguration counterConfiguration, String str) {
        super(a32, counterConfiguration);
        this.f11136e = true;
        this.f11137f = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC0637ji interfaceC0637ji) {
        if (interfaceC0637ji != null) {
            b().z(((C0588hi) interfaceC0637ji).e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0609ie c0609ie) {
        this.f11135d = c0609ie;
    }
}
