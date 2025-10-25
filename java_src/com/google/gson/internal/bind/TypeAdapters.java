package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.i;
import com.google.gson.internal.f0;
import com.google.gson.internal.x;
import com.google.gson.internal.z;
import com.google.gson.j;
import com.google.gson.q;
import com.google.gson.w;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* loaded from: classes.dex */
public abstract class TypeAdapters {
    public static final TypeAdapter A;
    public static final TypeAdapter B;
    public static final w C;
    public static final TypeAdapter D;
    public static final w E;
    public static final TypeAdapter F;
    public static final w G;
    public static final TypeAdapter H;
    public static final w I;
    public static final TypeAdapter J;
    public static final w K;
    public static final TypeAdapter L;
    public static final w M;
    public static final TypeAdapter N;
    public static final w O;
    public static final TypeAdapter P;
    public static final w Q;
    public static final TypeAdapter R;
    public static final w S;
    public static final TypeAdapter T;
    public static final w U;
    public static final TypeAdapter V;
    public static final w W;
    public static final w X;

    /* renamed from: a  reason: collision with root package name */
    public static final TypeAdapter f9231a;

    /* renamed from: b  reason: collision with root package name */
    public static final w f9232b;

    /* renamed from: c  reason: collision with root package name */
    public static final TypeAdapter f9233c;

    /* renamed from: d  reason: collision with root package name */
    public static final w f9234d;

    /* renamed from: e  reason: collision with root package name */
    public static final TypeAdapter f9235e;

    /* renamed from: f  reason: collision with root package name */
    public static final TypeAdapter f9236f;

    /* renamed from: g  reason: collision with root package name */
    public static final w f9237g;

    /* renamed from: h  reason: collision with root package name */
    public static final TypeAdapter f9238h;

    /* renamed from: i  reason: collision with root package name */
    public static final w f9239i;

    /* renamed from: j  reason: collision with root package name */
    public static final TypeAdapter f9240j;

    /* renamed from: k  reason: collision with root package name */
    public static final w f9241k;

    /* renamed from: l  reason: collision with root package name */
    public static final TypeAdapter f9242l;

    /* renamed from: m  reason: collision with root package name */
    public static final w f9243m;

    /* renamed from: n  reason: collision with root package name */
    public static final TypeAdapter f9244n;

    /* renamed from: o  reason: collision with root package name */
    public static final w f9245o;

    /* renamed from: p  reason: collision with root package name */
    public static final TypeAdapter f9246p;

    /* renamed from: q  reason: collision with root package name */
    public static final w f9247q;

    /* renamed from: r  reason: collision with root package name */
    public static final TypeAdapter f9248r;

    /* renamed from: s  reason: collision with root package name */
    public static final w f9249s;

    /* renamed from: t  reason: collision with root package name */
    public static final TypeAdapter f9250t;

    /* renamed from: u  reason: collision with root package name */
    public static final TypeAdapter f9251u;

    /* renamed from: v  reason: collision with root package name */
    public static final TypeAdapter f9252v;

    /* renamed from: w  reason: collision with root package name */
    public static final TypeAdapter f9253w;

    /* renamed from: x  reason: collision with root package name */
    public static final w f9254x;

    /* renamed from: y  reason: collision with root package name */
    public static final TypeAdapter f9255y;

    /* renamed from: z  reason: collision with root package name */
    public static final TypeAdapter f9256z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9271a;

