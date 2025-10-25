package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.os.ResultReceiver;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.Mg;
import java.util.Map;
/* loaded from: classes2.dex */
public class D3 {

    /* renamed from: a  reason: collision with root package name */
    public final Mg.b f9871a;

    /* renamed from: b  reason: collision with root package name */
    public final a f9872b;

    /* renamed from: c  reason: collision with root package name */
    public final ResultReceiver f9873c;

    /* loaded from: classes2.dex */
    public static class a implements Dg<a, a> {

        /* renamed from: a  reason: collision with root package name */
        public final String f9874a;

        /* renamed from: b  reason: collision with root package name */
        public final String f9875b;

        /* renamed from: c  reason: collision with root package name */
        public final String f9876c;

        /* renamed from: d  reason: collision with root package name */
        public final String f9877d;

        /* renamed from: e  reason: collision with root package name */
        public final Boolean f9878e;

        /* renamed from: f  reason: collision with root package name */
        public final Location f9879f;

        /* renamed from: g  reason: collision with root package name */
        public final Boolean f9880g;

        /* renamed from: h  reason: collision with root package name */
        public final Integer f9881h;

        /* renamed from: i  reason: collision with root package name */
        public final Integer f9882i;

        /* renamed from: j  reason: collision with root package name */
        public final Integer f9883j;

        /* renamed from: k  reason: collision with root package name */
        public final Boolean f9884k;

        /* renamed from: l  reason: collision with root package name */
        public final Boolean f9885l;

        /* renamed from: m  reason: collision with root package name */
        public final Map<String, String> f9886m;

        /* renamed from: n  reason: collision with root package name */
        public final Integer f9887n;

        /* renamed from: o  reason: collision with root package name */
        public final Boolean f9888o;

        /* renamed from: p  reason: collision with root package name */
        public final Boolean f9889p;

        /* renamed from: q  reason: collision with root package name */
        public final Boolean f9890q;

