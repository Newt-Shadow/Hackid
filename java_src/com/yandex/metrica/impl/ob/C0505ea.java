package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateSerializer;
import io.appmetrica.analytics.coreutils.internal.encryption.AESEncrypter;
/* renamed from: com.yandex.metrica.impl.ob.ea  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0505ea {

    /* renamed from: a  reason: collision with root package name */
    private C0934vm f12309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0505ea(C0934vm c0934vm) {
        this.f12309a = c0934vm;
    }

    public ProtobufStateSerializer a() {
        return new C0628j9(new C0554g9(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer b() {
        return new C0628j9(new Z2(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer c() {
        return new C0628j9(new C0604i9(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer d() {
        return new C0628j9(new C0653k9(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer e() {
        return new C0628j9(new Zd(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    @Deprecated
    public ProtobufStateSerializer f() {
        return new C0628j9(new C0584he(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer g() {
        return new C0628j9(new C0703m9(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer h() {
        return new C0628j9(new C0753o9(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }

    public ProtobufStateSerializer i() {
        return new C0628j9(new C0778p9(), new C0958wm(AESEncrypter.DEFAULT_ALGORITHM, this.f12309a.b(), this.f12309a.a()));
    }
}
