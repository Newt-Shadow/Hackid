package ne;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class s implements Iterable, jd.a {

    /* renamed from: b  reason: collision with root package name */
    public static final b f26777b = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private final String[] f26778a;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List f26779a = new ArrayList(20);

        public final a a(String name, String value) {
            kotlin.jvm.internal.m.e(name, "name");
            kotlin.jvm.internal.m.e(value, "value");
            b bVar = s.f26777b;
            bVar.d(name);
            bVar.e(value, name);
            c(name, value);
            return this;
        }

        public final a b(String line) {
            int Y;
            kotlin.jvm.internal.m.e(line, "line");
            Y = rd.b0.Y(line, ':', 1, false, 4, null);
            if (Y != -1) {
                String substring = line.substring(0, Y);
                kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                String substring2 = line.substring(Y + 1);
                kotlin.jvm.internal.m.d(substring2, "this as java.lang.String).substring(startIndex)");
                c(substring, substring2);
            } else if (line.charAt(0) == ':') {
                String substring3 = line.substring(1);
                kotlin.jvm.internal.m.d(substring3, "this as java.lang.String).substring(startIndex)");
                c("", substring3);
            } else {
                c("", line);
            }
            return this;
        }

        public final a c(String name, String value) {
            CharSequence P0;
            kotlin.jvm.internal.m.e(name, "name");
            kotlin.jvm.internal.m.e(value, "value");
            e().add(name);
            List e10 = e();
            P0 = rd.b0.P0(value);
            e10.add(P0.toString());
            return this;
        }

        public final s d() {
            Object[] array = this.f26779a.toArray(new String[0]);
            if (array != null) {
                return new s((String[]) array, null);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }

        public final List e() {
            return this.f26779a;
        }

        public final a f(String name) {
            boolean x10;
            kotlin.jvm.internal.m.e(name, "name");
            int i10 = 0;
            while (i10 < e().size()) {
                x10 = rd.y.x(name, (String) e().get(i10), true);
                if (x10) {
                    e().remove(i10);
                    e().remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        public final a g(String name, String value) {
            kotlin.jvm.internal.m.e(name, "name");
            kotlin.jvm.internal.m.e(value, "value");
            b bVar = s.f26777b;
            bVar.d(name);
            bVar.e(value, name);
            f(name);
            c(name, value);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void d(String str) {
            boolean z10;
            boolean z11;
            if (str.length() > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                int length = str.length();
                int i10 = 0;
                while (i10 < length) {
                    int i11 = i10 + 1;
                    char charAt = str.charAt(i10);
                    if ('!' <= charAt && charAt < 127) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        i10 = i11;
                    } else {
                        throw new IllegalArgumentException(oe.d.s("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str).toString());
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty".toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void e(String str, String str2) {
            String l10;
            boolean z10;
            int length = str.length();
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                char charAt = str.charAt(i10);
                boolean z11 = true;
                if (charAt != '\t') {
                    if (' ' <= charAt && charAt < 127) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (!z10) {
                        z11 = false;
                    }
                }
                if (!z11) {
                    String s10 = oe.d.s("Unexpected char %#04x at %d in %s value", Integer.valueOf(charAt), Integer.valueOf(i10), str2);
                    if (oe.d.F(str2)) {
                        l10 = "";
                    } else {
                        l10 = kotlin.jvm.internal.m.l(": ", str);
                    }
                    throw new IllegalArgumentException(kotlin.jvm.internal.m.l(s10, l10).toString());
                }
                i10 = i11;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String f(String[] strArr, String str) {
            boolean x10;
            int length = strArr.length - 2;
            int c10 = dd.c.c(length, 0, -2);
            if (c10 > length) {
                return null;
            }
            while (true) {
                int i10 = length - 2;
                x10 = rd.y.x(str, strArr[length], true);
                if (x10) {
                    return strArr[length + 1];
                }
                if (length != c10) {
                    length = i10;
                } else {
                    return null;
                }
            }
        }

        public final s g(String... namesAndValues) {
            boolean z10;
            boolean z11;
            CharSequence P0;
            kotlin.jvm.internal.m.e(namesAndValues, "namesAndValues");
            int i10 = 0;
            if (namesAndValues.length % 2 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                String[] strArr = (String[]) namesAndValues.clone();
                int length = strArr.length;
                int i11 = 0;
                while (i11 < length) {
                    int i12 = i11 + 1;
                    String str = strArr[i11];
                    if (str != null) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (z11) {
                        P0 = rd.b0.P0(str);
                        strArr[i11] = P0.toString();
                        i11 = i12;
                    } else {
                        throw new IllegalArgumentException("Headers cannot be null".toString());
                    }
                }
                int c10 = dd.c.c(0, strArr.length - 1, 2);
                if (c10 >= 0) {
                    while (true) {
                        int i13 = i10 + 2;
                        String str2 = strArr[i10];
                        String str3 = strArr[i10 + 1];
                        d(str2);
                        e(str3, str2);
                        if (i10 == c10) {
                            break;
                        }
                        i10 = i13;
                    }
                }
                return new s(strArr, null);
            }
            throw new IllegalArgumentException("Expected alternating header names and values".toString());
        }
    }

    public /* synthetic */ s(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    public boolean equals(Object obj) {
        if ((obj instanceof s) && Arrays.equals(this.f26778a, ((s) obj).f26778a)) {
            return true;
        }
        return false;
    }

    public final String g(String name) {
        kotlin.jvm.internal.m.e(name, "name");
        return f26777b.f(this.f26778a, name);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f26778a);
    }

    public final String i(int i10) {
        return this.f26778a[i10 * 2];
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        int size = size();
        xc.k[] kVarArr = new xc.k[size];
        for (int i10 = 0; i10 < size; i10++) {
            kVarArr[i10] = xc.q.a(i(i10), m(i10));
        }
        return kotlin.jvm.internal.c.a(kVarArr);
    }

    public final a l() {
        a aVar = new a();
        yc.t.w(aVar.e(), this.f26778a);
        return aVar;
    }

    public final String m(int i10) {
        return this.f26778a[(i10 * 2) + 1];
    }

    public final List n(String name) {
        List h10;
        boolean x10;
        kotlin.jvm.internal.m.e(name, "name");
        int size = size();
        ArrayList arrayList = null;
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            x10 = rd.y.x(name, i(i10), true);
            if (x10) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(m(i10));
            }
            i10 = i11;
        }
        if (arrayList == null) {
            h10 = yc.o.h();
            return h10;
        }
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        kotlin.jvm.internal.m.d(unmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return unmodifiableList;
    }

    public final int size() {
        return this.f26778a.length / 2;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int size = size();
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            String i12 = i(i10);
            String m10 = m(i10);
            sb2.append(i12);
            sb2.append(": ");
            if (oe.d.F(i12)) {
                m10 = "██";
            }
            sb2.append(m10);
            sb2.append("\n");
            i10 = i11;
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }

    private s(String[] strArr) {
        this.f26778a = strArr;
    }
}
