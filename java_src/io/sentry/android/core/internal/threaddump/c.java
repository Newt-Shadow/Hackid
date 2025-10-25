package io.sentry.android.core.internal.threaddump;

import io.sentry.j5;
import io.sentry.k5;
import io.sentry.protocol.v;
import io.sentry.protocol.w;
import io.sentry.protocol.x;
import io.sentry.s5;
import io.sentry.w5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f22318d = Pattern.compile("\"(.*)\" (.*) ?prio=(\\d+)\\s+tid=(\\d+)\\s*(.*)");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f22319e = Pattern.compile("\"(.*)\" (.*) ?sysTid=(\\d+)");

    /* renamed from: f  reason: collision with root package name */
    private static final Pattern f22320f = Pattern.compile(" *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*?)\\s+\\((.*)\\+(\\d+)\\)(?: \\(.*\\))?");

    /* renamed from: g  reason: collision with root package name */
    private static final Pattern f22321g = Pattern.compile(" *(?:native: )?#\\d+ \\S+ [0-9a-fA-F]+\\s+(.*)\\s*\\(?(.*)\\)?(?: \\(.*\\))?");

    /* renamed from: h  reason: collision with root package name */
    private static final Pattern f22322h = Pattern.compile(" *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\((.*):([\\d-]+)\\)");

    /* renamed from: i  reason: collision with root package name */
    private static final Pattern f22323i = Pattern.compile(" *at (?:(.+)\\.)?([^.]+)\\.([^.]+)\\(Native method\\)");

    /* renamed from: j  reason: collision with root package name */
    private static final Pattern f22324j = Pattern.compile(" *- locked \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");

    /* renamed from: k  reason: collision with root package name */
    private static final Pattern f22325k = Pattern.compile(" *- sleeping on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");

    /* renamed from: l  reason: collision with root package name */
    private static final Pattern f22326l = Pattern.compile(" *- waiting on \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");

    /* renamed from: m  reason: collision with root package name */
    private static final Pattern f22327m = Pattern.compile(" *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)");

    /* renamed from: n  reason: collision with root package name */
    private static final Pattern f22328n = Pattern.compile(" *- waiting to lock \\<([0x0-9a-fA-F]{1,16})\\> \\(a (?:(.+)\\.)?([^.]+)\\)(?: held by thread (\\d+))");

    /* renamed from: o  reason: collision with root package name */
    private static final Pattern f22329o = Pattern.compile(" *- waiting to lock an unknown object");

    /* renamed from: p  reason: collision with root package name */
    private static final Pattern f22330p = Pattern.compile("\\s+");

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22331a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f22332b;

    /* renamed from: c  reason: collision with root package name */
    private final w5 f22333c;

    public c(s5 s5Var, boolean z10) {
        this.f22331a = s5Var;
        this.f22332b = z10;
        this.f22333c = new w5(s5Var);
    }

    private void a(x xVar, k5 k5Var) {
        Map k10 = xVar.k();
        if (k10 == null) {
            k10 = new HashMap();
        }
        k5 k5Var2 = (k5) k10.get(k5Var.f());
        if (k5Var2 != null) {
            k5Var2.l(Math.max(k5Var2.g(), k5Var.g()));
        } else {
            k10.put(k5Var.f(), new k5(k5Var));
        }
        xVar.t(k10);
    }

    private Integer b(Matcher matcher, int i10, Integer num) {
        String group = matcher.group(i10);
        if (group != null && group.length() != 0) {
            return Integer.valueOf(Integer.parseInt(group));
        }
        return num;
    }

    private Long c(Matcher matcher, int i10, Long l10) {
        String group = matcher.group(i10);
        if (group != null && group.length() != 0) {
            return Long.valueOf(Long.parseLong(group));
        }
        return l10;
    }

    private Integer d(Matcher matcher, int i10, Integer num) {
        String group = matcher.group(i10);
        if (group != null && group.length() != 0) {
            Integer valueOf = Integer.valueOf(Integer.parseInt(group));
            if (valueOf.intValue() >= 0) {
                return valueOf;
            }
            return num;
        }
        return num;
    }

    private boolean e(Matcher matcher, String str) {
        matcher.reset(str);
        return matcher.matches();
    }

    private w g(b bVar, x xVar) {
        Matcher matcher;
        ArrayList arrayList = new ArrayList();
        Matcher matcher2 = f22320f.matcher("");
        Matcher matcher3 = f22321g.matcher("");
        Matcher matcher4 = f22322h.matcher("");
        Matcher matcher5 = f22323i.matcher("");
        Matcher matcher6 = f22324j.matcher("");
        Matcher matcher7 = f22326l.matcher("");
        Matcher matcher8 = f22325k.matcher("");
        Matcher matcher9 = f22328n.matcher("");
        Matcher matcher10 = f22327m.matcher("");
        Matcher matcher11 = f22329o.matcher("");
        Matcher matcher12 = f22330p.matcher("");
        v vVar = null;
        while (true) {
            if (!bVar.a()) {
                break;
            }
            a b10 = bVar.b();
            if (b10 == null) {
                this.f22331a.getLogger().c(j5.WARNING, "Internal error while parsing thread dump.", new Object[0]);
                break;
            }
            String str = b10.f22313b;
            Matcher matcher13 = matcher12;
            if (e(matcher2, str)) {
                v vVar2 = new v();
                vVar2.z(matcher2.group(1));
                vVar2.t(matcher2.group(2));
                vVar2.v(b(matcher2, 3, null));
                arrayList.add(vVar2);
            } else if (e(matcher3, str)) {
                v vVar3 = new v();
                vVar3.z(matcher3.group(1));
                vVar3.t(matcher3.group(2));
                arrayList.add(vVar3);
            } else {
                matcher = matcher2;
                if (e(matcher4, str)) {
                    vVar = new v();
                    String format = String.format("%s.%s", matcher4.group(1), matcher4.group(2));
                    vVar.x(format);
                    vVar.t(matcher4.group(3));
                    vVar.s(matcher4.group(4));
                    vVar.v(d(matcher4, 5, null));
                    vVar.u(this.f22333c.b(format));
                    arrayList.add(vVar);
                } else if (e(matcher5, str)) {
                    vVar = new v();
                    String format2 = String.format("%s.%s", matcher5.group(1), matcher5.group(2));
                    vVar.x(format2);
                    vVar.t(matcher5.group(3));
                    vVar.u(this.f22333c.b(format2));
                    arrayList.add(vVar);
                } else if (e(matcher6, str)) {
                    if (vVar != null) {
                        k5 k5Var = new k5();
                        k5Var.l(1);
                        k5Var.h(matcher6.group(1));
                        k5Var.j(matcher6.group(2));
                        k5Var.i(matcher6.group(3));
                        vVar.w(k5Var);
                        a(xVar, k5Var);
                    }
                } else if (e(matcher7, str)) {
                    if (vVar != null) {
                        k5 k5Var2 = new k5();
                        k5Var2.l(2);
                        k5Var2.h(matcher7.group(1));
                        k5Var2.j(matcher7.group(2));
                        k5Var2.i(matcher7.group(3));
                        vVar.w(k5Var2);
                        a(xVar, k5Var2);
                    }
                } else if (e(matcher8, str)) {
                    if (vVar != null) {
                        k5 k5Var3 = new k5();
                        k5Var3.l(4);
                        k5Var3.h(matcher8.group(1));
                        k5Var3.j(matcher8.group(2));
                        k5Var3.i(matcher8.group(3));
                        vVar.w(k5Var3);
                        a(xVar, k5Var3);
                    }
                } else {
                    if (e(matcher9, str)) {
                        if (vVar != null) {
                            k5 k5Var4 = new k5();
                            k5Var4.l(8);
                            k5Var4.h(matcher9.group(1));
                            k5Var4.j(matcher9.group(2));
                            k5Var4.i(matcher9.group(3));
                            k5Var4.k(c(matcher9, 4, null));
                            vVar.w(k5Var4);
                            a(xVar, k5Var4);
                        }
                    } else if (e(matcher10, str)) {
                        if (vVar != null) {
                            k5 k5Var5 = new k5();
                            k5Var5.l(8);
                            k5Var5.h(matcher10.group(1));
                            k5Var5.j(matcher10.group(2));
                            k5Var5.i(matcher10.group(3));
                            vVar.w(k5Var5);
                            a(xVar, k5Var5);
                        }
                    } else if (e(matcher11, str)) {
                        if (vVar != null) {
                            k5 k5Var6 = new k5();
                            k5Var6.l(8);
                            vVar.w(k5Var6);
                            a(xVar, k5Var6);
                        }
                    } else if (str.length() == 0) {
                        break;
                    } else {
                        matcher12 = matcher13;
                        if (e(matcher12, str)) {
                            break;
                        }
                        matcher2 = matcher;
                    }
                    matcher12 = matcher13;
                    matcher2 = matcher;
                }
                matcher12 = matcher13;
                matcher2 = matcher;
            }
            matcher = matcher2;
            matcher12 = matcher13;
            vVar = null;
            matcher2 = matcher;
        }
        Collections.reverse(arrayList);
        w wVar = new w(arrayList);
        wVar.e(Boolean.TRUE);
        return wVar;
    }

    private x h(b bVar) {
        x xVar = new x();
        Matcher matcher = f22318d.matcher("");
        Matcher matcher2 = f22319e.matcher("");
        if (!bVar.a()) {
            return null;
        }
        a b10 = bVar.b();
        boolean z10 = false;
        if (b10 == null) {
            this.f22331a.getLogger().c(j5.WARNING, "Internal error while parsing thread dump.", new Object[0]);
            return null;
        }
        if (e(matcher, b10.f22313b)) {
            Long c10 = c(matcher, 4, null);
            if (c10 == null) {
                this.f22331a.getLogger().c(j5.DEBUG, "No thread id in the dump, skipping thread.", new Object[0]);
                return null;
            }
            xVar.u(c10);
            xVar.w(matcher.group(1));
            String group = matcher.group(5);
            if (group != null) {
                if (group.contains(StringUtils.SPACE)) {
                    xVar.z(group.substring(0, group.indexOf(32)));
                } else {
                    xVar.z(group);
                }
            }
        } else if (e(matcher2, b10.f22313b)) {
            Long c11 = c(matcher2, 3, null);
            if (c11 == null) {
                this.f22331a.getLogger().c(j5.DEBUG, "No thread id in the dump, skipping thread.", new Object[0]);
                return null;
            }
            xVar.u(c11);
            xVar.w(matcher2.group(1));
        }
        String m10 = xVar.m();
        if (m10 != null) {
            boolean equals = m10.equals("main");
            xVar.v(Boolean.valueOf(equals));
            xVar.q(Boolean.valueOf(equals));
            if (equals && !this.f22332b) {
                z10 = true;
            }
            xVar.r(Boolean.valueOf(z10));
        }
        xVar.y(g(bVar, xVar));
        return xVar;
    }

    public List f(b bVar) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = f22318d.matcher("");
        Matcher matcher2 = f22319e.matcher("");
        while (bVar.a()) {
            a b10 = bVar.b();
            if (b10 == null) {
                this.f22331a.getLogger().c(j5.WARNING, "Internal error while parsing thread dump.", new Object[0]);
                return arrayList;
            }
            String str = b10.f22313b;
            if (e(matcher, str) || e(matcher2, str)) {
                bVar.d();
                x h10 = h(bVar);
                if (h10 != null) {
                    arrayList.add(h10);
                }
            }
        }
        return arrayList;
    }
}
