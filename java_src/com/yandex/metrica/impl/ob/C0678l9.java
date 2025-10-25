package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.core.api.ProtobufStateSerializer;
import com.yandex.metrica.core.api.ProtobufStateStorage;
/* renamed from: com.yandex.metrica.impl.ob.l9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0678l9 implements ProtobufStateStorage {

    /* renamed from: a  reason: collision with root package name */
    private final String f12781a;

    /* renamed from: b  reason: collision with root package name */
    private final R7 f12782b;

    /* renamed from: c  reason: collision with root package name */
    private final ProtobufStateSerializer f12783c;

    /* renamed from: d  reason: collision with root package name */
    private final ProtobufConverter f12784d;

    public C0678l9(String str, R7 r72, ProtobufStateSerializer protobufStateSerializer, ProtobufConverter protobufConverter) {
        this.f12781a = str;
        this.f12782b = r72;
        this.f12783c = protobufStateSerializer;
        this.f12784d = protobufConverter;
    }

    @Override // com.yandex.metrica.core.api.ProtobufStateStorage
    public void delete() {
        this.f12782b.b(this.f12781a);
    }

    @Override // com.yandex.metrica.core.api.ProtobufStateStorage
    public Object read() {
        try {
            byte[] a10 = this.f12782b.a(this.f12781a);
            if (A2.a(a10)) {
                return this.f12784d.toModel(this.f12783c.defaultValue());
            }
            return this.f12784d.toModel(this.f12783c.toState(a10));
        } catch (Throwable unused) {
            return this.f12784d.toModel(this.f12783c.defaultValue());
        }
    }

    @Override // com.yandex.metrica.core.api.ProtobufStateStorage
    public void save(Object obj) {
        this.f12782b.a(this.f12781a, this.f12783c.toByteArray(this.f12784d.fromModel(obj)));
    }
}
