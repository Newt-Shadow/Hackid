package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.Eg;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;
/* loaded from: classes2.dex */
public class Hg extends Eg {

    /* renamed from: m  reason: collision with root package name */
    private String f10207m;

    /* renamed from: n  reason: collision with root package name */
    private String f10208n;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static abstract class a<T extends Hg, A extends Eg.a> extends Eg.b<T, A> {

        /* renamed from: c  reason: collision with root package name */
        private final C0717mn f10209c;

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Context context, String str) {
            this(context, str, new C0717mn());
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.yandex.metrica.impl.ob.Eg] */
        public T a(Eg.c<A> cVar) {
            String str;
            String str2;
            ?? a10 = a();
            a10.a(U.a());
            C0447c2 a11 = F0.g().n().a();
            a10.a(a11);
            a10.a(cVar.f10013a);
            String str3 = cVar.f10014b.f10008a;
            String str4 = null;
            if (str3 == null) {
                if (a11.a() != null) {
                    str3 = a11.a().b();
                } else {
                    str3 = null;
                }
            }
            a10.c(str3);
            String str5 = this.f10012b;
            String str6 = cVar.f10014b.f10009b;
            Context context = this.f10011a;
            if (TextUtils.isEmpty(str6)) {
                str6 = A2.a(context, str5);
            }
            a10.b(str6);
            String str7 = this.f10012b;
            String str8 = cVar.f10014b.f10010c;
            Context context2 = this.f10011a;
            if (TextUtils.isEmpty(str8)) {
                str8 = String.valueOf(A2.b(context2, str7));
            }
            a10.a(str8);
            a10.e(this.f10012b);
            a10.a(F0.g().r().a(this.f10011a));
            a10.a(F0.g().a().a());
            List<String> a12 = C0546g1.a(this.f10011a).a();
            if (!a12.isEmpty()) {
                str4 = a12.get(0);
            }
            a10.d(str4);
            T t10 = (T) a10;
            String packageName = this.f10011a.getPackageName();
            ApplicationInfo a13 = this.f10209c.a(this.f10011a, this.f10012b, 0);
            String str9 = "1";
            if (a13 != null) {
                if ((a13.flags & 2) != 0) {
                    str2 = "1";
                } else {
                    str2 = CommonUrlParts.Values.FALSE_INTEGER;
                }
                t10.f(str2);
                if ((a13.flags & 1) == 0) {
                    str9 = CommonUrlParts.Values.FALSE_INTEGER;
                }
                t10.g(str9);
            } else if (TextUtils.equals(packageName, this.f10012b)) {
                if ((this.f10011a.getApplicationInfo().flags & 2) != 0) {
                    str = "1";
                } else {
                    str = CommonUrlParts.Values.FALSE_INTEGER;
                }
                t10.f(str);
                if ((this.f10011a.getApplicationInfo().flags & 1) == 0) {
                    str9 = CommonUrlParts.Values.FALSE_INTEGER;
                }
                t10.g(str9);
            } else {
                t10.f(CommonUrlParts.Values.FALSE_INTEGER);
                t10.g(CommonUrlParts.Values.FALSE_INTEGER);
            }
            return t10;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Context context, String str, C0717mn c0717mn) {
            super(context, str);
            this.f10209c = c0717mn;
        }
    }

    public String A() {
        return this.f10208n;
    }

    void f(String str) {
        this.f10207m = str;
    }

    void g(String str) {
        this.f10208n = str;
    }

    @Override // com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "CoreRequestConfig{mAppDebuggable='" + this.f10207m + "', mAppSystem='" + this.f10208n + "'} " + super.toString();
    }

    public String z() {
        return this.f10207m;
    }
}
