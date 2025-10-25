package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.kd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1294kd implements JsonParser, Converter {

    /* renamed from: a  reason: collision with root package name */
    public final RemoteConfigExtensionConfiguration f19965a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ JsonParser f19966b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Converter f19967c;

    public C1294kd(RemoteConfigExtensionConfiguration<Object> remoteConfigExtensionConfiguration) {
        this.f19965a = remoteConfigExtensionConfiguration;
        this.f19966b = remoteConfigExtensionConfiguration.getJsonParser();
        this.f19967c = remoteConfigExtensionConfiguration.getProtobufConverter();
    }

    public final byte[] a(Object obj) {
        return (byte[]) this.f19967c.fromModel(obj);
    }

    public final Object b(JSONObject jSONObject) {
        return this.f19966b.parseOrNull(jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return (byte[]) this.f19967c.fromModel(obj);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parse(JSONObject jSONObject) {
        return this.f19966b.parse(jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Parser
    public final Object parseOrNull(JSONObject jSONObject) {
        return this.f19966b.parseOrNull(jSONObject);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return this.f19967c.toModel((byte[]) obj);
    }

    public final Object a(JSONObject jSONObject) {
        return this.f19966b.parse(jSONObject);
    }

    public final Object a(byte[] bArr) {
        return this.f19967c.toModel(bArr);
    }

    public final RemoteConfigExtensionConfiguration<Object> a() {
        return this.f19965a;
    }
}
