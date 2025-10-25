package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class I6 {

    /* renamed from: a  reason: collision with root package name */
    public final El f18372a = new El();

    /* renamed from: b  reason: collision with root package name */
    public Map f18373b;

    /* renamed from: c  reason: collision with root package name */
    public Map f18374c;

    /* renamed from: d  reason: collision with root package name */
    public IdentifiersResult f18375d;

    public I6() {
        Map e10;
        Map e11;
        e10 = yc.h0.e();
        this.f18373b = e10;
        e11 = yc.h0.e();
        this.f18374c = e11;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00e2 A[Catch: all -> 0x00ee, TRY_ENTER, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0006, B:8:0x000c, B:11:0x0013, B:13:0x0017, B:16:0x001f, B:29:0x0056, B:30:0x006b, B:32:0x0071, B:36:0x0090, B:35:0x008b, B:38:0x00a3, B:39:0x00ba, B:41:0x00c0, B:48:0x00e2, B:49:0x00e6, B:50:0x00ea, B:37:0x009f, B:19:0x0027), top: B:62:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(io.appmetrica.analytics.internal.IdentifiersResult r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            io.appmetrica.analytics.internal.IdentifiersResult r0 = r8.f18375d     // Catch: java.lang.Throwable -> Lee
            r1 = 0
            if (r0 == 0) goto L9
            java.lang.String r0 = r0.f21091id     // Catch: java.lang.Throwable -> Lee
            goto La
        L9:
            r0 = r1
        La:
            if (r0 == 0) goto L1f
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Lee
            if (r0 != 0) goto L13
            goto L1f
        L13:
            java.lang.String r0 = r9.f21091id     // Catch: java.lang.Throwable -> Lee
            if (r0 == 0) goto Lec
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Lee
            if (r0 != 0) goto L1f
            goto Lec
        L1f:
            r8.f18375d = r9     // Catch: java.lang.Throwable -> Lee
            java.lang.String r0 = r9.f21091id     // Catch: java.lang.Throwable -> Lee
            if (r0 != 0) goto L27
            r2 = r1
            goto L54
        L27:
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Throwable -> Lee
            r2.<init>()     // Catch: java.lang.Throwable -> Lee
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L54
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L54
            java.util.Iterator r0 = r3.keys()     // Catch: java.lang.Throwable -> L54
        L35:
            boolean r4 = r0.hasNext()     // Catch: java.lang.Throwable -> L54
            if (r4 == 0) goto L54
            java.lang.Object r4 = r0.next()     // Catch: java.lang.Throwable -> L54
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L54
            org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L35
            java.lang.String r6 = r3.optString(r4)     // Catch: java.lang.Throwable -> L35
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L35
            java.util.ArrayList r5 = io.appmetrica.analytics.impl.AbstractC1491sb.a(r5)     // Catch: java.lang.Throwable -> L35
            if (r5 == 0) goto L35
            r2.put(r4, r5)     // Catch: java.lang.Throwable -> L35
            goto L35
        L54:
            if (r2 == 0) goto L9f
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Lee
            int r3 = r2.size()     // Catch: java.lang.Throwable -> Lee
            int r3 = yc.e0.b(r3)     // Catch: java.lang.Throwable -> Lee
            r0.<init>(r3)     // Catch: java.lang.Throwable -> Lee
            java.util.Set r2 = r2.entrySet()     // Catch: java.lang.Throwable -> Lee
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> Lee
        L6b:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> Lee
            if (r3 == 0) goto La3
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> Lee
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> Lee
            io.appmetrica.analytics.internal.IdentifiersResult r5 = new io.appmetrica.analytics.internal.IdentifiersResult     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> Lee
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> Lee
            boolean r6 = io.appmetrica.analytics.impl.Rn.a(r3)     // Catch: java.lang.Throwable -> Lee
            if (r6 == 0) goto L8b
            r6 = r1
            goto L90
        L8b:
            org.json.JSONArray r6 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Lee
            r6.<init>(r3)     // Catch: java.lang.Throwable -> Lee
        L90:
            java.lang.String r3 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> Lee
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r6 = r9.status     // Catch: java.lang.Throwable -> Lee
            java.lang.String r7 = r9.errorExplanation     // Catch: java.lang.Throwable -> Lee
            r5.<init>(r3, r6, r7)     // Catch: java.lang.Throwable -> Lee
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> Lee
            goto L6b
        L9f:
            java.util.Map r0 = yc.e0.e()     // Catch: java.lang.Throwable -> Lee
        La3:
            r8.f18374c = r0     // Catch: java.lang.Throwable -> Lee
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Lee
            int r2 = r0.size()     // Catch: java.lang.Throwable -> Lee
            int r2 = yc.e0.b(r2)     // Catch: java.lang.Throwable -> Lee
            r9.<init>(r2)     // Catch: java.lang.Throwable -> Lee
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> Lee
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lee
        Lba:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> Lee
            if (r2 == 0) goto Lea
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> Lee
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r3 = r2.getKey()     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Throwable -> Lee
            io.appmetrica.analytics.internal.IdentifiersResult r2 = (io.appmetrica.analytics.internal.IdentifiersResult) r2     // Catch: java.lang.Throwable -> Lee
            java.lang.String r2 = r2.f21091id     // Catch: java.lang.Throwable -> Lee
            if (r2 != 0) goto Ld5
            goto Ldf
        Ld5:
            org.json.JSONArray r4 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Ldf
            r4.<init>(r2)     // Catch: java.lang.Throwable -> Ldf
            java.util.ArrayList r2 = io.appmetrica.analytics.impl.AbstractC1491sb.a(r4)     // Catch: java.lang.Throwable -> Ldf
            goto Le0
        Ldf:
            r2 = r1
        Le0:
            if (r2 != 0) goto Le6
            java.util.List r2 = yc.m.h()     // Catch: java.lang.Throwable -> Lee
        Le6:
            r9.put(r3, r2)     // Catch: java.lang.Throwable -> Lee
            goto Lba
        Lea:
            r8.f18373b = r9     // Catch: java.lang.Throwable -> Lee
        Lec:
            monitor-exit(r8)
            return
        Lee:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.I6.a(io.appmetrica.analytics.internal.IdentifiersResult):void");
    }

    public final synchronized void a(List list, HashMap hashMap) {
        IdentifierStatus identifierStatus;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            List list2 = (List) this.f18373b.get(str);
            if (list2 != null && !list2.isEmpty()) {
                linkedHashMap.put(str, list2);
            }
        }
        El el = this.f18372a;
        String a10 = AbstractC1491sb.a((Map) linkedHashMap);
        IdentifiersResult identifiersResult = this.f18375d;
        if (identifiersResult == null || (identifierStatus = identifiersResult.status) == null) {
            identifierStatus = IdentifierStatus.UNKNOWN;
        }
        hashMap.put("appmetrica_custom_sdk_hosts", el.a(new IdentifiersResult(a10, identifierStatus, identifiersResult != null ? identifiersResult.errorExplanation : null)));
    }
}
