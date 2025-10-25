package com.google.gson;

import java.lang.reflect.Field;
import java.util.Locale;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public abstract class b implements com.google.gson.c {

    /* renamed from: a  reason: collision with root package name */
    public static final b f9099a;

    /* renamed from: b  reason: collision with root package name */
    public static final b f9100b;

    /* renamed from: c  reason: collision with root package name */
    public static final b f9101c;

    /* renamed from: d  reason: collision with root package name */
    public static final b f9102d;

    /* renamed from: e  reason: collision with root package name */
    public static final b f9103e;

    /* renamed from: f  reason: collision with root package name */
    public static final b f9104f;

    /* renamed from: g  reason: collision with root package name */
    public static final b f9105g;

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ b[] f9106h;

    /* loaded from: classes.dex */
    enum a extends b {
        a(String str, int i10) {
            super(str, i10, null);
        }

        @Override // com.google.gson.c
        public String a(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a("IDENTITY", 0);
        f9099a = aVar;
        b bVar = new b("UPPER_CAMEL_CASE", 1) { // from class: com.google.gson.b.b
            @Override // com.google.gson.c
            public String a(Field field) {
                return b.f(field.getName());
            }
        };
        f9100b = bVar;
        b bVar2 = new b("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: com.google.gson.b.c
            @Override // com.google.gson.c
            public String a(Field field) {
                return b.f(b.b(field.getName(), ' '));
            }
        };
        f9101c = bVar2;
        b bVar3 = new b("UPPER_CASE_WITH_UNDERSCORES", 3) { // from class: com.google.gson.b.d
            @Override // com.google.gson.c
            public String a(Field field) {
                return b.b(field.getName(), '_').toUpperCase(Locale.ENGLISH);
            }
        };
        f9102d = bVar3;
        b bVar4 = new b("LOWER_CASE_WITH_UNDERSCORES", 4) { // from class: com.google.gson.b.e
            @Override // com.google.gson.c
            public String a(Field field) {
                return b.b(field.getName(), '_').toLowerCase(Locale.ENGLISH);
            }
        };
        f9103e = bVar4;
        b bVar5 = new b("LOWER_CASE_WITH_DASHES", 5) { // from class: com.google.gson.b.f
            @Override // com.google.gson.c
            public String a(Field field) {
                return b.b(field.getName(), '-').toLowerCase(Locale.ENGLISH);
            }
        };
        f9104f = bVar5;
        b bVar6 = new b("LOWER_CASE_WITH_DOTS", 6) { // from class: com.google.gson.b.g
            @Override // com.google.gson.c
            public String a(Field field) {
                return b.b(field.getName(), '.').toLowerCase(Locale.ENGLISH);
            }
        };
        f9105g = bVar6;
        f9106h = new b[]{aVar, bVar, bVar2, bVar3, bVar4, bVar5, bVar6};
    }

    private b(String str, int i10) {
    }

    static String b(String str, char c10) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt) && sb2.length() != 0) {
                sb2.append(c10);
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    static String f(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (Character.isLetter(charAt)) {
                if (Character.isUpperCase(charAt)) {
                    return str;
                }
                char upperCase = Character.toUpperCase(charAt);
                if (i10 == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
            }
        }
        return str;
    }

    public static b valueOf(String str) {
        return (b) Enum.valueOf(b.class, str);
    }

    public static b[] values() {
        return (b[]) f9106h.clone();
    }

    /* synthetic */ b(String str, int i10, a aVar) {
        this(str, i10);
    }
}
