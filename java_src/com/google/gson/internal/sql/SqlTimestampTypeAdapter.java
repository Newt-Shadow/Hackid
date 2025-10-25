package com.google.gson.internal.sql;

import c9.c;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.w;
import java.sql.Timestamp;
import java.util.Date;
/* loaded from: classes.dex */
class SqlTimestampTypeAdapter extends TypeAdapter {

    /* renamed from: b  reason: collision with root package name */
    static final w f9309b = new w() { // from class: com.google.gson.internal.sql.SqlTimestampTypeAdapter.1
        @Override // com.google.gson.w
        public TypeAdapter create(Gson gson, com.google.gson.reflect.a aVar) {
            if (aVar.c() != Timestamp.class) {
                return null;
            }
            return new SqlTimestampTypeAdapter(gson.p(Date.class));
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final TypeAdapter f9310a;

    @Override // com.google.gson.TypeAdapter
    /* renamed from: f */
    public Timestamp c(c9.a aVar) {
        Date date = (Date) this.f9310a.c(aVar);
        if (date != null) {
            return new Timestamp(date.getTime());
        }
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: g */
    public void e(c cVar, Timestamp timestamp) {
        this.f9310a.e(cVar, timestamp);
    }

    private SqlTimestampTypeAdapter(TypeAdapter typeAdapter) {
        this.f9310a = typeAdapter;
    }
}
