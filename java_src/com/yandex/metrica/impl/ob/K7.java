package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import com.yandex.metrica.CounterConfiguration;
import java.util.List;
/* loaded from: classes2.dex */
public class K7 {

    /* renamed from: a  reason: collision with root package name */
    private final CounterConfiguration.b f10608a;

    /* renamed from: b  reason: collision with root package name */
    private final C0621j2 f10609b;

    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<ContentValues> f10610a;

        /* renamed from: b  reason: collision with root package name */
        public final int f10611b;

        a(List<ContentValues> list, int i10) {
            this.f10610a = list;
            this.f10611b = i10;
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        BAD_REQUEST("bad_request"),
        DB_OVERFLOW("db_overflow");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f10615a;

        b(String str) {
            this.f10615a = str;
        }
    }

    public K7(CounterConfiguration.b bVar) {
        this(bVar, F0.g().p());
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.K7.a a(android.database.sqlite.SQLiteDatabase r18, java.lang.String r19, java.lang.String r20, com.yandex.metrica.impl.ob.K7.b r21, java.lang.String r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.K7.a(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, com.yandex.metrica.impl.ob.K7$b, java.lang.String, boolean):com.yandex.metrica.impl.ob.K7$a");
    }

    K7(CounterConfiguration.b bVar, C0621j2 c0621j2) {
        this.f10608a = bVar;
        this.f10609b = c0621j2;
    }
}
