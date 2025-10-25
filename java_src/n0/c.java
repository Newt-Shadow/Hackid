package n0;

import android.content.Context;
import id.l;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import pd.k;
import td.l0;
/* loaded from: classes.dex */
public final class c implements ld.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f26073a;

    /* renamed from: b  reason: collision with root package name */
    private final k0.b f26074b;

    /* renamed from: c  reason: collision with root package name */
    private final l f26075c;

    /* renamed from: d  reason: collision with root package name */
    private final l0 f26076d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f26077e;

    /* renamed from: f  reason: collision with root package name */
    private volatile j0.i f26078f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Context f26079e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c f26080f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, c cVar) {
            super(0);
            this.f26079e = context;
            this.f26080f = cVar;
        }

        @Override // id.a
        /* renamed from: b */
        public final File invoke() {
            Context applicationContext = this.f26079e;
            m.d(applicationContext, "applicationContext");
            return b.a(applicationContext, this.f26080f.f26073a);
        }
    }

    public c(String name, k0.b bVar, l produceMigrations, l0 scope) {
        m.e(name, "name");
        m.e(produceMigrations, "produceMigrations");
        m.e(scope, "scope");
        this.f26073a = name;
        this.f26074b = bVar;
        this.f26075c = produceMigrations;
        this.f26076d = scope;
        this.f26077e = new Object();
    }

    @Override // ld.c
    /* renamed from: d */
    public j0.i a(Context thisRef, k property) {
        j0.i iVar;
        m.e(thisRef, "thisRef");
        m.e(property, "property");
        j0.i iVar2 = this.f26078f;
        if (iVar2 == null) {
            synchronized (this.f26077e) {
                if (this.f26078f == null) {
                    Context applicationContext = thisRef.getApplicationContext();
                    o0.e eVar = o0.e.f26913a;
                    k0.b bVar = this.f26074b;
                    l lVar = this.f26075c;
                    m.d(applicationContext, "applicationContext");
                    this.f26078f = eVar.b(bVar, (List) lVar.invoke(applicationContext), this.f26076d, new a(applicationContext, this));
                }
                iVar = this.f26078f;
                m.b(iVar);
            }
            return iVar;
        }
        return iVar2;
    }
}
