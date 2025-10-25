package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0437bh;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.ch  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0462ch implements CacheControlHttpsConnectionPerformer.Client {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C0512eh f12186a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C0412ah f12187b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ C0437bh f12188c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0462ch(C0437bh c0437bh, C0512eh c0512eh, C0412ah c0412ah) {
        this.f12188c = c0437bh;
        this.f12186a = c0512eh;
        this.f12187b = c0412ah;
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public String getOldETag() {
        return this.f12186a.f12334b;
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onError() {
        this.f12187b.a();
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onNotModified() {
        dc.c cVar;
        C0412ah c0412ah = this.f12187b;
        C0512eh c0512eh = this.f12186a;
        List<C0587hh> list = c0512eh.f12333a;
        String str = c0512eh.f12334b;
        cVar = this.f12188c.f12057f;
        c0412ah.a(new C0512eh(list, str, cVar.currentTimeMillis(), true, false));
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onResponse(String str, byte[] bArr) {
        C0437bh.b bVar;
        C0921v9 c0921v9;
        dc.c cVar;
        bVar = this.f12188c.f12054c;
        c0921v9 = this.f12188c.f12055d;
        List<C0587hh> a10 = bVar.a(c0921v9.a(bArr, "af9202nao18gswqp"));
        C0412ah c0412ah = this.f12187b;
        cVar = this.f12188c.f12057f;
        c0412ah.a(new C0512eh(a10, str, cVar.currentTimeMillis(), true, false));
    }
}
