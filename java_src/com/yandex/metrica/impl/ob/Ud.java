package com.yandex.metrica.impl.ob;

import java.util.List;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Ud implements InterfaceC0840s0<a, C0509ee> {

    /* renamed from: a  reason: collision with root package name */
    public final C0509ee f11503a;

    /* renamed from: b  reason: collision with root package name */
    public final List<a> f11504b;

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f11505a;

        /* renamed from: b  reason: collision with root package name */
        public final JSONObject f11506b;

        /* renamed from: c  reason: collision with root package name */
        public final EnumC0888u0 f11507c;

        public a(String str, JSONObject jSONObject, EnumC0888u0 enumC0888u0) {
            this.f11505a = str;
            this.f11506b = jSONObject;
            this.f11507c = enumC0888u0;
        }

        public String toString() {
            return "Candidate{trackingId='" + this.f11505a + "', additionalParams=" + this.f11506b + ", source=" + this.f11507c + '}';
        }
    }

    public Ud(C0509ee c0509ee, List<a> list) {
        this.f11503a = c0509ee;
        this.f11504b = list;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0840s0
    public List<a> a() {
        return this.f11504b;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0840s0
    public C0509ee b() {
        return this.f11503a;
    }

    public String toString() {
        return "PreloadInfoData{chosenPreloadInfo=" + this.f11503a + ", candidates=" + this.f11504b + '}';
    }
}