        static {
            int[] iArr = new int[c9.b.values().length];
            f9271a = iArr;
            try {
                iArr[c9.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9271a[c9.b.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9271a[c9.b.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        TypeAdapter b10 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Class c(c9.a aVar) {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?\nSee " + f0.a("java-lang-class-unsupported"));
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Class cls) {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?\nSee " + f0.a("java-lang-class-unsupported"));
            }
        }.b();
        f9231a = b10;
        f9232b = b(Class.class, b10);
        TypeAdapter b11 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.2
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public BitSet c(c9.a aVar) {
                BitSet bitSet = new BitSet();
                aVar.b();
                c9.b X2 = aVar.X();
                int i10 = 0;
                while (X2 != c9.b.END_ARRAY) {
                    int i11 = a.f9271a[X2.ordinal()];
                    boolean z10 = true;
                    if (i11 != 1 && i11 != 2) {
                        if (i11 == 3) {
                            z10 = aVar.z();
                        } else {
                            throw new q("Invalid bitset value type: " + X2 + "; at path " + aVar.j());
                        }
                    } else {
                        int j02 = aVar.j0();
                        if (j02 == 0) {
                            z10 = false;
                        } else if (j02 != 1) {
                            throw new q("Invalid bitset value " + j02 + ", expected 0 or 1; at path " + aVar.q());
                        }
                    }
                    if (z10) {
                        bitSet.set(i10);
                    }
                    i10++;
                    X2 = aVar.X();
                }
                aVar.g();
                return bitSet;
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, BitSet bitSet) {
                cVar.e();
                int length = bitSet.length();
                for (int i10 = 0; i10 < length; i10++) {
                    cVar.t0(bitSet.get(i10) ? 1L : 0L);
                }
                cVar.h();
            }
        }.b();
        f9233c = b11;
        f9234d = b(BitSet.class, b11);
        TypeAdapter typeAdapter = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.3
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Boolean c(c9.a aVar) {
                c9.b X2 = aVar.X();
                if (X2 == c9.b.NULL) {
                    aVar.H();
                    return null;
                } else if (X2 == c9.b.STRING) {
                    return Boolean.valueOf(Boolean.parseBoolean(aVar.C()));
                } else {
                    return Boolean.valueOf(aVar.z());
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Boolean bool) {
                cVar.A0(bool);
            }
        };
        f9235e = typeAdapter;
        f9236f = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.4
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Boolean c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return Boolean.valueOf(aVar.C());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Boolean bool) {
                String bool2;
                if (bool == null) {
                    bool2 = "null";
                } else {
                    bool2 = bool.toString();
                }
                cVar.J0(bool2);
            }
        };
        f9237g = c(Boolean.TYPE, Boolean.class, typeAdapter);
        TypeAdapter typeAdapter2 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.5
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                try {
                    int j02 = aVar.j0();
                    if (j02 <= 255 && j02 >= -128) {
                        return Byte.valueOf((byte) j02);
                    }
                    throw new q("Lossy conversion from " + j02 + " to byte; at path " + aVar.q());
                } catch (NumberFormatException e10) {
                    throw new q(e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                } else {
                    cVar.t0(number.byteValue());
                }
            }
        };
        f9238h = typeAdapter2;
        f9239i = c(Byte.TYPE, Byte.class, typeAdapter2);
        TypeAdapter typeAdapter3 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.6
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                try {
                    int j02 = aVar.j0();
                    if (j02 <= 65535 && j02 >= -32768) {
                        return Short.valueOf((short) j02);
                    }
                    throw new q("Lossy conversion from " + j02 + " to short; at path " + aVar.q());
                } catch (NumberFormatException e10) {
                    throw new q(e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                } else {
                    cVar.t0(number.shortValue());
                }
            }
        };
        f9240j = typeAdapter3;
        f9241k = c(Short.TYPE, Short.class, typeAdapter3);
        TypeAdapter typeAdapter4 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.7
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.j0());
                } catch (NumberFormatException e10) {
                    throw new q(e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                } else {
                    cVar.t0(number.intValue());
                }
            }
        };
        f9242l = typeAdapter4;
        f9243m = c(Integer.TYPE, Integer.class, typeAdapter4);
        TypeAdapter b12 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.8
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public AtomicInteger c(c9.a aVar) {
                try {
                    return new AtomicInteger(aVar.j0());
                } catch (NumberFormatException e10) {
                    throw new q(e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, AtomicInteger atomicInteger) {
                cVar.t0(atomicInteger.get());
            }
        }.b();
        f9244n = b12;
        f9245o = b(AtomicInteger.class, b12);
        TypeAdapter b13 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.9
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public AtomicBoolean c(c9.a aVar) {
                return new AtomicBoolean(aVar.z());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, AtomicBoolean atomicBoolean) {
                cVar.T0(atomicBoolean.get());
            }
        }.b();
        f9246p = b13;
        f9247q = b(AtomicBoolean.class, b13);
        TypeAdapter b14 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.10
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public AtomicIntegerArray c(c9.a aVar) {
                ArrayList arrayList = new ArrayList();
                aVar.b();
                while (aVar.u()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.j0()));
                    } catch (NumberFormatException e10) {
                        throw new q(e10);
                    }
                }
                aVar.g();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i10 = 0; i10 < size; i10++) {
                    atomicIntegerArray.set(i10, ((Integer) arrayList.get(i10)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, AtomicIntegerArray atomicIntegerArray) {
                cVar.e();
                int length = atomicIntegerArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    cVar.t0(atomicIntegerArray.get(i10));
                }
                cVar.h();
            }
        }.b();
        f9248r = b14;
        f9249s = b(AtomicIntegerArray.class, b14);
        f9250t = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.11
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.E0());
                } catch (NumberFormatException e10) {
                    throw new q(e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                } else {
                    cVar.t0(number.longValue());
                }
            }
        };
        f9251u = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.12
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return Float.valueOf((float) aVar.S());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                    return;
                }
                if (!(number instanceof Float)) {
                    number = Float.valueOf(number.floatValue());
                }
                cVar.D0(number);
            }
        };
        f9252v = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.13
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Number c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return Double.valueOf(aVar.S());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Number number) {
                if (number == null) {
                    cVar.x();
                } else {
                    cVar.q0(number.doubleValue());
                }
            }
        };
        TypeAdapter typeAdapter5 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.14
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Character c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                String C2 = aVar.C();
                if (C2.length() == 1) {
                    return Character.valueOf(C2.charAt(0));
                }
                throw new q("Expecting character, got: " + C2 + "; at " + aVar.q());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Character ch) {
                String valueOf;
                if (ch == null) {
                    valueOf = null;
                } else {
                    valueOf = String.valueOf(ch);
                }
                cVar.J0(valueOf);
            }
        };
        f9253w = typeAdapter5;
        f9254x = c(Character.TYPE, Character.class, typeAdapter5);
        TypeAdapter typeAdapter6 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.15
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public String c(c9.a aVar) {
                c9.b X2 = aVar.X();
                if (X2 == c9.b.NULL) {
                    aVar.H();
                    return null;
                } else if (X2 == c9.b.BOOLEAN) {
                    return Boolean.toString(aVar.z());
                } else {
                    return aVar.C();
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, String str) {
                cVar.J0(str);
            }
        };
        f9255y = typeAdapter6;
        f9256z = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.16
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public BigDecimal c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                String C2 = aVar.C();
                try {
                    return z.b(C2);
                } catch (NumberFormatException e10) {
                    throw new q("Failed parsing '" + C2 + "' as BigDecimal; at path " + aVar.q(), e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, BigDecimal bigDecimal) {
                cVar.D0(bigDecimal);
            }
        };
        A = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.17
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public BigInteger c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                String C2 = aVar.C();
                try {
                    return z.c(C2);
                } catch (NumberFormatException e10) {
                    throw new q("Failed parsing '" + C2 + "' as BigInteger; at path " + aVar.q(), e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, BigInteger bigInteger) {
                cVar.D0(bigInteger);
            }
        };
        B = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.18
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public x c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return new x(aVar.C());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, x xVar) {
                cVar.D0(xVar);
            }
        };
        C = b(String.class, typeAdapter6);
        TypeAdapter typeAdapter7 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.19
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public StringBuilder c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return new StringBuilder(aVar.C());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, StringBuilder sb2) {
                String sb3;
                if (sb2 == null) {
                    sb3 = null;
                } else {
                    sb3 = sb2.toString();
                }
                cVar.J0(sb3);
            }
        };
        D = typeAdapter7;
        E = b(StringBuilder.class, typeAdapter7);
        TypeAdapter typeAdapter8 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.20
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public StringBuffer c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return new StringBuffer(aVar.C());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, StringBuffer stringBuffer) {
                String stringBuffer2;
                if (stringBuffer == null) {
                    stringBuffer2 = null;
                } else {
                    stringBuffer2 = stringBuffer.toString();
                }
                cVar.J0(stringBuffer2);
            }
        };
        F = typeAdapter8;
        G = b(StringBuffer.class, typeAdapter8);
        TypeAdapter typeAdapter9 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.21
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public URL c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                String C2 = aVar.C();
                if (C2.equals("null")) {
                    return null;
                }
                return new URL(C2);
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, URL url) {
                String externalForm;
                if (url == null) {
                    externalForm = null;
                } else {
                    externalForm = url.toExternalForm();
                }
                cVar.J0(externalForm);
            }
        };
        H = typeAdapter9;
        I = b(URL.class, typeAdapter9);
        TypeAdapter typeAdapter10 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.22
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public URI c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                try {
                    String C2 = aVar.C();
                    if (C2.equals("null")) {
                        return null;
                    }
                    return new URI(C2);
                } catch (URISyntaxException e10) {
                    throw new j(e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, URI uri) {
                String aSCIIString;
                if (uri == null) {
                    aSCIIString = null;
                } else {
                    aSCIIString = uri.toASCIIString();
                }
                cVar.J0(aSCIIString);
            }
        };
        J = typeAdapter10;
        K = b(URI.class, typeAdapter10);
        TypeAdapter typeAdapter11 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.23
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public InetAddress c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                return InetAddress.getByName(aVar.C());
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, InetAddress inetAddress) {
                String hostAddress;
                if (inetAddress == null) {
                    hostAddress = null;
                } else {
                    hostAddress = inetAddress.getHostAddress();
                }
                cVar.J0(hostAddress);
            }
        };
        L = typeAdapter11;
        M = e(InetAddress.class, typeAdapter11);
        TypeAdapter typeAdapter12 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.24
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public UUID c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                String C2 = aVar.C();
                try {
                    return UUID.fromString(C2);
                } catch (IllegalArgumentException e10) {
                    throw new q("Failed parsing '" + C2 + "' as UUID; at path " + aVar.q(), e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, UUID uuid) {
                String uuid2;
                if (uuid == null) {
                    uuid2 = null;
                } else {
                    uuid2 = uuid.toString();
                }
                cVar.J0(uuid2);
            }
        };
        N = typeAdapter12;
        O = b(UUID.class, typeAdapter12);
        TypeAdapter b15 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.25
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Currency c(c9.a aVar) {
                String C2 = aVar.C();
                try {
                    return Currency.getInstance(C2);
                } catch (IllegalArgumentException e10) {
                    throw new q("Failed parsing '" + C2 + "' as Currency; at path " + aVar.q(), e10);
                }
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Currency currency) {
                cVar.J0(currency.getCurrencyCode());
            }
        }.b();
        P = b15;
        Q = b(Currency.class, b15);
        TypeAdapter typeAdapter13 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.26
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Calendar c(c9.a aVar) {
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                aVar.t();
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                int i15 = 0;
                while (aVar.X() != c9.b.END_OBJECT) {
                    String f02 = aVar.f0();
                    int j02 = aVar.j0();
                    f02.hashCode();
                    char c10 = 65535;
                    switch (f02.hashCode()) {
                        case -1181204563:
                            if (f02.equals("dayOfMonth")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1074026988:
                            if (f02.equals("minute")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -906279820:
                            if (f02.equals("second")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 3704893:
                            if (f02.equals("year")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 104080000:
                            if (f02.equals("month")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case 985252545:
                            if (f02.equals("hourOfDay")) {
                                c10 = 5;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            i12 = j02;
                            break;
                        case 1:
                            i14 = j02;
                            break;
                        case 2:
                            i15 = j02;
                            break;
                        case 3:
                            i10 = j02;
                            break;
                        case 4:
                            i11 = j02;
                            break;
                        case 5:
                            i13 = j02;
                            break;
                    }
                }
                aVar.r();
                return new GregorianCalendar(i10, i11, i12, i13, i14, i15);
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Calendar calendar) {
                if (calendar == null) {
                    cVar.x();
                    return;
                }
                cVar.f();
                cVar.v("year");
                cVar.t0(calendar.get(1));
                cVar.v("month");
                cVar.t0(calendar.get(2));
                cVar.v("dayOfMonth");
                cVar.t0(calendar.get(5));
                cVar.v("hourOfDay");
                cVar.t0(calendar.get(11));
                cVar.v("minute");
                cVar.t0(calendar.get(12));
                cVar.v("second");
                cVar.t0(calendar.get(13));
                cVar.j();
            }
        };
        R = typeAdapter13;
        S = d(Calendar.class, GregorianCalendar.class, typeAdapter13);
        TypeAdapter typeAdapter14 = new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.27
            @Override // com.google.gson.TypeAdapter
            /* renamed from: f */
            public Locale c(c9.a aVar) {
                String str;
                String str2;
                String str3 = null;
                if (aVar.X() == c9.b.NULL) {
                    aVar.H();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.C(), "_");
                if (stringTokenizer.hasMoreElements()) {
                    str = stringTokenizer.nextToken();
                } else {
                    str = null;
                }
                if (stringTokenizer.hasMoreElements()) {
                    str2 = stringTokenizer.nextToken();
                } else {
                    str2 = null;
                }
                if (stringTokenizer.hasMoreElements()) {
                    str3 = stringTokenizer.nextToken();
                }
                if (str2 == null && str3 == null) {
                    return new Locale(str);
                }
                if (str3 == null) {
                    return new Locale(str, str2);
                }
                return new Locale(str, str2, str3);
            }

            @Override // com.google.gson.TypeAdapter
            /* renamed from: g */
            public void e(c cVar, Locale locale) {
                String locale2;
                if (locale == null) {
                    locale2 = null;
                } else {
                    locale2 = locale.toString();
                }
                cVar.J0(locale2);
            }
        };
        T = typeAdapter14;
        U = b(Locale.class, typeAdapter14);
        JsonElementTypeAdapter jsonElementTypeAdapter = JsonElementTypeAdapter.f9172a;
        V = jsonElementTypeAdapter;
        W = e(i.class, jsonElementTypeAdapter);
        X = EnumTypeAdapter.f9164d;
    }

    public static w a(final com.google.gson.reflect.a aVar, final TypeAdapter typeAdapter) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters.28
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar2) {
                if (aVar2.equals(com.google.gson.reflect.a.this)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static w b(final Class cls, final TypeAdapter typeAdapter) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters.29
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
                if (aVar.c() == cls) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static w c(final Class cls, final Class cls2, final TypeAdapter typeAdapter) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters.30
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
                Class c10 = aVar.c();
                if (c10 != cls && c10 != cls2) {
                    return null;
                }
                return typeAdapter;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static w d(final Class cls, final Class cls2, final TypeAdapter typeAdapter) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters.31
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
                Class c10 = aVar.c();
                if (c10 != cls && c10 != cls2) {
                    return null;
                }
                return typeAdapter;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static w e(final Class cls, final TypeAdapter typeAdapter) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // com.google.gson.w
            public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
                final Class<?> c10 = aVar.c();
                if (!cls.isAssignableFrom(c10)) {
                    return null;
                }
                return new TypeAdapter() { // from class: com.google.gson.internal.bind.TypeAdapters.32.1
                    @Override // com.google.gson.TypeAdapter
                    public Object c(c9.a aVar2) {
                        Object c11 = typeAdapter.c(aVar2);
                        if (c11 != null && !c10.isInstance(c11)) {
                            throw new q("Expected a " + c10.getName() + " but was " + c11.getClass().getName() + "; at path " + aVar2.q());
                        }
                        return c11;
                    }

                    @Override // com.google.gson.TypeAdapter
                    public void e(c cVar, Object obj) {
                        typeAdapter.e(cVar, obj);
                    }
                };
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }
}
