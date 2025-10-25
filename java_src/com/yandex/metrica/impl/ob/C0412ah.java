package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.C0487dh;
/* renamed from: com.yandex.metrica.impl.ob.ah  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0412ah {

    /* renamed from: a  reason: collision with root package name */
    private ProtobufStateStorage f11977a;

    /* renamed from: b  reason: collision with root package name */
    private C0512eh f11978b;

    /* renamed from: c  reason: collision with root package name */
    private dc.c f11979c;

    /* renamed from: d  reason: collision with root package name */
    private C0562gh f11980d;

    /* renamed from: e  reason: collision with root package name */
    private a f11981e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ah$a */
    /* loaded from: classes2.dex */
    public interface a {
    }

    public C0412ah(ProtobufStateStorage protobufStateStorage, a aVar) {
        this(protobufStateStorage, aVar, new dc.c(), new C0562gh(protobufStateStorage));
    }

    public void a(C0512eh c0512eh) {
        this.f11977a.save(c0512eh);
        this.f11978b = c0512eh;
        this.f11980d.a();
        C0487dh.a aVar = (C0487dh.a) this.f11981e;
        C0487dh.this.b();
        C0487dh.this.f12233h = false;
    }

    C0412ah(ProtobufStateStorage protobufStateStorage, a aVar, dc.c cVar, C0562gh c0562gh) {
        this.f11977a = protobufStateStorage;
        this.f11978b = (C0512eh) protobufStateStorage.read();
        this.f11979c = cVar;
        this.f11980d = c0562gh;
        this.f11981e = aVar;
    }

    public void a() {
        C0512eh c0512eh = this.f11978b;
        C0512eh c0512eh2 = new C0512eh(c0512eh.f12333a, c0512eh.f12334b, this.f11979c.currentTimeMillis(), true, true);
        this.f11977a.save(c0512eh2);
        this.f11978b = c0512eh2;
        C0487dh.a aVar = (C0487dh.a) this.f11981e;
        C0487dh.this.b();
        C0487dh.this.f12233h = false;
    }
}
