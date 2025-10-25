package s4;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import m4.b;
import m4.g;
import m4.h;
import n6.e;
import y4.e0;
import y4.r;
import y4.s;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f29403q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f29404r = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f29405o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList f29406p;

    public a() {
        super("SubripDecoder");
        this.f29405o = new StringBuilder();
        this.f29406p = new ArrayList();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private m4.b B(Spanned spanned, String str) {
        char c10;
        char c11;
        b.C0247b o10 = new b.C0247b().o(spanned);
        if (str == null) {
            return o10.a();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 != 0 && c10 != 1 && c10 != 2) {
            if (c10 != 3 && c10 != 4 && c10 != 5) {
                o10.l(1);
            } else {
                o10.l(2);
            }
        } else {
            o10.l(0);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c11 = 0;
                    break;
                }
                c11 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c11 = 1;
                    break;
                }
                c11 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c11 = 2;
                    break;
                }
                c11 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c11 = 6;
                    break;
                }
                c11 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c11 = 7;
                    break;
                }
                c11 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c11 = '\b';
                    break;
                }
                c11 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c11 = 3;
                    break;
                }
                c11 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c11 = 4;
                    break;
                }
                c11 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c11 = 5;
                    break;
                }
                c11 = 65535;
                break;
            default:
                c11 = 65535;
                break;
        }
        if (c11 != 0 && c11 != 1 && c11 != 2) {
            if (c11 != 3 && c11 != 4 && c11 != 5) {
                o10.i(1);
            } else {
                o10.i(0);
            }
        } else {
            o10.i(2);
        }
        return o10.k(D(o10.d())).h(D(o10.c()), 0).a();
    }

    private Charset C(e0 e0Var) {
        Charset O = e0Var.O();
        if (O == null) {
            return e.f26427c;
        }
        return O;
    }

    static float D(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long E(Matcher matcher, int i10) {
        long j10;
        String group = matcher.group(i10 + 1);
        if (group != null) {
            j10 = Long.parseLong(group) * 60 * 60 * 1000;
        } else {
            j10 = 0;
        }
        long parseLong = j10 + (Long.parseLong((String) y4.a.e(matcher.group(i10 + 2))) * 60 * 1000) + (Long.parseLong((String) y4.a.e(matcher.group(i10 + 3))) * 1000);
        String group2 = matcher.group(i10 + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    private String F(String str, ArrayList arrayList) {
        String trim = str.trim();
        StringBuilder sb2 = new StringBuilder(trim);
        Matcher matcher = f29404r.matcher(trim);
        int i10 = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i10;
            int length = group.length();
            sb2.replace(start, start + length, "");
            i10 += length;
        }
        return sb2.toString();
    }

    @Override // m4.g
    protected h z(byte[] bArr, int i10, boolean z10) {
        String str;
        ArrayList arrayList = new ArrayList();
        s sVar = new s();
        e0 e0Var = new e0(bArr, i10);
        Charset C = C(e0Var);
        while (true) {
            String s10 = e0Var.s(C);
            int i11 = 0;
            if (s10 == null) {
                break;
            } else if (s10.length() != 0) {
                try {
                    Integer.parseInt(s10);
                    String s11 = e0Var.s(C);
                    if (s11 == null) {
                        r.i("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = f29403q.matcher(s11);
                    if (matcher.matches()) {
                        sVar.a(E(matcher, 1));
                        sVar.a(E(matcher, 6));
                        this.f29405o.setLength(0);
                        this.f29406p.clear();
                        for (String s12 = e0Var.s(C); !TextUtils.isEmpty(s12); s12 = e0Var.s(C)) {
                            if (this.f29405o.length() > 0) {
                                this.f29405o.append("<br>");
                            }
                            this.f29405o.append(F(s12, this.f29406p));
                        }
                        Spanned fromHtml = Html.fromHtml(this.f29405o.toString());
                        while (true) {
                            if (i11 < this.f29406p.size()) {
                                str = (String) this.f29406p.get(i11);
                                if (str.matches("\\{\\\\an[1-9]\\}")) {
                                    break;
                                }
                                i11++;
                            } else {
                                str = null;
                                break;
                            }
                        }
                        arrayList.add(B(fromHtml, str));
                        arrayList.add(m4.b.f25676r);
                    } else {
                        r.i("SubripDecoder", "Skipping invalid timing: " + s11);
                    }
                } catch (NumberFormatException unused) {
                    r.i("SubripDecoder", "Skipping invalid index: " + s10);
                }
            }
        }
        return new b((m4.b[]) arrayList.toArray(new m4.b[0]), sVar.d());
    }
}
