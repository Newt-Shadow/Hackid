package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.YandexMetricaConfig;
/* renamed from: com.yandex.metrica.impl.ob.ua  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0898ua {

    /* renamed from: com.yandex.metrica.impl.ob.ua$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0741nm<C0826ra, C0803qa> {
        a(C0898ua c0898ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public C0803qa a(C0826ra c0826ra) {
            return c0826ra.f13490a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$b */
    /* loaded from: classes2.dex */
    public class b implements InterfaceC0741nm<C0826ra, C0803qa> {
        b(C0898ua c0898ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public C0803qa a(C0826ra c0826ra) {
            return c0826ra.f13492c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$c */
    /* loaded from: classes2.dex */
    public class c implements InterfaceC0946wa {
        c(C0898ua c0898ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0946wa
        public long a(Z8 z82) {
            return z82.c(Long.MAX_VALUE);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0946wa
        public void a(Z8 z82, long j10) {
            z82.e(j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$d */
    /* loaded from: classes2.dex */
    public class d implements InterfaceC0741nm<C0826ra, C0803qa> {
        d(C0898ua c0898ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0741nm
        public C0803qa a(C0826ra c0826ra) {
            return c0826ra.f13491b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$e */
    /* loaded from: classes2.dex */
    public class e implements InterfaceC0946wa {
        e(C0898ua c0898ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0946wa
        public long a(Z8 z82) {
            return z82.b(Long.MAX_VALUE);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0946wa
        public void a(Z8 z82, long j10) {
            z82.d(j10);
        }
    }

    public C0874ta<YandexMetricaConfig> a(Context context, Q0 q02) {
        Xl xl = new Xl();
        return new C0874ta<>(context, q02, "activation", new C0729na(xl, new C0994ya()), new a(this), new C0754oa(xl));
    }

    public C0874ta<C0915v3> b(Context context, Q0 q02) {
        return new C0874ta<>(context, q02, "clids_info", new C0779pa(), new d(this), new e(this));
    }

    public C0874ta<Ud> c(Context context, Q0 q02) {
        return new C0874ta<>(context, q02, "preload_info", new C0970xa(), new b(this), new c(this));
    }
}
