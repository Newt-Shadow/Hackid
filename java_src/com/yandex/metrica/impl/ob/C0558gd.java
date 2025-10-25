package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.Eg;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.gd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0558gd extends Eg {

    /* renamed from: m  reason: collision with root package name */
    private final C0706mc f12456m;

    /* renamed from: com.yandex.metrica.impl.ob.gd$b */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final C0787pi f12457a;

        /* renamed from: b  reason: collision with root package name */
        public final C0706mc f12458b;

        public b(C0787pi c0787pi, C0706mc c0706mc) {
            this.f12457a = c0787pi;
            this.f12458b = c0706mc;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.gd$c */
    /* loaded from: classes2.dex */
    public static class c implements Eg.d<C0558gd, b> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f12459a;

        /* renamed from: b  reason: collision with root package name */
        private final Cg f12460b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(Context context, Cg cg) {
            this.f12459a = context;
            this.f12460b = cg;
        }

        @Override // com.yandex.metrica.impl.ob.Eg.d
        public C0558gd a(b bVar) {
            C0558gd c0558gd = new C0558gd(bVar.f12458b);
            Cg cg = this.f12460b;
            Context context = this.f12459a;
            cg.getClass();
            c0558gd.b(A2.a(context, context.getPackageName()));
            Cg cg2 = this.f12460b;
            Context context2 = this.f12459a;
            cg2.getClass();
            c0558gd.a(String.valueOf(A2.b(context2, context2.getPackageName())));
            c0558gd.a(bVar.f12457a);
            c0558gd.a(U.a());
            c0558gd.a(F0.g().n().a());
            c0558gd.e(this.f12459a.getPackageName());
            c0558gd.a(F0.g().r().a(this.f12459a));
            c0558gd.a(F0.g().a().a());
            return c0558gd;
        }
    }

    public List<String> A() {
        return v().x();
    }

    @Override // com.yandex.metrica.impl.ob.Eg
    public String toString() {
        return "RequestConfig{mSuitableCollectionConfig=" + this.f12456m + "} " + super.toString();
    }

    public C0706mc z() {
        return this.f12456m;
    }

    private C0558gd(C0706mc c0706mc) {
        this.f12456m = c0706mc;
    }
}
