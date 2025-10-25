package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0935w;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
/* renamed from: com.yandex.metrica.impl.ob.oc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0756oc {

    /* renamed from: a  reason: collision with root package name */
    public final C0706mc f13064a;

    /* renamed from: b  reason: collision with root package name */
    public final Ac f13065b;

    /* renamed from: com.yandex.metrica.impl.ob.oc$a */
    /* loaded from: classes2.dex */
    public enum a {
        UNKNOWN(CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE),
        FOREGROUND("fg"),
        BACKGROUND("bg"),
        VISIBLE("visible");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13071a;

        a(String str) {
            this.f13071a = str;
        }

        public String a() {
            return this.f13071a;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f13071a;
        }

        public static a a(String str) {
            a aVar = UNKNOWN;
            a[] values = values();
            for (int i10 = 0; i10 < 4; i10++) {
                a aVar2 = values[i10];
                if (aVar2.f13071a.equals(str)) {
                    aVar = aVar2;
                }
            }
            return aVar;
        }

        public static a a(C0935w.a aVar) {
            a aVar2 = UNKNOWN;
            if (aVar != null) {
                int ordinal = aVar.ordinal();
                if (ordinal != 1) {
                    return ordinal != 2 ? aVar2 : VISIBLE;
                }
                return BACKGROUND;
            }
            return aVar2;
        }
    }

    public C0756oc(C0706mc c0706mc, Ac ac2) {
        this.f13064a = c0706mc;
        this.f13065b = ac2;
    }

    public String toString() {
        return "LocationCollectionConfig{arguments=" + this.f13064a + ", preconditions=" + this.f13065b + '}';
    }
}
