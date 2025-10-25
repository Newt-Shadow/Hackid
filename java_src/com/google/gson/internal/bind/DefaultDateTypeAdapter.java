package com.google.gson.internal.bind;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.b0;
import com.google.gson.internal.v;
import com.google.gson.q;
import com.google.gson.w;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class DefaultDateTypeAdapter<T extends Date> extends TypeAdapter {

    /* renamed from: c  reason: collision with root package name */
    public static final w f9159c = new w() { // from class: com.google.gson.internal.bind.DefaultDateTypeAdapter.1
        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            if (aVar.c() != Date.class) {
                return null;
            }
            return new DefaultDateTypeAdapter(a.f9162b, 2, 2);
        }

        public String toString() {
            return "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY";
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final a f9160a;

    /* renamed from: b  reason: collision with root package name */
    private final List f9161b;

    /* loaded from: classes.dex */
    public static abstract class a {

        /* renamed from: b  reason: collision with root package name */
        public static final a f9162b = new C0112a(Date.class);

        /* renamed from: a  reason: collision with root package name */
        private final Class f9163a;

        /* renamed from: com.google.gson.internal.bind.DefaultDateTypeAdapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0112a extends a {
            C0112a(Class cls) {
                super(cls);
            }

            @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.a
            protected Date d(Date date) {
                return date;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public a(Class cls) {
            this.f9163a = cls;
        }

        private w c(DefaultDateTypeAdapter defaultDateTypeAdapter) {
            return TypeAdapters.b(this.f9163a, defaultDateTypeAdapter);
        }

        public final w a(int i10, int i11) {
            return c(new DefaultDateTypeAdapter(this, i10, i11));
        }

        public final w b(String str) {
            return c(new DefaultDateTypeAdapter(this, str));
        }

        protected abstract Date d(Date date);
    }

    private Date f(c9.a aVar) {
        String C = aVar.C();
        synchronized (this.f9161b) {
            for (DateFormat dateFormat : this.f9161b) {
                TimeZone timeZone = dateFormat.getTimeZone();
                try {
                    Date parse = dateFormat.parse(C);
                    dateFormat.setTimeZone(timeZone);
                    return parse;
                } catch (ParseException unused) {
                    dateFormat.setTimeZone(timeZone);
                } catch (Throwable th) {
                    dateFormat.setTimeZone(timeZone);
                    throw th;
                }
            }
            try {
                return a9.a.f(C, new ParsePosition(0));
            } catch (ParseException e10) {
                throw new q("Failed parsing '" + C + "' as Date; at path " + aVar.q(), e10);
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: g */
    public Date c(c9.a aVar) {
        if (aVar.X() == c9.b.NULL) {
            aVar.H();
            return null;
        }
        return this.f9160a.d(f(aVar));
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: h */
    public void e(c cVar, Date date) {
        String format;
        if (date == null) {
            cVar.x();
            return;
        }
        DateFormat dateFormat = (DateFormat) this.f9161b.get(0);
        synchronized (this.f9161b) {
            format = dateFormat.format(date);
        }
        cVar.J0(format);
    }

    public String toString() {
        DateFormat dateFormat = (DateFormat) this.f9161b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    private DefaultDateTypeAdapter(a aVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.f9161b = arrayList;
        Objects.requireNonNull(aVar);
        this.f9160a = aVar;
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    private DefaultDateTypeAdapter(a aVar, int i10, int i11) {
        ArrayList arrayList = new ArrayList();
        this.f9161b = arrayList;
        Objects.requireNonNull(aVar);
        this.f9160a = aVar;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i10, i11, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i10, i11));
        }
        if (v.c()) {
            arrayList.add(b0.c(i10, i11));
        }
    }
}
