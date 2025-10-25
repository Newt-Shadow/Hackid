package io.appmetrica.analytics.logger.common;

import android.content.Context;
import android.util.Log;
import io.appmetrica.analytics.logger.common.impl.a;
import io.appmetrica.analytics.logger.common.impl.b;
import io.appmetrica.analytics.logger.common.impl.c;
import io.appmetrica.analytics.logger.common.impl.d;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class BaseReleaseLogger {

    /* renamed from: d  reason: collision with root package name */
    private static volatile String f21162d = "";

    /* renamed from: a  reason: collision with root package name */
    private final String f21163a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f21164b = false;

    /* renamed from: c  reason: collision with root package name */
    private final c f21165c;

    public BaseReleaseLogger(String str, String str2) {
        this.f21165c = new c(new d(str), new a(), new b());
        this.f21163a = str2;
    }

    public static void init(Context context) {
        f21162d = "[" + context.getPackageName() + "] : ";
    }

    public void error(String str, Object... objArr) {
        if (this.f21164b) {
            c cVar = this.f21165c;
            String prefix = getPrefix();
            cVar.f21168b.getClass();
            Iterator it = cVar.f21169c.a(a.a(prefix, str, objArr)).iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = cVar.f21167a.f21170a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(6, str3, str2);
            }
        }
    }

    public String getPrefix() {
        return f21162d + this.f21163a;
    }

    public void info(String str, Object... objArr) {
        if (this.f21164b) {
            c cVar = this.f21165c;
            String prefix = getPrefix();
            cVar.f21168b.getClass();
            Iterator it = cVar.f21169c.a(a.a(prefix, str, objArr)).iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = cVar.f21167a.f21170a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(4, str3, str2);
            }
        }
    }

    public void setEnabled(boolean z10) {
        this.f21164b = z10;
    }

    public void warning(String str, Object... objArr) {
        if (this.f21164b) {
            c cVar = this.f21165c;
            String prefix = getPrefix();
            cVar.f21168b.getClass();
            Iterator it = cVar.f21169c.a(a.a(prefix, str, objArr)).iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = cVar.f21167a.f21170a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(5, str3, str2);
            }
        }
    }

    public void error(Throwable th, String str, Object... objArr) {
        if (this.f21164b) {
            c cVar = this.f21165c;
            String prefix = getPrefix();
            cVar.f21168b.getClass();
            StringBuilder sb2 = new StringBuilder();
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            sb2.append("\n");
            sb2.append(Log.getStackTraceString(th));
            Iterator it = cVar.f21169c.a(a.a(prefix, sb2.toString(), objArr)).iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String str3 = cVar.f21167a.f21170a;
                if (str2 == null) {
                    str2 = "";
                }
                Log.println(6, str3, str2);
            }
        }
    }
}
