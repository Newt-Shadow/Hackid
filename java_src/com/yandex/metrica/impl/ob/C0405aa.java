package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0906ui;
import com.yandex.metrica.impl.ob.If;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.aa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0405aa implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumMap<C0906ui.b, String> f11965a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, C0906ui.b> f11966b;

    static {
        EnumMap<C0906ui.b, String> enumMap = new EnumMap<>(C0906ui.b.class);
        f11965a = enumMap;
        HashMap hashMap = new HashMap();
        f11966b = hashMap;
        C0906ui.b bVar = C0906ui.b.WIFI;
        enumMap.put((EnumMap<C0906ui.b, String>) bVar, (C0906ui.b) "wifi");
        C0906ui.b bVar2 = C0906ui.b.CELL;
        enumMap.put((EnumMap<C0906ui.b, String>) bVar2, (C0906ui.b) "cell");
        hashMap.put("wifi", bVar);
        hashMap.put("cell", bVar2);
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.t fromModel(C0906ui c0906ui) {
        If.t tVar = new If.t();
        if (c0906ui.f13733a != null) {
            If.u uVar = new If.u();
            tVar.f10373a = uVar;
            C0906ui.a aVar = c0906ui.f13733a;
            uVar.f10375a = aVar.f13735a;
            uVar.f10376b = aVar.f13736b;
        }
        if (c0906ui.f13734b != null) {
            If.u uVar2 = new If.u();
            tVar.f10374b = uVar2;
            C0906ui.a aVar2 = c0906ui.f13734b;
            uVar2.f10375a = aVar2.f13735a;
            uVar2.f10376b = aVar2.f13736b;
        }
        return tVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C0906ui toModel(If.t tVar) {
        If.u uVar = tVar.f10373a;
        C0906ui.a aVar = uVar != null ? new C0906ui.a(uVar.f10375a, uVar.f10376b) : null;
        If.u uVar2 = tVar.f10374b;
        return new C0906ui(aVar, uVar2 != null ? new C0906ui.a(uVar2.f10375a, uVar2.f10376b) : null);
    }
}
