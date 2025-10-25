package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Pf {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Of> f11101a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Sf f11102b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f11103c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f11104a;

        a(Context context) {
            this.f11104a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf sf2 = Pf.this.f11102b;
            Context context = this.f11104a;
            sf2.getClass();
            R2.a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final Pf f11106a = new Pf(P.g().c(), new Sf());
    }

    Pf(ICommonExecutor iCommonExecutor, Sf sf2) {
        this.f11103c = iCommonExecutor;
        this.f11102b = sf2;
    }

    private Of b(Context context, String str) {
        this.f11102b.getClass();
        if (R2.k() == null) {
            this.f11103c.execute(new a(context));
        }
        Of of2 = new Of(this.f11103c, context, str);
        this.f11101a.put(str, of2);
        return of2;
    }

    public static Pf a() {
        return b.f11106a;
    }

    public Of a(Context context, String str) {
        Of of2 = this.f11101a.get(str);
        if (of2 == null) {
            synchronized (this.f11101a) {
                of2 = this.f11101a.get(str);
                if (of2 == null) {
                    Of b10 = b(context, str);
                    b10.d(str);
                    of2 = b10;
                }
            }
        }
        return of2;
    }

    public Of a(Context context, com.yandex.metrica.f fVar) {
        Of of2 = this.f11101a.get(fVar.apiKey);
        if (of2 == null) {
            synchronized (this.f11101a) {
                of2 = this.f11101a.get(fVar.apiKey);
                if (of2 == null) {
                    Of b10 = b(context, fVar.apiKey);
                    b10.a(fVar);
                    of2 = b10;
                }
            }
        }
        return of2;
    }
}
