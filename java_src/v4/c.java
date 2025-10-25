package v4;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
final class c {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f31207c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f31208d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f31209a = new e0();

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f31210b = new StringBuilder();

    private void a(d dVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int indexOf = str.indexOf(91);
        if (indexOf != -1) {
            Matcher matcher = f31207c.matcher(str.substring(indexOf));
            if (matcher.matches()) {
                dVar.z((String) y4.a.e(matcher.group(1)));
            }
            str = str.substring(0, indexOf);
        }
        String[] P0 = q0.P0(str, "\\.");
        String str2 = P0[0];
        int indexOf2 = str2.indexOf(35);
        if (indexOf2 != -1) {
            dVar.y(str2.substring(0, indexOf2));
            dVar.x(str2.substring(indexOf2 + 1));
        } else {
            dVar.y(str2);
        }
        if (P0.length > 1) {
            dVar.w((String[]) q0.G0(P0, 1, P0.length));
        }
    }

    private static boolean b(e0 e0Var) {
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        byte[] e10 = e0Var.e();
        if (f10 + 2 <= g10) {
            int i10 = f10 + 1;
            if (e10[f10] == 47) {
                int i11 = i10 + 1;
                if (e10[i10] != 42) {
                    return false;
                }
                while (true) {
                    int i12 = i11 + 1;
                    if (i12 < g10) {
                        if (((char) e10[i11]) == '*' && ((char) e10[i12]) == '/') {
                            i11 = i12 + 1;
                            g10 = i11;
                        } else {
                            i11 = i12;
                        }
                    } else {
                        e0Var.U(g10 - e0Var.f());
                        return true;
                    }
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    private static boolean c(e0 e0Var) {
        char k10 = k(e0Var, e0Var.f());
        if (k10 != '\t' && k10 != '\n' && k10 != '\f' && k10 != '\r' && k10 != ' ') {
            return false;
        }
        e0Var.U(1);
        return true;
    }

    private static void e(String str, d dVar) {
        Matcher matcher = f31208d.matcher(n6.c.e(str));
        if (!matcher.matches()) {
            r.i("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) y4.a.e(matcher.group(2));
        str2.hashCode();
        char c10 = 65535;
        switch (str2.hashCode()) {
            case 37:
                if (str2.equals("%")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3240:
                if (str2.equals("em")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3592:
                if (str2.equals("px")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                dVar.t(3);
                break;
            case 1:
                dVar.t(2);
                break;
            case 2:
                dVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        dVar.s(Float.parseFloat((String) y4.a.e(matcher.group(1))));
    }

    private static String f(e0 e0Var, StringBuilder sb2) {
        boolean z10 = false;
        sb2.setLength(0);
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        while (f10 < g10 && !z10) {
            char c10 = (char) e0Var.e()[f10];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && ((c10 < '0' || c10 > '9') && c10 != '#' && c10 != '-' && c10 != '.' && c10 != '_'))) {
                z10 = true;
            } else {
                f10++;
                sb2.append(c10);
            }
        }
        e0Var.U(f10 - e0Var.f());
        return sb2.toString();
    }

    static String g(e0 e0Var, StringBuilder sb2) {
        n(e0Var);
        if (e0Var.a() == 0) {
            return null;
        }
        String f10 = f(e0Var, sb2);
        if (!"".equals(f10)) {
            return f10;
        }
        return "" + ((char) e0Var.G());
    }

    private static String h(e0 e0Var, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder();
        boolean z10 = false;
        while (!z10) {
            int f10 = e0Var.f();
            String g10 = g(e0Var, sb2);
            if (g10 == null) {
                return null;
            }
            if (!"}".equals(g10) && !";".equals(g10)) {
                sb3.append(g10);
            } else {
                e0Var.T(f10);
                z10 = true;
            }
        }
        return sb3.toString();
    }

    private static String i(e0 e0Var, StringBuilder sb2) {
        String str;
        n(e0Var);
        if (e0Var.a() < 5 || !"::cue".equals(e0Var.D(5))) {
            return null;
        }
        int f10 = e0Var.f();
        String g10 = g(e0Var, sb2);
        if (g10 == null) {
            return null;
        }
        if ("{".equals(g10)) {
            e0Var.T(f10);
            return "";
        }
        if ("(".equals(g10)) {
            str = l(e0Var);
        } else {
            str = null;
        }
        if (!")".equals(g(e0Var, sb2))) {
            return null;
        }
        return str;
    }

    private static void j(e0 e0Var, d dVar, StringBuilder sb2) {
        n(e0Var);
        String f10 = f(e0Var, sb2);
        if ("".equals(f10) || !":".equals(g(e0Var, sb2))) {
            return;
        }
        n(e0Var);
        String h10 = h(e0Var, sb2);
        if (h10 != null && !"".equals(h10)) {
            int f11 = e0Var.f();
            String g10 = g(e0Var, sb2);
            if (!";".equals(g10)) {
                if ("}".equals(g10)) {
                    e0Var.T(f11);
                } else {
                    return;
                }
            }
            if ("color".equals(f10)) {
                dVar.q(y4.f.b(h10));
            } else if ("background-color".equals(f10)) {
                dVar.n(y4.f.b(h10));
            } else {
                boolean z10 = true;
                if ("ruby-position".equals(f10)) {
                    if ("over".equals(h10)) {
                        dVar.v(1);
                    } else if ("under".equals(h10)) {
                        dVar.v(2);
                    }
                } else if ("text-combine-upright".equals(f10)) {
                    if (!"all".equals(h10) && !h10.startsWith("digits")) {
                        z10 = false;
                    }
                    dVar.p(z10);
                } else if ("text-decoration".equals(f10)) {
                    if ("underline".equals(h10)) {
                        dVar.A(true);
                    }
                } else if ("font-family".equals(f10)) {
                    dVar.r(h10);
                } else if ("font-weight".equals(f10)) {
                    if ("bold".equals(h10)) {
                        dVar.o(true);
                    }
                } else if ("font-style".equals(f10)) {
                    if ("italic".equals(h10)) {
                        dVar.u(true);
                    }
                } else if ("font-size".equals(f10)) {
                    e(h10, dVar);
                }
            }
        }
    }

    private static char k(e0 e0Var, int i10) {
        return (char) e0Var.e()[i10];
    }

    private static String l(e0 e0Var) {
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        boolean z10 = false;
        while (f10 < g10 && !z10) {
            int i10 = f10 + 1;
            if (((char) e0Var.e()[f10]) == ')') {
                z10 = true;
            } else {
                z10 = false;
            }
            f10 = i10;
        }
        return e0Var.D((f10 - 1) - e0Var.f()).trim();
    }

    static void m(e0 e0Var) {
        do {
        } while (!TextUtils.isEmpty(e0Var.r()));
    }

    static void n(e0 e0Var) {
        while (true) {
            for (boolean z10 = true; e0Var.a() > 0 && z10; z10 = false) {
                if (!c(e0Var) && !b(e0Var)) {
                }
            }
            return;
        }
    }

    public List d(e0 e0Var) {
        boolean z10;
        this.f31210b.setLength(0);
        int f10 = e0Var.f();
        m(e0Var);
        this.f31209a.R(e0Var.e(), e0Var.f());
        this.f31209a.T(f10);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String i10 = i(this.f31209a, this.f31210b);
            if (i10 != null) {
                if (!"{".equals(g(this.f31209a, this.f31210b))) {
                    return arrayList;
                }
                d dVar = new d();
                a(dVar, i10);
                String str = null;
                boolean z11 = false;
                while (!z11) {
                    int f11 = this.f31209a.f();
                    String g10 = g(this.f31209a, this.f31210b);
                    if (g10 != null && !"}".equals(g10)) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    if (!z10) {
                        this.f31209a.T(f11);
                        j(this.f31209a, dVar, this.f31210b);
                    }
                    str = g10;
                    z11 = z10;
                }
                if ("}".equals(str)) {
                    arrayList.add(dVar);
                }
            } else {
                return arrayList;
            }
        }
    }
}