        a(String str, String str2, String str3, String str4, Boolean bool, Location location, Boolean bool2, Integer num, Integer num2, Integer num3, Boolean bool3, Boolean bool4, Map<String, String> map, Integer num4, Boolean bool5, Boolean bool6, Boolean bool7) {
            this.f9874a = str;
            this.f9875b = str2;
            this.f9876c = str3;
            this.f9877d = str4;
            this.f9878e = bool;
            this.f9879f = location;
            this.f9880g = bool2;
            this.f9881h = num;
            this.f9882i = num2;
            this.f9883j = num3;
            this.f9884k = bool3;
            this.f9885l = bool4;
            this.f9886m = map;
            this.f9887n = num4;
            this.f9888o = bool5;
            this.f9889p = bool6;
            this.f9890q = bool7;
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public boolean b(a aVar) {
            return equals(aVar);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            String str = this.f9874a;
            if (str == null ? aVar.f9874a != null : !str.equals(aVar.f9874a)) {
                return false;
            }
            String str2 = this.f9875b;
            if (str2 == null ? aVar.f9875b != null : !str2.equals(aVar.f9875b)) {
                return false;
            }
            String str3 = this.f9876c;
            if (str3 == null ? aVar.f9876c != null : !str3.equals(aVar.f9876c)) {
                return false;
            }
            String str4 = this.f9877d;
            if (str4 == null ? aVar.f9877d != null : !str4.equals(aVar.f9877d)) {
                return false;
            }
            Boolean bool = this.f9878e;
            if (bool == null ? aVar.f9878e != null : !bool.equals(aVar.f9878e)) {
                return false;
            }
            Location location = this.f9879f;
            if (location == null ? aVar.f9879f != null : !location.equals(aVar.f9879f)) {
                return false;
            }
            Boolean bool2 = this.f9880g;
            if (bool2 == null ? aVar.f9880g != null : !bool2.equals(aVar.f9880g)) {
                return false;
            }
            Integer num = this.f9881h;
            if (num == null ? aVar.f9881h != null : !num.equals(aVar.f9881h)) {
                return false;
            }
            Integer num2 = this.f9882i;
            if (num2 == null ? aVar.f9882i != null : !num2.equals(aVar.f9882i)) {
                return false;
            }
            Integer num3 = this.f9883j;
            if (num3 == null ? aVar.f9883j != null : !num3.equals(aVar.f9883j)) {
                return false;
            }
            Boolean bool3 = this.f9884k;
            if (bool3 == null ? aVar.f9884k != null : !bool3.equals(aVar.f9884k)) {
                return false;
            }
            Boolean bool4 = this.f9885l;
            if (bool4 == null ? aVar.f9885l != null : !bool4.equals(aVar.f9885l)) {
                return false;
            }
            Map<String, String> map = this.f9886m;
            if (map == null ? aVar.f9886m != null : !map.equals(aVar.f9886m)) {
                return false;
            }
            Integer num4 = this.f9887n;
            if (num4 == null ? aVar.f9887n != null : !num4.equals(aVar.f9887n)) {
                return false;
            }
            Boolean bool5 = this.f9888o;
            if (bool5 == null ? aVar.f9888o != null : !bool5.equals(aVar.f9888o)) {
                return false;
            }
            Boolean bool6 = this.f9889p;
            if (bool6 == null ? aVar.f9889p != null : !bool6.equals(aVar.f9889p)) {
                return false;
            }
            Boolean bool7 = this.f9890q;
            if (bool7 != null) {
                return bool7.equals(aVar.f9890q);
            }
            if (aVar.f9890q == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            int i17;
            int i18;
            int i19;
            int i20;
            int i21;
            int i22;
            int i23;
            int i24;
            int i25;
            String str = this.f9874a;
            int i26 = 0;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            int i27 = i10 * 31;
            String str2 = this.f9875b;
            if (str2 != null) {
                i11 = str2.hashCode();
            } else {
                i11 = 0;
            }
            int i28 = (i27 + i11) * 31;
            String str3 = this.f9876c;
            if (str3 != null) {
                i12 = str3.hashCode();
            } else {
                i12 = 0;
            }
            int i29 = (i28 + i12) * 31;
            String str4 = this.f9877d;
            if (str4 != null) {
                i13 = str4.hashCode();
            } else {
                i13 = 0;
            }
            int i30 = (i29 + i13) * 31;
            Boolean bool = this.f9878e;
            if (bool != null) {
                i14 = bool.hashCode();
            } else {
                i14 = 0;
            }
            int i31 = (i30 + i14) * 31;
            Location location = this.f9879f;
            if (location != null) {
                i15 = location.hashCode();
            } else {
                i15 = 0;
            }
            int i32 = (i31 + i15) * 31;
            Boolean bool2 = this.f9880g;
            if (bool2 != null) {
                i16 = bool2.hashCode();
            } else {
                i16 = 0;
            }
            int i33 = (i32 + i16) * 31;
            Integer num = this.f9881h;
            if (num != null) {
                i17 = num.hashCode();
            } else {
                i17 = 0;
            }
            int i34 = (i33 + i17) * 31;
            Integer num2 = this.f9882i;
            if (num2 != null) {
                i18 = num2.hashCode();
            } else {
                i18 = 0;
            }
            int i35 = (i34 + i18) * 31;
            Integer num3 = this.f9883j;
            if (num3 != null) {
                i19 = num3.hashCode();
            } else {
                i19 = 0;
            }
            int i36 = (i35 + i19) * 31;
            Boolean bool3 = this.f9884k;
            if (bool3 != null) {
                i20 = bool3.hashCode();
            } else {
                i20 = 0;
            }
            int i37 = (i36 + i20) * 31;
            Boolean bool4 = this.f9885l;
            if (bool4 != null) {
                i21 = bool4.hashCode();
            } else {
                i21 = 0;
            }
            int i38 = (i37 + i21) * 31;
            Map<String, String> map = this.f9886m;
            if (map != null) {
                i22 = map.hashCode();
            } else {
                i22 = 0;
            }
            int i39 = (i38 + i22) * 31;
            Integer num4 = this.f9887n;
            if (num4 != null) {
                i23 = num4.hashCode();
            } else {
                i23 = 0;
            }
            int i40 = (i39 + i23) * 31;
            Boolean bool5 = this.f9888o;
            if (bool5 != null) {
                i24 = bool5.hashCode();
            } else {
                i24 = 0;
            }
            int i41 = (i40 + i24) * 31;
            Boolean bool6 = this.f9889p;
            if (bool6 != null) {
                i25 = bool6.hashCode();
            } else {
                i25 = 0;
            }
            int i42 = (i41 + i25) * 31;
            Boolean bool7 = this.f9890q;
            if (bool7 != null) {
                i26 = bool7.hashCode();
            }
            return i42 + i26;
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public a a(a aVar) {
            String str = this.f9874a;
            String str2 = aVar.f9874a;
            if (str == null) {
                str = str2;
            }
            String str3 = this.f9875b;
            String str4 = aVar.f9875b;
            if (str3 == null) {
                str3 = str4;
            }
            String str5 = this.f9876c;
            String str6 = aVar.f9876c;
            if (str5 == null) {
                str5 = str6;
            }
            String str7 = this.f9877d;
            String str8 = aVar.f9877d;
            if (str7 == null) {
                str7 = str8;
            }
            Boolean bool = this.f9878e;
            Boolean bool2 = aVar.f9878e;
            if (bool == null) {
                bool = bool2;
            }
            Location location = this.f9879f;
            Location location2 = aVar.f9879f;
            if (location == null) {
                location = location2;
            }
            Boolean bool3 = this.f9880g;
            Boolean bool4 = aVar.f9880g;
            if (bool3 == null) {
                bool3 = bool4;
            }
            Integer num = this.f9881h;
            Integer num2 = aVar.f9881h;
            if (num == null) {
                num = num2;
            }
            Integer num3 = this.f9882i;
            Integer num4 = aVar.f9882i;
            if (num3 == null) {
                num3 = num4;
            }
            Integer num5 = this.f9883j;
            Integer num6 = aVar.f9883j;
            if (num5 == null) {
                num5 = num6;
            }
            Boolean bool5 = this.f9884k;
            Boolean bool6 = aVar.f9884k;
            if (bool5 == null) {
                bool5 = bool6;
            }
            Boolean bool7 = this.f9885l;
            Boolean bool8 = aVar.f9885l;
            if (bool7 == null) {
                bool7 = bool8;
            }
            Map<String, String> map = this.f9886m;
            Map<String, String> map2 = aVar.f9886m;
            if (map == null) {
                map = map2;
            }
            Integer num7 = this.f9887n;
            Map<String, String> map3 = map;
            Integer num8 = aVar.f9887n;
            if (num7 == null) {
                num7 = num8;
            }
            Boolean bool9 = this.f9888o;
            Integer num9 = num7;
            Boolean bool10 = bool9 == null ? aVar.f9888o : bool9;
            Boolean bool11 = this.f9889p;
            Boolean bool12 = bool11 == null ? aVar.f9889p : bool11;
            Boolean bool13 = this.f9890q;
            return new a(str, str3, str5, str7, bool, location, bool3, num, num3, num5, bool5, bool7, map3, num9, bool10, bool12, bool13 == null ? aVar.f9890q : bool13);
        }

        public a(CounterConfiguration counterConfiguration, Map<String, String> map) {
            this(counterConfiguration.v(), counterConfiguration.p(), counterConfiguration.j(), counterConfiguration.b(), counterConfiguration.Q(), counterConfiguration.G(), counterConfiguration.P(), counterConfiguration.N(), counterConfiguration.I(), counterConfiguration.C(), counterConfiguration.R(), counterConfiguration.O(), map, counterConfiguration.K(), counterConfiguration.L(), counterConfiguration.E(), counterConfiguration.S());
        }

        public a() {
            this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
        }
    }

    public D3(C1011z3 c1011z3) {
        this(new Mg.b(c1011z3), new a(c1011z3.b(), c1011z3.a().a()), c1011z3.a().c());
    }

    public D3(Mg.b bVar, a aVar, ResultReceiver resultReceiver) {
        this.f9871a = bVar;
        this.f9872b = aVar;
        this.f9873c = resultReceiver;
    }
}
