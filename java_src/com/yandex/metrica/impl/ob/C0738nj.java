package com.yandex.metrica.impl.ob;

import android.os.Handler;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.nj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0738nj implements S0 {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f13023a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13024b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f13025c;

    public C0738nj(ICommonExecutor iCommonExecutor, Handler handler, ICommonExecutor iCommonExecutor2, Q q10) {
        this.f13024b = iCommonExecutor;
        this.f13023a = handler;
        this.f13025c = iCommonExecutor2;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public void a(com.yandex.metrica.j jVar, O0 o02) {
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public ICommonExecutor b() {
        return this.f13024b;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Handler c() {
        return this.f13023a;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Eb d() {
        return new C0995yb();
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public void a(Map<String, Object> map) {
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public C0887u a() {
        return new C0887u(this.f13025c);
    }
}
