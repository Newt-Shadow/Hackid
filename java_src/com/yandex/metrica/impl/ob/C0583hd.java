package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.core.api.JsonParser;
import com.yandex.metrica.modules.api.RemoteConfigExtensionConfiguration;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.hd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0583hd implements JsonParser, Converter {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ JsonParser f12527a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Converter f12528b;

    public C0583hd(RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration) {
        this.f12527a = remoteConfigExtensionConfiguration.c();
        this.f12528b = remoteConfigExtensionConfiguration.a();
    }

    @Override // com.yandex.metrica.core.api.Parser
    /* renamed from: a */
    public Object parse(JSONObject jSONObject) {
        return this.f12527a.parse(jSONObject);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        return (byte[]) this.f12528b.fromModel(obj);
    }

    @Override // com.yandex.metrica.core.api.Parser
    public Object parseOrNull(Object obj) {
        return this.f12527a.parseOrNull((JSONObject) obj);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        return this.f12528b.toModel((byte[]) obj);
    }

    public Object a(byte[] bArr) {
        return this.f12528b.toModel(bArr);
    }

    public byte[] a(Object obj) {
        return (byte[]) this.f12528b.fromModel(obj);
    }
}
