package com.google.gson.internal.sql;

import c9.b;
import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.q;
import com.google.gson.w;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes.dex */
final class SqlTimeTypeAdapter extends TypeAdapter {

    /* renamed from: b  reason: collision with root package name */
    static final w f9307b = new w() { // from class: com.google.gson.internal.sql.SqlTimeTypeAdapter.1
        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            if (aVar.c() != Time.class) {
                return null;
            }
            return new SqlTimeTypeAdapter();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final DateFormat f9308a;

    @Override // com.google.gson.TypeAdapter
    /* renamed from: f */
    public Time c(c9.a aVar) {
        Time time;
        if (aVar.X() == b.NULL) {
            aVar.H();
            return null;
        }
        String C = aVar.C();
        synchronized (this) {
            TimeZone timeZone = this.f9308a.getTimeZone();
            try {
                time = new Time(this.f9308a.parse(C).getTime());
                this.f9308a.setTimeZone(timeZone);
            } catch (ParseException e10) {
                throw new q("Failed parsing '" + C + "' as SQL Time; at path " + aVar.q(), e10);
            }
        }
        return time;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: g */
    public void e(c cVar, Time time) {
        String format;
        if (time == null) {
            cVar.x();
            return;
        }
        synchronized (this) {
            format = this.f9308a.format((Date) time);
        }
        cVar.J0(format);
    }

    private SqlTimeTypeAdapter() {
        this.f9308a = new SimpleDateFormat("hh:mm:ss a");
    }
}
