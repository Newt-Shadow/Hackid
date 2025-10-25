package com.google.crypto.tink.internal;

import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayDeque;
/* loaded from: classes.dex */
public abstract class JsonParser {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonElementTypeAdapter f8337a = new JsonElementTypeAdapter(null);

    /* loaded from: classes.dex */
    private static final class JsonElementTypeAdapter extends TypeAdapter {
        private JsonElementTypeAdapter() {
        }

        private com.google.gson.i g(c9.a aVar, c9.b bVar) {
            int i10 = a.f8338a[bVar.ordinal()];
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 == 6) {
                            aVar.H();
                            return com.google.gson.k.f9349a;
                        }
                        throw new IllegalStateException("Unexpected token: " + bVar);
                    }
                    return new com.google.gson.n(Boolean.valueOf(aVar.z()));
                }
                return new com.google.gson.n(new b(aVar.C()));
            }
            String C = aVar.C();
            if (JsonParser.a(C)) {
                return new com.google.gson.n(C);
            }
            throw new IOException("illegal characters in string");
        }

        private com.google.gson.i h(c9.a aVar, c9.b bVar) {
            int i10 = a.f8338a[bVar.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    return null;
                }
                aVar.t();
                return new com.google.gson.l();
            }
            aVar.b();
            return new com.google.gson.f();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: f */
        public com.google.gson.i c(c9.a aVar) {
            String str;
            boolean z10;
            c9.b X = aVar.X();
            com.google.gson.i h10 = h(aVar, X);
            if (h10 == null) {
                return g(aVar, X);
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            while (true) {
                if (aVar.u()) {
                    if (h10 instanceof com.google.gson.l) {
                        str = aVar.f0();
                        if (!JsonParser.a(str)) {
                            throw new IOException("illegal characters in string");
                        }
                    } else {
                        str = null;
                    }
                    c9.b X2 = aVar.X();
                    com.google.gson.i h11 = h(aVar, X2);
                    if (h11 != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (h11 == null) {
                        h11 = g(aVar, X2);
                    }
                    if (h10 instanceof com.google.gson.f) {
                        ((com.google.gson.f) h10).t(h11);
                    } else {
                        com.google.gson.l lVar = (com.google.gson.l) h10;
                        if (!lVar.B(str)) {
                            lVar.t(str, h11);
                        } else {
                            throw new IOException("duplicate key: " + str);
                        }
                    }
                    if (z10) {
                        arrayDeque.addLast(h10);
                        if (arrayDeque.size() <= 100) {
                            h10 = h11;
                        } else {
                            throw new IOException("too many recursions");
                        }
                    } else {
                        continue;
                    }
                } else {
                    if (h10 instanceof com.google.gson.f) {
                        aVar.g();
                    } else {
                        aVar.r();
                    }
                    if (arrayDeque.isEmpty()) {
                        return h10;
                    }
                    h10 = (com.google.gson.i) arrayDeque.removeLast();
                }
            }
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: i */
        public void e(c9.c cVar, com.google.gson.i iVar) {
            throw new UnsupportedOperationException("write is not supported");
        }

        /* synthetic */ JsonElementTypeAdapter(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8338a;

        static {
            int[] iArr = new int[c9.b.values().length];
            f8338a = iArr;
            try {
                iArr[c9.b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8338a[c9.b.BEGIN_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8338a[c9.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8338a[c9.b.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8338a[c9.b.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8338a[c9.b.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends Number {

        /* renamed from: a  reason: collision with root package name */
        private final String f8339a;

        public b(String str) {
            this.f8339a = str;
        }

        @Override // java.lang.Number
        public double doubleValue() {
            return Double.parseDouble(this.f8339a);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof b) {
                return this.f8339a.equals(((b) obj).f8339a);
            }
            return false;
        }

        @Override // java.lang.Number
        public float floatValue() {
            return Float.parseFloat(this.f8339a);
        }

        public int hashCode() {
            return this.f8339a.hashCode();
        }

        @Override // java.lang.Number
        public int intValue() {
            try {
                try {
                    return Integer.parseInt(this.f8339a);
                } catch (NumberFormatException unused) {
                    return (int) Long.parseLong(this.f8339a);
                }
            } catch (NumberFormatException unused2) {
                return new BigDecimal(this.f8339a).intValue();
            }
        }

        @Override // java.lang.Number
        public long longValue() {
            try {
                return Long.parseLong(this.f8339a);
            } catch (NumberFormatException unused) {
                return new BigDecimal(this.f8339a).longValue();
            }
        }

        public String toString() {
            return this.f8339a;
        }
    }

    public static boolean a(String str) {
        int length = str.length();
        int i10 = 0;
        while (i10 != length) {
            char charAt = str.charAt(i10);
            i10++;
            if (Character.isSurrogate(charAt)) {
                if (Character.isLowSurrogate(charAt) || i10 == length || !Character.isLowSurrogate(str.charAt(i10))) {
                    return false;
                }
                i10++;
            }
        }
        return true;
    }
}
