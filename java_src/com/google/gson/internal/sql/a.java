package com.google.gson.internal.sql;

import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.w;
import java.sql.Date;
import java.sql.Timestamp;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f9311a;

    /* renamed from: b  reason: collision with root package name */
    public static final DefaultDateTypeAdapter.a f9312b;

    /* renamed from: c  reason: collision with root package name */
    public static final DefaultDateTypeAdapter.a f9313c;

    /* renamed from: d  reason: collision with root package name */
    public static final w f9314d;

    /* renamed from: e  reason: collision with root package name */
    public static final w f9315e;

    /* renamed from: f  reason: collision with root package name */
    public static final w f9316f;

    /* renamed from: com.google.gson.internal.sql.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0115a extends DefaultDateTypeAdapter.a {
        C0115a(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.a
        /* renamed from: e */
        public Date d(java.util.Date date) {
            return new Date(date.getTime());
        }
    }

    /* loaded from: classes.dex */
    class b extends DefaultDateTypeAdapter.a {
        b(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.a
        /* renamed from: e */
        public Timestamp d(java.util.Date date) {
            return new Timestamp(date.getTime());
        }
    }

    static {
        boolean z10;
        try {
            Class.forName("java.sql.Date");
            z10 = true;
        } catch (ClassNotFoundException unused) {
            z10 = false;
        }
        f9311a = z10;
        if (z10) {
            f9312b = new C0115a(Date.class);
            f9313c = new b(Timestamp.class);
            f9314d = SqlDateTypeAdapter.f9305b;
            f9315e = SqlTimeTypeAdapter.f9307b;
            f9316f = SqlTimestampTypeAdapter.f9309b;
            return;
        }
        f9312b = null;
        f9313c = null;
        f9314d = null;
        f9315e = null;
        f9316f = null;
    }
}
