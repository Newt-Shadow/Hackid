package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Hg;
import java.util.List;
/* loaded from: classes2.dex */
public class D4 extends Hg {

    /* renamed from: o  reason: collision with root package name */
    private List<String> f9891o;

    /* renamed from: p  reason: collision with root package name */
    private String f9892p;

    /* renamed from: q  reason: collision with root package name */
    private Boolean f9893q;

    public String B() {
        return this.f9892p;
    }

    public List<String> C() {
        return this.f9891o;
    }

    public Boolean D() {
        return this.f9893q;
    }

    public void a(List<String> list) {
        this.f9891o = list;
    }

    public void h(String str) {
        this.f9892p = str;
    }

    @Override // com.yandex.metrica.impl.ob.Hg, com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "DiagnosticRequestConfig{mDiagnosticHosts=" + this.f9891o + ", mApiKey='" + this.f9892p + "', statisticsSending=" + this.f9893q + "} " + super.toString();
    }

    public void a(Boolean bool) {
        this.f9893q = bool;
    }

    /* loaded from: classes2.dex */
    public static final class a extends Eg.a<D3.a, a> {

        /* renamed from: d  reason: collision with root package name */
        public final String f9894d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f9895e;

        public a(String str, String str2, String str3, String str4, Boolean bool) {
            super(str, str2, str3);
            this.f9894d = str4;
            this.f9895e = ((Boolean) Tl.a(bool, Boolean.TRUE)).booleanValue();
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public Object a(Object obj) {
            Boolean bool;
            D3.a aVar = (D3.a) obj;
            String str = aVar.f9874a;
            String str2 = this.f10008a;
            if (str != null) {
                str2 = str;
            }
            String str3 = aVar.f9875b;
            String str4 = this.f10009b;
            if (str3 != null) {
                str4 = str3;
            }
            String str5 = aVar.f9876c;
            String str6 = this.f10010c;
            if (str5 != null) {
                str6 = str5;
            }
            String str7 = aVar.f9877d;
            String str8 = this.f9894d;
            if (str7 != null) {
                str8 = str7;
            }
            Boolean bool2 = aVar.f9885l;
            Boolean valueOf = Boolean.valueOf(this.f9895e);
            if (bool2 == null) {
                bool = valueOf;
            } else {
                bool = bool2;
            }
            return new a(str2, str4, str6, str8, bool);
        }

        @Override // com.yandex.metrica.impl.ob.Dg
        public boolean b(Object obj) {
            String str;
            String str2;
            String str3;
            D3.a aVar = (D3.a) obj;
            String str4 = aVar.f9874a;
            if ((str4 != null && !str4.equals(this.f10008a)) || (((str = aVar.f9875b) != null && !str.equals(this.f10009b)) || (((str2 = aVar.f9876c) != null && !str2.equals(this.f10010c)) || ((str3 = aVar.f9877d) != null && !str3.equals(this.f9894d))))) {
                return false;
            }
            return true;
        }

        public a(D3.a aVar) {
            this(aVar.f9874a, aVar.f9875b, aVar.f9876c, aVar.f9877d, aVar.f9885l);
        }
    }

    /* loaded from: classes2.dex */
    public static class b extends Hg.a<D4, a> {
        public b(Context context, String str) {
            super(context, str);
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public Eg a(Object obj) {
            Eg.c cVar = (Eg.c) obj;
            D4 a10 = a(cVar);
            a10.a(cVar.f10013a.k());
            a10.h(((a) cVar.f10014b).f9894d);
            a10.a(Boolean.valueOf(((a) cVar.f10014b).f9895e));
            return a10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.yandex.metrica.impl.ob.Eg.b
        public Eg a() {
            return new D4();
        }
    }
}
