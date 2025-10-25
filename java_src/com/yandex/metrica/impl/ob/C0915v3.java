package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.v3  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0915v3 implements InterfaceC0840s0<a, a> {

    /* renamed from: a  reason: collision with root package name */
    private final a f13786a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f13787b;

    /* renamed from: com.yandex.metrica.impl.ob.v3$a */
    /* loaded from: classes2.dex */
    public static final class a implements InterfaceC0912v0 {

        /* renamed from: a  reason: collision with root package name */
        private final Map<String, String> f13788a;

        /* renamed from: b  reason: collision with root package name */
        private final EnumC0888u0 f13789b;

        public a(Map<String, String> map, EnumC0888u0 enumC0888u0) {
            this.f13788a = map;
            this.f13789b = enumC0888u0;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0912v0
        public EnumC0888u0 a() {
            return this.f13789b;
        }

        public final Map<String, String> b() {
            return this.f13788a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    if (!kotlin.jvm.internal.m.a(this.f13788a, aVar.f13788a) || !kotlin.jvm.internal.m.a(this.f13789b, aVar.f13789b)) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            int i10;
            Map<String, String> map = this.f13788a;
            int i11 = 0;
            if (map != null) {
                i10 = map.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = i10 * 31;
            EnumC0888u0 enumC0888u0 = this.f13789b;
            if (enumC0888u0 != null) {
                i11 = enumC0888u0.hashCode();
            }
            return i12 + i11;
        }

        public String toString() {
            return "Candidate(clids=" + this.f13788a + ", source=" + this.f13789b + ")";
        }
    }

    public C0915v3(a aVar, List<a> list) {
        this.f13786a = aVar;
        this.f13787b = list;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0840s0
    public List<a> a() {
        return this.f13787b;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0840s0
    public a b() {
        return this.f13786a;
    }

    public a c() {
        return this.f13786a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C0915v3) {
                C0915v3 c0915v3 = (C0915v3) obj;
                if (!kotlin.jvm.internal.m.a(this.f13786a, c0915v3.f13786a) || !kotlin.jvm.internal.m.a(this.f13787b, c0915v3.f13787b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        a aVar = this.f13786a;
        int i11 = 0;
        if (aVar != null) {
            i10 = aVar.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        List<a> list = this.f13787b;
        if (list != null) {
            i11 = list.hashCode();
        }
        return i12 + i11;
    }

    public String toString() {
        return "ClidsInfo(chosen=" + this.f13786a + ", candidates=" + this.f13787b + ")";
    }
}
