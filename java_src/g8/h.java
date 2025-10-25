package g8;

import g8.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final Map f16318a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f16319b;

    /* renamed from: c  reason: collision with root package name */
    private final d8.d f16320c;

    /* loaded from: classes.dex */
    public static final class a implements e8.b {

        /* renamed from: d  reason: collision with root package name */
        private static final d8.d f16321d = new d8.d() { // from class: g8.g
            @Override // d8.d
            public final void a(Object obj, Object obj2) {
                h.a.e(obj, (d8.e) obj2);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final Map f16322a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private final Map f16323b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        private d8.d f16324c = f16321d;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void e(Object obj, d8.e eVar) {
            throw new d8.b("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public h c() {
            return new h(new HashMap(this.f16322a), new HashMap(this.f16323b), this.f16324c);
        }

        public a d(e8.a aVar) {
            aVar.a(this);
            return this;
        }

        @Override // e8.b
        /* renamed from: f */
        public a a(Class cls, d8.d dVar) {
            this.f16322a.put(cls, dVar);
            this.f16323b.remove(cls);
            return this;
        }
    }

    h(Map map, Map map2, d8.d dVar) {
        this.f16318a = map;
        this.f16319b = map2;
        this.f16320c = dVar;
    }

    public static a a() {
        return new a();
    }

    public void b(Object obj, OutputStream outputStream) {
        new f(outputStream, this.f16318a, this.f16319b, this.f16320c).t(obj);
    }

    public byte[] c(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
