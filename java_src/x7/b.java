package x7;

import android.content.Context;
import java.nio.charset.Charset;
import m6.Task;
import n2.h;
import p2.u;
import q7.g0;
import q7.t0;
import t7.f0;
import u7.j;
/* loaded from: classes.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final j f32508c = new j();

    /* renamed from: d  reason: collision with root package name */
    private static final String f32509d = e("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: e  reason: collision with root package name */
    private static final String f32510e = e("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: f  reason: collision with root package name */
    private static final h f32511f = new h() { // from class: x7.a
        @Override // n2.h
        public final Object apply(Object obj) {
            byte[] d10;
            d10 = b.d((f0) obj);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final e f32512a;

    /* renamed from: b  reason: collision with root package name */
    private final h f32513b;

    b(e eVar, h hVar) {
        this.f32512a = eVar;
        this.f32513b = hVar;
    }

    public static b b(Context context, y7.j jVar, t0 t0Var) {
        u.f(context);
        n2.j g10 = u.c().g(new com.google.android.datatransport.cct.a(f32509d, f32510e));
        n2.c b10 = n2.c.b("json");
        h hVar = f32511f;
        return new b(new e(g10.a("FIREBASE_CRASHLYTICS_REPORT", f0.class, b10, hVar), jVar.b(), t0Var), hVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] d(f0 f0Var) {
        return f32508c.M(f0Var).getBytes(Charset.forName("UTF-8"));
    }

    private static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length >= 0 && length <= 1) {
            StringBuilder sb2 = new StringBuilder(str.length() + str2.length());
            for (int i10 = 0; i10 < str.length(); i10++) {
                sb2.append(str.charAt(i10));
                if (str2.length() > i10) {
                    sb2.append(str2.charAt(i10));
                }
            }
            return sb2.toString();
        }
        throw new IllegalArgumentException("Invalid input received");
    }

    public Task c(g0 g0Var, boolean z10) {
        return this.f32512a.i(g0Var, z10).a();
    }
}
