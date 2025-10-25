package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.InterfaceC0530fa;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.c3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0448c3 implements InterfaceC0718n {

    /* renamed from: a  reason: collision with root package name */
    private final ProtobufStateStorage f12122a;

    /* renamed from: b  reason: collision with root package name */
    private X2 f12123b;

    public C0448c3(Context context) {
        this(InterfaceC0530fa.b.a(X2.class).a(context));
    }

    public void a(List<zb.a> list, boolean z10) {
        for (zb.a aVar : list) {
        }
        X2 x22 = new X2(list, z10);
        this.f12123b = x22;
        this.f12122a.save(x22);
    }

    public boolean b() {
        return this.f12123b.f11718b;
    }

    C0448c3(ProtobufStateStorage protobufStateStorage) {
        this.f12122a = protobufStateStorage;
        this.f12123b = (X2) protobufStateStorage.read();
    }

    public List<zb.a> a() {
        return this.f12123b.f11717a;
    }
}
