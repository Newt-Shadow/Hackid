package io.sentry;

import java.net.InetAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* loaded from: classes2.dex */
public final class n1 {

    /* renamed from: a  reason: collision with root package name */
    public final p1 f23276a;

    public n1(int i10) {
        this.f23276a = new p1(i10);
    }

    private void b(m2 m2Var, ILogger iLogger, Collection collection) {
        m2Var.l();
        for (Object obj : collection) {
            a(m2Var, iLogger, obj);
        }
        m2Var.j();
    }

    private void c(m2 m2Var, ILogger iLogger, Date date) {
        try {
            m2Var.c(j.g(date));
        } catch (Exception e10) {
            iLogger.b(j5.ERROR, "Error when serializing Date", e10);
            m2Var.i();
        }
    }

    private void d(m2 m2Var, ILogger iLogger, Map map) {
        m2Var.t();
        for (Object obj : map.keySet()) {
            if (obj instanceof String) {
                m2Var.k((String) obj);
                a(m2Var, iLogger, map.get(obj));
            }
        }
        m2Var.r();
    }

    private void e(m2 m2Var, ILogger iLogger, TimeZone timeZone) {
        try {
            m2Var.c(timeZone.getID());
        } catch (Exception e10) {
            iLogger.b(j5.ERROR, "Error when serializing TimeZone", e10);
            m2Var.i();
        }
    }

    public void a(m2 m2Var, ILogger iLogger, Object obj) {
        if (obj == null) {
            m2Var.i();
        } else if (obj instanceof Character) {
            m2Var.c(Character.toString(((Character) obj).charValue()));
        } else if (obj instanceof String) {
            m2Var.c((String) obj);
        } else if (obj instanceof Boolean) {
            m2Var.d(((Boolean) obj).booleanValue());
        } else if (obj instanceof Number) {
            m2Var.f((Number) obj);
        } else if (obj instanceof Date) {
            c(m2Var, iLogger, (Date) obj);
        } else if (obj instanceof TimeZone) {
            e(m2Var, iLogger, (TimeZone) obj);
        } else if (obj instanceof q1) {
            ((q1) obj).serialize(m2Var, iLogger);
        } else if (obj instanceof Collection) {
            b(m2Var, iLogger, (Collection) obj);
        } else if (obj.getClass().isArray()) {
            b(m2Var, iLogger, Arrays.asList((Object[]) obj));
        } else if (obj instanceof Map) {
            d(m2Var, iLogger, (Map) obj);
        } else if (obj instanceof Locale) {
            m2Var.c(obj.toString());
        } else if (obj instanceof AtomicIntegerArray) {
            b(m2Var, iLogger, io.sentry.util.l.a((AtomicIntegerArray) obj));
        } else if (obj instanceof AtomicBoolean) {
            m2Var.d(((AtomicBoolean) obj).get());
        } else if (obj instanceof URI) {
            m2Var.c(obj.toString());
        } else if (obj instanceof InetAddress) {
            m2Var.c(obj.toString());
        } else if (obj instanceof UUID) {
            m2Var.c(obj.toString());
        } else if (obj instanceof Currency) {
            m2Var.c(obj.toString());
        } else if (obj instanceof Calendar) {
            d(m2Var, iLogger, io.sentry.util.l.c((Calendar) obj));
        } else if (obj.getClass().isEnum()) {
            m2Var.c(obj.toString());
        } else {
            try {
                a(m2Var, iLogger, this.f23276a.d(obj, iLogger));
            } catch (Exception e10) {
                iLogger.b(j5.ERROR, "Failed serializing unknown object.", e10);
                m2Var.c("[OBJECT]");
            }
        }
    }
}
