package com.google.android.datatransport.cct;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p2.g;
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: c  reason: collision with root package name */
    static final String f5553c;

    /* renamed from: d  reason: collision with root package name */
    static final String f5554d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f5555e;

    /* renamed from: f  reason: collision with root package name */
    private static final Set f5556f;

    /* renamed from: g  reason: collision with root package name */
    public static final a f5557g;

    /* renamed from: h  reason: collision with root package name */
    public static final a f5558h;

    /* renamed from: a  reason: collision with root package name */
    private final String f5559a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5560b;

    static {
        String a10 = e.a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f5553c = a10;
        String a11 = e.a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f5554d = a11;
        String a12 = e.a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f5555e = a12;
        f5556f = Collections.unmodifiableSet(new HashSet(Arrays.asList(n2.c.b("proto"), n2.c.b("json"))));
        f5557g = new a(a10, null);
        f5558h = new a(a11, a12);
    }

    public a(String str, String str2) {
        this.f5559a = str;
        this.f5560b = str2;
    }

    public static a c(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (str.startsWith("1$")) {
            String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
            if (split.length == 2) {
                String str2 = split[0];
                if (!str2.isEmpty()) {
                    String str3 = split[1];
                    if (str3.isEmpty()) {
                        str3 = null;
                    }
                    return new a(str2, str3);
                }
                throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
            }
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        throw new IllegalArgumentException("Version marker missing from extras");
    }

    @Override // p2.g
    public Set a() {
        return f5556f;
    }

    public byte[] b() {
        String str = this.f5560b;
        if (str == null && this.f5559a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.f5559a;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    public String d() {
        return this.f5560b;
    }

    public String e() {
        return this.f5559a;
    }

    @Override // p2.f
    public byte[] getExtras() {
        return b();
    }

    @Override // p2.f
    public String getName() {
        return "cct";
    }
}
