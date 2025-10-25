package f8;

import d8.g;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class d implements e8.b {

    /* renamed from: e  reason: collision with root package name */
    private static final d8.d f15907e = new d8.d() { // from class: f8.a
        @Override // d8.d
        public final void a(Object obj, Object obj2) {
            d.l(obj, (d8.e) obj2);
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private static final d8.f f15908f = new d8.f() { // from class: f8.b
        @Override // d8.f
        public final void a(Object obj, Object obj2) {
            ((g) obj2).d((String) obj);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private static final d8.f f15909g = new d8.f() { // from class: f8.c
        @Override // d8.f
        public final void a(Object obj, Object obj2) {
            d.n((Boolean) obj, (g) obj2);
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private static final b f15910h = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final Map f15911a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map f15912b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private d8.d f15913c = f15907e;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15914d = false;

    /* loaded from: classes.dex */
    class a implements d8.a {
        a() {
        }

        @Override // d8.a
        public void a(Object obj, Writer writer) {
            e eVar = new e(writer, d.this.f15911a, d.this.f15912b, d.this.f15913c, d.this.f15914d);
            eVar.k(obj, false);
            eVar.u();
        }

        @Override // d8.a
        public String b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    /* loaded from: classes.dex */
    private static final class b implements d8.f {

        /* renamed from: a  reason: collision with root package name */
        private static final DateFormat f15916a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f15916a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // d8.f
        /* renamed from: b */
        public void a(Date date, g gVar) {
            gVar.d(f15916a.format(date));
        }
    }

    public d() {
        p(String.class, f15908f);
        p(Boolean.class, f15909g);
        p(Date.class, f15910h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, d8.e eVar) {
        throw new d8.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Boolean bool, g gVar) {
        gVar.e(bool.booleanValue());
    }

    public d8.a i() {
        return new a();
    }

    public d j(e8.a aVar) {
        aVar.a(this);
        return this;
    }

    public d k(boolean z10) {
        this.f15914d = z10;
        return this;
    }

    @Override // e8.b
    /* renamed from: o */
    public d a(Class cls, d8.d dVar) {
        this.f15911a.put(cls, dVar);
        this.f15912b.remove(cls);
        return this;
    }

    public d p(Class cls, d8.f fVar) {
        this.f15912b.put(cls, fVar);
        this.f15911a.remove(cls);
        return this;
    }
}
