package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.f1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0521f1 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0750o6 f12356a;

    /* renamed from: b  reason: collision with root package name */
    private final J2 f12357b;

    /* renamed from: c  reason: collision with root package name */
    private final C f12358c;

    /* renamed from: d  reason: collision with root package name */
    private final C0935w f12359d;

    /* renamed from: e  reason: collision with root package name */
    private final List<InterfaceC0671l2> f12360e;

    public C0521f1(Context context, ICommonExecutor iCommonExecutor) {
        this(A2.a(21) ? new C0775p6(context) : new C0799q6(), new J2(context, iCommonExecutor), new C(context, iCommonExecutor), new C0935w());
    }

    public synchronized void a(InterfaceC0671l2 interfaceC0671l2) {
        this.f12360e.add(interfaceC0671l2);
    }

    public C b() {
        return this.f12358c;
    }

    public InterfaceC0750o6 c() {
        return this.f12356a;
    }

    public J2 d() {
        return this.f12357b;
    }

    public synchronized void e() {
        for (InterfaceC0671l2 interfaceC0671l2 : this.f12360e) {
            interfaceC0671l2.a();
        }
    }

    public synchronized void f() {
        for (InterfaceC0671l2 interfaceC0671l2 : this.f12360e) {
            interfaceC0671l2.b();
        }
    }

    public C0935w a() {
        return this.f12359d;
    }

    C0521f1(InterfaceC0750o6 interfaceC0750o6, J2 j22, C c10, C0935w c0935w) {
        ArrayList arrayList = new ArrayList();
        this.f12360e = arrayList;
        this.f12356a = interfaceC0750o6;
        arrayList.add(interfaceC0750o6);
        this.f12357b = j22;
        arrayList.add(j22);
        this.f12358c = c10;
        arrayList.add(c10);
        this.f12359d = c0935w;
        arrayList.add(c0935w);
    }
}
