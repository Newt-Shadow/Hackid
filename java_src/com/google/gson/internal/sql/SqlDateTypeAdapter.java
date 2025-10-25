package com.google.gson.internal.sql;

import c9.b;
import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.q;
import com.google.gson.w;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
/* loaded from: classes.dex */
final class SqlDateTypeAdapter extends TypeAdapter {

    /* renamed from: b  reason: collision with root package name */
    static final w f9305b = new w() { // from class: com.google.gson.internal.sql.SqlDateTypeAdapter.1
        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            if (aVar.c() != Date.class) {
                return null;
            }
            return new SqlDateTypeAdapter();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final DateFormat f9306a;

    @Override // com.google.gson.TypeAdapter
    /* renamed from: f */
    public Date c(c9.a aVar) {
        Date date;
        if (aVar.X() == b.NULL) {
            aVar.H();
            return null;
        }
        String C = aVar.C();
        synchronized (this) {
            TimeZone timeZone = this.f9306a.getTimeZone();
            try {
                date = new Date(this.f9306a.parse(C).getTime());
                this.f9306a.setTimeZone(timeZone);
            } catch (ParseException e10) {
                throw new q("Failed parsing '" + C + "' as SQL Date; at path " + aVar.q(), e10);
            }
        }
        return date;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: g */
    public void e(c cVar, Date date) {
        String format;
        if (date == null) {
            cVar.x();
            return;
        }
        synchronized (this) {
            format = this.f9306a.format((java.util.Date) date);
        }
        cVar.J0(format);
    }

    private SqlDateTypeAdapter() {
        this.f9306a = new SimpleDateFormat("MMM d, yyyy");
    }
}
