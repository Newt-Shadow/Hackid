package qe;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.a0;
import ne.s;
import ne.y;
import oe.d;
import te.c;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    public static final a f28760c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final y f28761a;

    /* renamed from: b  reason: collision with root package name */
    private final a0 f28762b;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(a0 response, y request) {
            m.e(response, "response");
            m.e(request, "request");
            int f10 = response.f();
            if (f10 != 200 && f10 != 410 && f10 != 414 && f10 != 501 && f10 != 203 && f10 != 204) {
                if (f10 != 307) {
                    if (f10 != 308 && f10 != 404 && f10 != 405) {
                        switch (f10) {
                            case 300:
                            case 301:
                                break;
                            case 302:
                                break;
                            default:
                                return false;
                        }
                    }
                }
                if (a0.k(response, "Expires", null, 2, null) == null && response.b().d() == -1 && !response.b().c() && !response.b().b()) {
                    return false;
                }
            }
            if (response.b().i() || request.b().i()) {
                return false;
            }
            return true;
        }
    }

    /* renamed from: qe.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0294b {

        /* renamed from: a  reason: collision with root package name */
        private final long f28763a;

        /* renamed from: b  reason: collision with root package name */
        private final y f28764b;

        /* renamed from: c  reason: collision with root package name */
        private final a0 f28765c;

        /* renamed from: d  reason: collision with root package name */
        private Date f28766d;

        /* renamed from: e  reason: collision with root package name */
        private String f28767e;

        /* renamed from: f  reason: collision with root package name */
        private Date f28768f;

        /* renamed from: g  reason: collision with root package name */
        private String f28769g;

        /* renamed from: h  reason: collision with root package name */
        private Date f28770h;

        /* renamed from: i  reason: collision with root package name */
        private long f28771i;

        /* renamed from: j  reason: collision with root package name */
        private long f28772j;

        /* renamed from: k  reason: collision with root package name */
        private String f28773k;

        /* renamed from: l  reason: collision with root package name */
        private int f28774l;

        public C0294b(long j10, y request, a0 a0Var) {
            boolean x10;
            boolean x11;
            boolean x12;
            boolean x13;
            boolean x14;
            m.e(request, "request");
            this.f28763a = j10;
            this.f28764b = request;
            this.f28765c = a0Var;
            this.f28774l = -1;
            if (a0Var != null) {
                this.f28771i = a0Var.P();
                this.f28772j = a0Var.E();
                s q10 = a0Var.q();
                int size = q10.size();
                int i10 = 0;
                while (i10 < size) {
                    int i11 = i10 + 1;
                    String i12 = q10.i(i10);
                    String m10 = q10.m(i10);
                    x10 = rd.y.x(i12, "Date", true);
                    if (!x10) {
                        x11 = rd.y.x(i12, "Expires", true);
                        if (!x11) {
                            x12 = rd.y.x(i12, "Last-Modified", true);
                            if (!x12) {
                                x13 = rd.y.x(i12, "ETag", true);
                                if (!x13) {
                                    x14 = rd.y.x(i12, "Age", true);
                                    if (x14) {
                                        this.f28774l = d.U(m10, -1);
                                    }
                                } else {
                                    this.f28773k = m10;
                                }
                            } else {
                                this.f28768f = c.a(m10);
                                this.f28769g = m10;
                            }
                        } else {
                            this.f28770h = c.a(m10);
                        }
                    } else {
                        this.f28766d = c.a(m10);
                        this.f28767e = m10;
                    }
                    i10 = i11;
                }
            }
        }

        private final long a() {
            Date date = this.f28766d;
            long j10 = 0;
            if (date != null) {
                j10 = Math.max(0L, this.f28772j - date.getTime());
            }
            int i10 = this.f28774l;
            if (i10 != -1) {
                j10 = Math.max(j10, TimeUnit.SECONDS.toMillis(i10));
            }
            long j11 = this.f28772j;
            return j10 + (j11 - this.f28771i) + (this.f28763a - j11);
        }

        private final b c() {
            long j10;
            String str;
            if (this.f28765c == null) {
                return new b(this.f28764b, null);
            }
            if (this.f28764b.f() && this.f28765c.h() == null) {
                return new b(this.f28764b, null);
            }
            if (!b.f28760c.a(this.f28765c, this.f28764b)) {
                return new b(this.f28764b, null);
            }
            ne.d b10 = this.f28764b.b();
            if (!b10.h() && !e(this.f28764b)) {
                ne.d b11 = this.f28765c.b();
                long a10 = a();
                long d10 = d();
                if (b10.d() != -1) {
                    d10 = Math.min(d10, TimeUnit.SECONDS.toMillis(b10.d()));
                }
                long j11 = 0;
                if (b10.f() != -1) {
                    j10 = TimeUnit.SECONDS.toMillis(b10.f());
                } else {
                    j10 = 0;
                }
                if (!b11.g() && b10.e() != -1) {
                    j11 = TimeUnit.SECONDS.toMillis(b10.e());
                }
                if (!b11.h()) {
                    long j12 = j10 + a10;
                    if (j12 < j11 + d10) {
                        a0.a w10 = this.f28765c.w();
                        if (j12 >= d10) {
                            w10.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (a10 > 86400000 && f()) {
                            w10.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new b(null, w10.c());
                    }
                }
                String str2 = this.f28773k;
                if (str2 != null) {
                    str = "If-None-Match";
                } else {
                    if (this.f28768f != null) {
                        str2 = this.f28769g;
                    } else if (this.f28766d != null) {
                        str2 = this.f28767e;
                    } else {
                        return new b(this.f28764b, null);
                    }
                    str = "If-Modified-Since";
                }
                s.a l10 = this.f28764b.e().l();
                m.b(str2);
                l10.c(str, str2);
                return new b(this.f28764b.h().e(l10.d()).a(), this.f28765c);
            }
            return new b(this.f28764b, null);
        }

        private final long d() {
            long longValue;
            long longValue2;
            a0 a0Var = this.f28765c;
            m.b(a0Var);
            ne.d b10 = a0Var.b();
            if (b10.d() != -1) {
                return TimeUnit.SECONDS.toMillis(b10.d());
            }
            Date date = this.f28770h;
            Long l10 = null;
            if (date != null) {
                Date date2 = this.f28766d;
                if (date2 != null) {
                    l10 = Long.valueOf(date2.getTime());
                }
                if (l10 == null) {
                    longValue2 = this.f28772j;
                } else {
                    longValue2 = l10.longValue();
                }
                long time = date.getTime() - longValue2;
                if (time <= 0) {
                    return 0L;
                }
                return time;
            } else if (this.f28768f == null || this.f28765c.H().i().m() != null) {
                return 0L;
            } else {
                Date date3 = this.f28766d;
                if (date3 != null) {
                    l10 = Long.valueOf(date3.getTime());
                }
                if (l10 == null) {
                    longValue = this.f28771i;
                } else {
                    longValue = l10.longValue();
                }
                Date date4 = this.f28768f;
                m.b(date4);
                long time2 = longValue - date4.getTime();
                if (time2 <= 0) {
                    return 0L;
                }
                return time2 / 10;
            }
        }

        private final boolean e(y yVar) {
            if (yVar.d("If-Modified-Since") == null && yVar.d("If-None-Match") == null) {
                return false;
            }
            return true;
        }

        private final boolean f() {
            a0 a0Var = this.f28765c;
            m.b(a0Var);
            if (a0Var.b().d() == -1 && this.f28770h == null) {
                return true;
            }
            return false;
        }

        public final b b() {
            b c10 = c();
            if (c10.b() != null && this.f28764b.b().k()) {
                return new b(null, null);
            }
            return c10;
        }
    }

    public b(y yVar, a0 a0Var) {
        this.f28761a = yVar;
        this.f28762b = a0Var;
    }

    public final a0 a() {
        return this.f28762b;
    }

    public final y b() {
        return this.f28761a;
    }
}
