package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.m2;
import io.sentry.q1;
import java.net.InetAddress;
import java.net.URI;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerArray;
/* loaded from: classes2.dex */
public final class p implements m2 {

    /* renamed from: a  reason: collision with root package name */
    final Map f23794a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayDeque f23795b;

    public p(Map map) {
        this.f23794a = map;
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f23795b = arrayDeque;
        arrayDeque.addLast(map);
    }

    private void A(ILogger iLogger, TimeZone timeZone) {
        try {
            c(timeZone.getID());
        } catch (Exception e10) {
            iLogger.b(j5.ERROR, "Error when serializing TimeZone", e10);
            i();
        }
    }

    private Map v() {
        Object peekLast = this.f23795b.peekLast();
        if (peekLast != null) {
            if (peekLast instanceof Map) {
                return (Map) peekLast;
            }
            throw new IllegalStateException("Stack element is not a Map.");
        }
        throw new IllegalStateException("Stack is empty.");
    }

    private void w(Object obj) {
        Object peekLast = this.f23795b.peekLast();
        if (peekLast instanceof List) {
            ((List) peekLast).add(obj);
        } else if (peekLast instanceof String) {
            v().put((String) this.f23795b.removeLast(), obj);
        } else {
            throw new IllegalStateException("Invalid stack state, expected array or string on top");
        }
    }

    private void x(ILogger iLogger, Collection collection) {
        l();
        for (Object obj : collection) {
            g(iLogger, obj);
        }
        j();
    }

    private void y(ILogger iLogger, Date date) {
        try {
            c(io.sentry.j.g(date));
        } catch (Exception e10) {
            iLogger.b(j5.ERROR, "Error when serializing Date", e10);
            i();
        }
    }

    private void z(ILogger iLogger, Map map) {
        t();
        for (Object obj : map.keySet()) {
            if (obj instanceof String) {
                k((String) obj);
                g(iLogger, map.get(obj));
            }
        }
        r();
    }

    @Override // io.sentry.m2
    /* renamed from: B */
    public p b(double d10) {
        w(Double.valueOf(d10));
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: C */
    public p a(long j10) {
        w(Long.valueOf(j10));
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: D */
    public p g(ILogger iLogger, Object obj) {
        if (obj == null) {
            i();
        } else if (obj instanceof Character) {
            c(Character.toString(((Character) obj).charValue()));
        } else if (obj instanceof String) {
            c((String) obj);
        } else if (obj instanceof Boolean) {
            d(((Boolean) obj).booleanValue());
        } else if (obj instanceof Number) {
            f((Number) obj);
        } else if (obj instanceof Date) {
            y(iLogger, (Date) obj);
        } else if (obj instanceof TimeZone) {
            A(iLogger, (TimeZone) obj);
        } else if (obj instanceof q1) {
            ((q1) obj).serialize(this, iLogger);
        } else if (obj instanceof Collection) {
            x(iLogger, (Collection) obj);
        } else if (obj.getClass().isArray()) {
            x(iLogger, Arrays.asList((Object[]) obj));
        } else if (obj instanceof Map) {
            z(iLogger, (Map) obj);
        } else if (obj instanceof Locale) {
            c(obj.toString());
        } else if (obj instanceof AtomicIntegerArray) {
            x(iLogger, l.a((AtomicIntegerArray) obj));
        } else if (obj instanceof AtomicBoolean) {
            d(((AtomicBoolean) obj).get());
        } else if (obj instanceof URI) {
            c(obj.toString());
        } else if (obj instanceof InetAddress) {
            c(obj.toString());
        } else if (obj instanceof UUID) {
            c(obj.toString());
        } else if (obj instanceof Currency) {
            c(obj.toString());
        } else if (obj instanceof Calendar) {
            z(iLogger, l.c((Calendar) obj));
        } else if (obj.getClass().isEnum()) {
            c(obj.toString());
        } else {
            iLogger.c(j5.WARNING, "Failed serializing unknown object.", obj);
        }
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: E */
    public p h(Boolean bool) {
        w(bool);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: F */
    public p f(Number number) {
        w(number);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: G */
    public p c(String str) {
        w(str);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: H */
    public p d(boolean z10) {
        w(Boolean.valueOf(z10));
        return this;
    }

    @Override // io.sentry.m2
    public m2 e(String str) {
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: m */
    public p l() {
        this.f23795b.add(new ArrayList());
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: n */
    public p t() {
        this.f23795b.addLast(new HashMap());
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: o */
    public p j() {
        r();
        return this;
    }

    @Override // io.sentry.m2
    public void p(boolean z10) {
    }

    @Override // io.sentry.m2
    /* renamed from: q */
    public p r() {
        w(this.f23795b.removeLast());
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: s */
    public p k(String str) {
        this.f23795b.add(str);
        return this;
    }

    @Override // io.sentry.m2
    /* renamed from: u */
    public p i() {
        w(null);
        return this;
    }
}
