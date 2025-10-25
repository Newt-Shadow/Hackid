package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.coreutils.internal.io.GZIPCompressor;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.networktasks.internal.DefaultNetworkResponseHandler;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.RequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import io.appmetrica.analytics.networktasks.internal.SendingDataTaskHelper;
import io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask;
import io.appmetrica.analytics.protobuf.nano.CodedOutputByteBufferNano;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.vh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1572vh implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f20810a;

    /* renamed from: b  reason: collision with root package name */
    public final LinkedHashMap f20811b;

    /* renamed from: c  reason: collision with root package name */
    public C1612x7 f20812c;

    /* renamed from: d  reason: collision with root package name */
    public C1539u9 f20813d;

    /* renamed from: e  reason: collision with root package name */
    public final W6 f20814e;

    /* renamed from: f  reason: collision with root package name */
    public List f20815f;

    /* renamed from: g  reason: collision with root package name */
    public int f20816g;

    /* renamed from: h  reason: collision with root package name */
    public int f20817h;

    /* renamed from: i  reason: collision with root package name */
    public int f20818i;

    /* renamed from: j  reason: collision with root package name */
    public C1547uh f20819j;

    /* renamed from: k  reason: collision with root package name */
    public final C1458r3 f20820k;

    /* renamed from: l  reason: collision with root package name */
    public final PublicLogger f20821l;

    /* renamed from: m  reason: collision with root package name */
    public final Cdo f20822m;

    /* renamed from: n  reason: collision with root package name */
    public final InterfaceC1118db f20823n;

    /* renamed from: o  reason: collision with root package name */
    public final C1049ah f20824o;

    /* renamed from: p  reason: collision with root package name */
    public final FullUrlFormer f20825p;

    /* renamed from: q  reason: collision with root package name */
    public final Jb f20826q;

    /* renamed from: r  reason: collision with root package name */
    public final RequestDataHolder f20827r;

    /* renamed from: s  reason: collision with root package name */
    public final ResponseDataHolder f20828s;

    /* renamed from: t  reason: collision with root package name */
    public final SendingDataTaskHelper f20829t;

    /* renamed from: u  reason: collision with root package name */
    public int f20830u;

    /* renamed from: v  reason: collision with root package name */
    public boolean f20831v;

    public C1572vh(C1386o5 c1386o5, C1049ah c1049ah, Jb jb2, FullUrlFormer<C1323lh> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this(c1386o5, c1049ah, jb2, fullUrlFormer, requestDataHolder, responseDataHolder, c1386o5.h(), c1386o5.o(), c1386o5.t(), requestBodyEncrypter);
    }

    public final C1539u9 a(C1547uh c1547uh, List list, C1323lh c1323lh) {
        C1539u9 c1539u9 = new C1539u9();
        C1340m9 c1340m9 = new C1340m9();
        c1340m9.f20100a = WrapUtils.getOrDefaultIfEmpty(this.f20812c.f20906b, c1323lh.getUuid());
        c1340m9.f20101b = WrapUtils.getOrDefaultIfEmpty(this.f20812c.f20905a, c1323lh.getDeviceId());
        this.f20816g = CodedOutputByteBufferNano.computeMessageSize(4, c1340m9) + this.f20816g;
        c1539u9.f20723b = c1340m9;
        Um A = C1665za.E.A();
        C1497sh c1497sh = new C1497sh(this, c1539u9);
        synchronized (A) {
            A.f19097a.a(c1497sh);
        }
        List list2 = c1547uh.f20743a;
        c1539u9.f20722a = (C1464r9[]) list2.toArray(new C1464r9[list2.size()]);
        c1539u9.f20724c = a(c1547uh.f20745c);
        c1539u9.f20726e = (String[]) list.toArray(new String[list.size()]);
        this.f20816g = CodedOutputByteBufferNano.computeTagSize(8) + this.f20816g;
        return c1539u9;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final String description() {
        return "ReportTask_" + ApiKeyUtils.createPartialApiKey(this.f20810a.f20254b.f19717b);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final FullUrlFormer<?> getFullUrlFormer() {
        return this.f20825p;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final RequestDataHolder getRequestDataHolder() {
        return this.f20827r;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final ResponseDataHolder getResponseDataHolder() {
        return this.f20828s;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final RetryPolicyConfig getRetryPolicyConfig() {
        return ((C1323lh) this.f20810a.f20263k.a()).getRetryPolicyConfig();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final SSLSocketFactory getSslSocketFactory() {
        ((C1327ll) C1665za.E.y()).getClass();
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onCreateTask() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1572vh.onCreateTask():boolean");
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onPerformRequest() {
        this.f20829t.onPerformRequest();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onPostRequestComplete(boolean z10) {
        C1415p9[] c1415p9Arr;
        String a10;
        if (z10) {
            a(false);
        } else if (this.f20828s.getResponseCode() == 400) {
            a(true);
        }
        if (z10) {
            for (int i10 = 0; i10 < this.f20819j.f20743a.size(); i10++) {
                for (C1415p9 c1415p9 : ((C1464r9) this.f20819j.f20743a.get(i10)).f20521c) {
                    if (c1415p9 != null && (a10 = Mf.a(c1415p9)) != null) {
                        this.f20821l.info(a10, new Object[0]);
                    }
                }
            }
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final boolean onRequestComplete() {
        return this.f20829t.isResponseValid();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onRequestError(Throwable th) {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onShouldNotExecute() {
        this.f20831v = true;
        this.f20810a.f20257e.a();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onSuccessfulTaskFinished() {
        this.f20831v = true;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskAdded() {
        ((C1660z5) this.f20810a.f20268p).f21018d.set(false);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskFinished() {
        this.f20810a.f20257e.a();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskRemoved() {
        ((C1660z5) this.f20810a.f20268p).f21018d.set(true);
        if (this.f20831v) {
            ((C1660z5) this.f20810a.f20268p).f();
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onUnsuccessfulTaskFinished() {
    }

    public C1572vh(C1386o5 c1386o5, C1049ah c1049ah, Jb jb2, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, W6 w62, PublicLogger publicLogger, Cdo cdo, RequestBodyEncrypter requestBodyEncrypter) {
        this(c1386o5, publicLogger, w62, c1049ah, cdo, jb2, new C1458r3(1024000, "event value in ReportTask", publicLogger), AbstractC1382o1.a(), fullUrlFormer, requestDataHolder, responseDataHolder, requestBodyEncrypter);
    }

    public C1572vh(C1386o5 c1386o5, PublicLogger publicLogger, W6 w62, C1049ah c1049ah, Cdo cdo, Jb jb2, C1458r3 c1458r3, Oj oj, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this.f20811b = new LinkedHashMap();
        this.f20816g = 0;
        this.f20817h = 0;
        this.f20818i = -1;
        this.f20831v = false;
        this.f20829t = new SendingDataTaskHelper(requestBodyEncrypter, new GZIPCompressor(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler());
        this.f20824o = c1049ah;
        this.f20810a = c1386o5;
        this.f20814e = w62;
        this.f20821l = publicLogger;
        this.f20820k = c1458r3;
        this.f20822m = cdo;
        this.f20826q = jb2;
        this.f20823n = oj;
        this.f20827r = requestDataHolder;
        this.f20828s = responseDataHolder;
        this.f20825p = fullUrlFormer;
    }

    public static C1265j9[] a(JSONObject jSONObject) {
        int length = jSONObject.length();
        if (length > 0) {
            C1265j9[] c1265j9Arr = new C1265j9[length];
            Iterator<String> keys = jSONObject.keys();
            int i10 = 0;
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    C1265j9 c1265j9 = new C1265j9();
                    c1265j9.f19847a = next;
                    c1265j9.f19848b = jSONObject.getString(next);
                    c1265j9Arr[i10] = c1265j9;
                } catch (Throwable unused) {
                }
                i10++;
            }
            return c1265j9Arr;
        }
        return null;
    }

    public final void a(boolean z10) {
        Cdo cdo = this.f20822m;
        int i10 = this.f20830u;
        synchronized (cdo) {
            eo eoVar = cdo.f19546a;
            eoVar.a(eoVar.a().put("report_request_id", i10));
        }
        C1464r9[] c1464r9Arr = this.f20813d.f20722a;
        for (int i11 = 0; i11 < c1464r9Arr.length; i11++) {
            try {
                C1464r9 c1464r9 = c1464r9Arr[i11];
                long longValue = ((Long) this.f20815f.get(i11)).longValue();
                Ik ik = (Ik) Lf.f18535b.get(c1464r9.f20520b.f20433c);
                if (ik == null) {
                    ik = Ik.FOREGROUND;
                }
                this.f20814e.a(longValue, ik.f18409a, c1464r9.f20521c.length, z10);
                Lf.a(c1464r9);
            } catch (Throwable unused) {
            }
        }
        W6 w62 = this.f20814e;
        long a10 = this.f20810a.f20262j.a();
        w62.f19145b.lock();
        try {
            if (L5.f18513a.booleanValue()) {
                w62.d();
            }
            SQLiteDatabase writableDatabase = w62.f19146c.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("sessions", J5.f18426c, new String[]{String.valueOf(a10)});
            }
        } catch (Throwable unused2) {
        }
        w62.f19145b.unlock();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ea A[LOOP:1: B:44:0x00e4->B:46:0x00ea, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.C1547uh a(io.appmetrica.analytics.impl.C1323lh r17) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1572vh.a(io.appmetrica.analytics.impl.lh):io.appmetrica.analytics.impl.uh");
    }

    public static C1057b0 a(ContentValues contentValues) {
        C1438q7 model = new C1462r7(null, 1, null).toModel(contentValues);
        return new C1057b0((String) WrapUtils.getOrDefault(model.f20423g.f20336g, ""), ((Long) WrapUtils.getOrDefault(model.f20423g.f20337h, 0L)).longValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x006c A[Catch: all -> 0x010c, TryCatch #4 {all -> 0x010c, blocks: (B:7:0x0025, B:8:0x002b, B:10:0x0032, B:12:0x0038, B:29:0x006c, B:31:0x0072, B:40:0x0094, B:45:0x00a5, B:47:0x00b4, B:54:0x00c0, B:53:0x00bf, B:50:0x00ba, B:55:0x00c6, B:58:0x00d8, B:61:0x00df, B:42:0x009d, B:64:0x00e7, B:26:0x0065, B:65:0x00f1, B:67:0x00f7), top: B:90:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00e7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.C1522th a(long r17, io.appmetrica.analytics.impl.C1440q9 r19, io.appmetrica.analytics.impl.C1323lh r20, java.util.ArrayList r21, int r22) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1572vh.a(long, io.appmetrica.analytics.impl.q9, io.appmetrica.analytics.impl.lh, java.util.ArrayList, int):io.appmetrica.analytics.impl.th");
    }

    public final Cursor a() {
        Cursor cursor;
        SQLiteDatabase readableDatabase;
        W6 w62 = this.f20814e;
        LinkedHashMap linkedHashMap = this.f20811b;
        w62.f19144a.lock();
        try {
            readableDatabase = w62.f19146c.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            cursor = readableDatabase.query("sessions", null, W6.a(linkedHashMap), W6.a(new String[]{Long.toString(0L)}, linkedHashMap), null, null, "id ASC", null);
            w62.f19144a.unlock();
            return cursor;
        }
        cursor = null;
        w62.f19144a.unlock();
        return cursor;
    }

    public final Cursor a(long j10, Ik ik) {
        Cursor cursor;
        SQLiteDatabase readableDatabase;
        W6 w62 = this.f20814e;
        w62.f19144a.lock();
        try {
            readableDatabase = w62.f19146c.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            cursor = readableDatabase.query("events", null, "session_id = ? AND session_type = ?", new String[]{Long.toString(j10), Integer.toString(ik.f18409a)}, null, null, "number_in_session ASC", null);
            w62.f19144a.unlock();
            return cursor;
        }
        cursor = null;
        w62.f19144a.unlock();
        return cursor;
    }
}
