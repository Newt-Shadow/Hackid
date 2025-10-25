package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.app.Activity;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@SuppressLint({"UseSparseArrays"})
/* renamed from: com.yandex.metrica.impl.ob.mk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0714mk implements InterfaceC0981xl {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f12960a;

    /* renamed from: b  reason: collision with root package name */
    private final dc.d f12961b;

    /* renamed from: c  reason: collision with root package name */
    private Map<Long, Long> f12962c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0714mk() {
        this(C0761oh.a(), new dc.c());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0981xl
    public void a(Activity activity, boolean z10) {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public void a(Throwable th, C0957wl c0957wl) {
    }

    C0714mk(M0 m02, dc.d dVar) {
        this.f12962c = new HashMap();
        this.f12960a = m02;
        this.f12961b = dVar;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public boolean a(C0541fl c0541fl) {
        return false;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0981xl
    public synchronized void a(Activity activity, long j10) {
        this.f12962c.put(Long.valueOf(j10), Long.valueOf(this.f12961b.currentTimeMillis()));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0933vl
    public synchronized void a(long j10, Activity activity, C0491dl c0491dl, List<C0837rl> list, C0541fl c0541fl, Bk bk) {
        this.f12961b.currentTimeMillis();
        if (this.f12962c.get(Long.valueOf(j10)) != null) {
            this.f12962c.remove(Long.valueOf(j10));
        } else {
            this.f12960a.reportError("ui_parsing_diagnostics", new IllegalStateException("Unexpected situation: no start time"));
        }
    }
}
