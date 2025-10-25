package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.Jf;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.fa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC0530fa<T> {

    /* renamed from: com.yandex.metrica.impl.ob.fa$b */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<Class<?>, InterfaceC0530fa<?>> f12401a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC0530fa<C0811qi> f12402b;

        /* renamed from: c  reason: collision with root package name */
        private final InterfaceC0530fa<Jf.e> f12403c;

        /* renamed from: d  reason: collision with root package name */
        private final InterfaceC0530fa<List<Bd>> f12404d;

        /* renamed from: e  reason: collision with root package name */
        private final InterfaceC0530fa<C0877td> f12405e;

        /* renamed from: f  reason: collision with root package name */
        private final InterfaceC0530fa<C0512eh> f12406f;
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        private final InterfaceC0530fa<C0509ee> f12407g;
        @Deprecated

        /* renamed from: h  reason: collision with root package name */
        private final InterfaceC0530fa<Z1> f12408h;

        /* renamed from: i  reason: collision with root package name */
        private final InterfaceC0530fa<Ud> f12409i;

        /* renamed from: j  reason: collision with root package name */
        private final InterfaceC0530fa<X2> f12410j;

        /* renamed from: k  reason: collision with root package name */
        private final InterfaceC0530fa<C0915v3> f12411k;

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$a */
        /* loaded from: classes2.dex */
        class a extends AbstractC0555ga<C0915v3> {
            a(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("clids_info", r72, new C0505ea(new C0934vm(context)).c(), new C0969x9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0128b extends AbstractC0555ga<C0811qi> {
            C0128b(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("startup_state", r72, new C0505ea(new C0934vm(context)).i(), new X9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$c */
        /* loaded from: classes2.dex */
        class c extends AbstractC0555ga<Jf.e> {
            c(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("provided_request_state", r72, new C0505ea(new C0934vm(context)).g(), new R9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$d */
        /* loaded from: classes2.dex */
        class d extends AbstractC0555ga<List<Bd>> {
            d(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("permission_list", r72, new C0505ea(new C0934vm(context)).d(), new P9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$e */
        /* loaded from: classes2.dex */
        class e extends AbstractC0555ga<C0877td> {
            e(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("app_permissions_state", r72, new C0505ea(new C0934vm(context)).a(), new C0825r9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$f */
        /* loaded from: classes2.dex */
        class f extends AbstractC0555ga<C0512eh> {
            f(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("sdk_fingerprinting", r72, new C0505ea(new C0934vm(context)).h(), new V9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$g */
        /* loaded from: classes2.dex */
        class g extends AbstractC0555ga<C0509ee> {
            g(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("preload_info", r72, new C0505ea(new C0934vm(context)).f(), new C0534fe());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$h */
        /* loaded from: classes2.dex */
        class h extends AbstractC0555ga<Z1> {
            h(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("satellite_clids_info", r72, new C0728n9(), new T9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$i */
        /* loaded from: classes2.dex */
        class i extends AbstractC0555ga<Ud> {
            i(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("preload_info_data", r72, new C0505ea(new C0934vm(context)).e(), new Wd());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$j */
        /* loaded from: classes2.dex */
        class j extends AbstractC0555ga<X2> {
            j(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected ProtobufStateStorage a(Context context, R7 r72) {
                return new C0678l9("auto_inapp_collecting_info_data", r72, new C0505ea(new C0934vm(context)).b(), new Y2());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 c(Context context) {
                return C0629ja.a(context).a();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC0555ga
            protected R7 d(Context context) {
                return C0629ja.a(context).b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.yandex.metrica.impl.ob.fa$b$k */
        /* loaded from: classes2.dex */
        public static final class k {

            /* renamed from: a  reason: collision with root package name */
            static final b f12412a = new b();
        }

        public static <T> InterfaceC0530fa<T> a(Class<T> cls) {
            return (InterfaceC0530fa<T>) k.f12412a.f12401a.get(cls);
        }

        public static <T> InterfaceC0530fa<Collection<T>> b(Class<T> cls) {
            return (InterfaceC0530fa<Collection<T>>) k.f12412a.f12401a.get(cls);
        }

        private b() {
            HashMap<Class<?>, InterfaceC0530fa<?>> hashMap = new HashMap<>();
            this.f12401a = hashMap;
            C0128b c0128b = new C0128b(this);
            this.f12402b = c0128b;
            c cVar = new c(this);
            this.f12403c = cVar;
            d dVar = new d(this);
            this.f12404d = dVar;
            e eVar = new e(this);
            this.f12405e = eVar;
            f fVar = new f(this);
            this.f12406f = fVar;
            g gVar = new g(this);
            this.f12407g = gVar;
            h hVar = new h(this);
            this.f12408h = hVar;
            i iVar = new i(this);
            this.f12409i = iVar;
            j jVar = new j(this);
            this.f12410j = jVar;
            a aVar = new a(this);
            this.f12411k = aVar;
            hashMap.put(C0811qi.class, c0128b);
            hashMap.put(Jf.e.class, cVar);
            hashMap.put(Bd.class, dVar);
            hashMap.put(C0877td.class, eVar);
            hashMap.put(C0512eh.class, fVar);
            hashMap.put(C0509ee.class, gVar);
            hashMap.put(Z1.class, hVar);
            hashMap.put(Ud.class, iVar);
            hashMap.put(X2.class, jVar);
            hashMap.put(C0915v3.class, aVar);
        }
    }

    ProtobufStateStorage a(Context context);

    ProtobufStateStorage b(Context context);
}
