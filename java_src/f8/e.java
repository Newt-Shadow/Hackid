package f8;

import android.util.Base64;
import android.util.JsonWriter;
import d8.g;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements d8.e, g {

    /* renamed from: a  reason: collision with root package name */
    private e f15917a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15918b = true;

    /* renamed from: c  reason: collision with root package name */
    private final JsonWriter f15919c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f15920d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f15921e;

    /* renamed from: f  reason: collision with root package name */
    private final d8.d f15922f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f15923g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Writer writer, Map map, Map map2, d8.d dVar, boolean z10) {
        this.f15919c = new JsonWriter(writer);
        this.f15920d = map;
        this.f15921e = map2;
        this.f15922f = dVar;
        this.f15923g = z10;
    }

    private boolean t(Object obj) {
        if (obj != null && !obj.getClass().isArray() && !(obj instanceof Collection) && !(obj instanceof Date) && !(obj instanceof Enum) && !(obj instanceof Number)) {
            return false;
        }
        return true;
    }

    private e w(String str, Object obj) {
        y();
        this.f15919c.name(str);
        if (obj == null) {
            this.f15919c.nullValue();
            return this;
        }
        return k(obj, false);
    }

    private e x(String str, Object obj) {
        if (obj == null) {
            return this;
        }
        y();
        this.f15919c.name(str);
        return k(obj, false);
    }

    private void y() {
        if (this.f15918b) {
            e eVar = this.f15917a;
            if (eVar != null) {
                eVar.y();
                this.f15917a.f15918b = false;
                this.f15917a = null;
                this.f15919c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    @Override // d8.e
    public d8.e a(d8.c cVar, boolean z10) {
        return q(cVar.b(), z10);
    }

    @Override // d8.e
    public d8.e b(d8.c cVar, long j10) {
        return o(cVar.b(), j10);
    }

    @Override // d8.e
    public d8.e c(d8.c cVar, Object obj) {
        return p(cVar.b(), obj);
    }

    @Override // d8.e
    public d8.e f(d8.c cVar, int i10) {
        return n(cVar.b(), i10);
    }

    @Override // d8.e
    public d8.e g(d8.c cVar, double d10) {
        return m(cVar.b(), d10);
    }

    public e h(double d10) {
        y();
        this.f15919c.value(d10);
        return this;
    }

    public e i(int i10) {
        y();
        this.f15919c.value(i10);
        return this;
    }

    public e j(long j10) {
        y();
        this.f15919c.value(j10);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e k(Object obj, boolean z10) {
        int[] iArr;
        Class<?> cls;
        int i10 = 0;
        if (z10 && t(obj)) {
            Object[] objArr = new Object[1];
            if (obj == null) {
                cls = null;
            } else {
                cls = obj.getClass();
            }
            objArr[0] = cls;
            throw new d8.b(String.format("%s cannot be encoded inline", objArr));
        } else if (obj == null) {
            this.f15919c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f15919c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                return s((byte[]) obj);
            }
            this.f15919c.beginArray();
            if (obj instanceof int[]) {
                int length = ((int[]) obj).length;
                while (i10 < length) {
                    this.f15919c.value(iArr[i10]);
                    i10++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length2 = jArr.length;
                while (i10 < length2) {
                    j(jArr[i10]);
                    i10++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length3 = dArr.length;
                while (i10 < length3) {
                    this.f15919c.value(dArr[i10]);
                    i10++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length4 = zArr.length;
                while (i10 < length4) {
                    this.f15919c.value(zArr[i10]);
                    i10++;
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    k(number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    k(obj2, false);
                }
            }
            this.f15919c.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.f15919c.beginArray();
            for (Object obj3 : (Collection) obj) {
                k(obj3, false);
            }
            this.f15919c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f15919c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    p((String) key, entry.getValue());
                } catch (ClassCastException e10) {
                    throw new d8.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                }
            }
            this.f15919c.endObject();
            return this;
        } else {
            d8.d dVar = (d8.d) this.f15920d.get(obj.getClass());
            if (dVar != null) {
                return v(dVar, obj, z10);
            }
            d8.f fVar = (d8.f) this.f15921e.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                if (obj instanceof f) {
                    i(((f) obj).c());
                } else {
                    d(((Enum) obj).name());
                }
                return this;
            } else {
                return v(this.f15922f, obj, z10);
            }
        }
    }

    @Override // d8.g
    /* renamed from: l */
    public e d(String str) {
        y();
        this.f15919c.value(str);
        return this;
    }

    public e m(String str, double d10) {
        y();
        this.f15919c.name(str);
        return h(d10);
    }

    public e n(String str, int i10) {
        y();
        this.f15919c.name(str);
        return i(i10);
    }

    public e o(String str, long j10) {
        y();
        this.f15919c.name(str);
        return j(j10);
    }

    public e p(String str, Object obj) {
        if (this.f15923g) {
            return x(str, obj);
        }
        return w(str, obj);
    }

    public e q(String str, boolean z10) {
        y();
        this.f15919c.name(str);
        return e(z10);
    }

    @Override // d8.g
    /* renamed from: r */
    public e e(boolean z10) {
        y();
        this.f15919c.value(z10);
        return this;
    }

    public e s(byte[] bArr) {
        y();
        if (bArr == null) {
            this.f15919c.nullValue();
        } else {
            this.f15919c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        y();
        this.f15919c.flush();
    }

    e v(d8.d dVar, Object obj, boolean z10) {
        if (!z10) {
            this.f15919c.beginObject();
        }
        dVar.a(obj, this);
        if (!z10) {
            this.f15919c.endObject();
        }
        return this;
    }
}
