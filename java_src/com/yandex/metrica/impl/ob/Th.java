package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Th {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, ? extends List<String>> f11426a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, ? extends W0> f11427b;

    /* renamed from: c  reason: collision with root package name */
    private W0 f11428c;

    public Th() {
        Map<String, ? extends List<String>> e10;
        Map<String, ? extends W0> e11;
        e10 = yc.h0.e();
        this.f11426a = e10;
        e11 = yc.h0.e();
        this.f11427b = e11;
    }

    public final W0 a() {
        return this.f11428c;
    }

    public final Map<String, W0> b() {
        return this.f11427b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0025, code lost:
        if (r2 == false) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001a A[Catch: all -> 0x00ee, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:9:0x000e, B:15:0x001a, B:17:0x001e, B:21:0x0027, B:34:0x005e, B:35:0x0073, B:37:0x0079, B:39:0x00a2, B:40:0x00b9, B:42:0x00bf, B:50:0x00e2, B:51:0x00e6, B:52:0x00ea, B:38:0x009e, B:24:0x002f), top: B:66:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x002f A[Catch: all -> 0x00ee, TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:9:0x000e, B:15:0x001a, B:17:0x001e, B:21:0x0027, B:34:0x005e, B:35:0x0073, B:37:0x0079, B:39:0x00a2, B:40:0x00b9, B:42:0x00bf, B:50:0x00e2, B:51:0x00e6, B:52:0x00ea, B:38:0x009e, B:24:0x002f), top: B:66:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005e A[Catch: all -> 0x00ee, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:9:0x000e, B:15:0x001a, B:17:0x001e, B:21:0x0027, B:34:0x005e, B:35:0x0073, B:37:0x0079, B:39:0x00a2, B:40:0x00b9, B:42:0x00bf, B:50:0x00e2, B:51:0x00e6, B:52:0x00ea, B:38:0x009e, B:24:0x002f), top: B:66:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009e A[Catch: all -> 0x00ee, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:9:0x000e, B:15:0x001a, B:17:0x001e, B:21:0x0027, B:34:0x005e, B:35:0x0073, B:37:0x0079, B:39:0x00a2, B:40:0x00b9, B:42:0x00bf, B:50:0x00e2, B:51:0x00e6, B:52:0x00ea, B:38:0x009e, B:24:0x002f), top: B:66:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bf A[Catch: all -> 0x00ee, TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:9:0x000e, B:15:0x001a, B:17:0x001e, B:21:0x0027, B:34:0x005e, B:35:0x0073, B:37:0x0079, B:39:0x00a2, B:40:0x00b9, B:42:0x00bf, B:50:0x00e2, B:51:0x00e6, B:52:0x00ea, B:38:0x009e, B:24:0x002f), top: B:66:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00e2 A[Catch: all -> 0x00ee, TRY_ENTER, TryCatch #3 {, blocks: (B:3:0x0001, B:5:0x0006, B:9:0x000e, B:15:0x001a, B:17:0x001e, B:21:0x0027, B:34:0x005e, B:35:0x0073, B:37:0x0079, B:39:0x00a2, B:40:0x00b9, B:42:0x00bf, B:50:0x00e2, B:51:0x00e6, B:52:0x00ea, B:38:0x009e, B:24:0x002f), top: B:66:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(com.yandex.metrica.impl.ob.W0 r9) {
        /*
            r8 = this;
            monitor-enter(r8)
            com.yandex.metrica.impl.ob.W0 r0 = r8.f11428c     // Catch: java.lang.Throwable -> Lee
            r1 = 0
            if (r0 == 0) goto L9
            java.lang.String r0 = r0.f11672a     // Catch: java.lang.Throwable -> Lee
            goto La
        L9:
            r0 = r1
        La:
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L17
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Lee
            if (r0 != 0) goto L15
            goto L17
        L15:
            r0 = r2
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 != 0) goto L27
            java.lang.String r0 = r9.f11672a     // Catch: java.lang.Throwable -> Lee
            if (r0 == 0) goto L24
            int r0 = r0.length()     // Catch: java.lang.Throwable -> Lee
            if (r0 != 0) goto L25
        L24:
            r2 = r3
        L25:
            if (r2 != 0) goto Lec
        L27:
            r8.f11428c = r9     // Catch: java.lang.Throwable -> Lee
            java.lang.String r0 = r9.f11672a     // Catch: java.lang.Throwable -> Lee
            if (r0 != 0) goto L2f
            r2 = r1
            goto L5c
        L2f:
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Throwable -> Lee
            r2.<init>()     // Catch: java.lang.Throwable -> Lee
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L5c
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L5c
            java.util.Iterator r0 = r3.keys()     // Catch: java.lang.Throwable -> L5c
        L3d:
            boolean r4 = r0.hasNext()     // Catch: java.lang.Throwable -> L5c
            if (r4 == 0) goto L5c
            java.lang.Object r4 = r0.next()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L5c
            org.json.JSONArray r5 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L3d
            java.lang.String r6 = r3.optString(r4)     // Catch: java.lang.Throwable -> L3d
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L3d
            java.util.List r5 = com.yandex.metrica.impl.ob.Tl.b(r5)     // Catch: java.lang.Throwable -> L3d
            if (r5 == 0) goto L3d
            r2.put(r4, r5)     // Catch: java.lang.Throwable -> L3d
            goto L3d
        L5c:
            if (r2 == 0) goto L9e
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Lee
            int r3 = r2.size()     // Catch: java.lang.Throwable -> Lee
            int r3 = yc.e0.b(r3)     // Catch: java.lang.Throwable -> Lee
            r0.<init>(r3)     // Catch: java.lang.Throwable -> Lee
            java.util.Set r2 = r2.entrySet()     // Catch: java.lang.Throwable -> Lee
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> Lee
        L73:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> Lee
            if (r3 == 0) goto La2
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> Lee
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> Lee
            com.yandex.metrica.impl.ob.W0 r5 = new com.yandex.metrica.impl.ob.W0     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> Lee
            java.util.List r3 = (java.util.List) r3     // Catch: java.lang.Throwable -> Lee
            org.json.JSONArray r3 = com.yandex.metrica.impl.ob.Tl.b(r3)     // Catch: java.lang.Throwable -> Lee
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> Lee
            com.yandex.metrica.impl.ob.U0 r6 = r9.f11673b     // Catch: java.lang.Throwable -> Lee
            java.lang.String r7 = r9.f11674c     // Catch: java.lang.Throwable -> Lee
            r5.<init>(r3, r6, r7)     // Catch: java.lang.Throwable -> Lee
            r0.put(r4, r5)     // Catch: java.lang.Throwable -> Lee
            goto L73
        L9e:
            java.util.Map r0 = yc.e0.e()     // Catch: java.lang.Throwable -> Lee
        La2:
            r8.f11427b = r0     // Catch: java.lang.Throwable -> Lee
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> Lee
            int r2 = r0.size()     // Catch: java.lang.Throwable -> Lee
            int r2 = yc.e0.b(r2)     // Catch: java.lang.Throwable -> Lee
            r9.<init>(r2)     // Catch: java.lang.Throwable -> Lee
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> Lee
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> Lee
        Lb9:
            boolean r2 = r0.hasNext()     // Catch: java.lang.Throwable -> Lee
            if (r2 == 0) goto Lea
            java.lang.Object r2 = r0.next()     // Catch: java.lang.Throwable -> Lee
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r3 = r2.getKey()     // Catch: java.lang.Throwable -> Lee
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Throwable -> Lee
            com.yandex.metrica.impl.ob.W0 r2 = (com.yandex.metrica.impl.ob.W0) r2     // Catch: java.lang.Throwable -> Lee
            java.lang.String r2 = r2.f11672a     // Catch: java.lang.Throwable -> Lee
            if (r2 != 0) goto Ld4
            goto Lde
        Ld4:
            org.json.JSONArray r4 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Lde
            r4.<init>(r2)     // Catch: java.lang.Throwable -> Lde
            java.util.List r2 = com.yandex.metrica.impl.ob.Tl.b(r4)     // Catch: java.lang.Throwable -> Lde
            goto Ldf
        Lde:
            r2 = r1
        Ldf:
            if (r2 == 0) goto Le2
            goto Le6
        Le2:
            java.util.List r2 = yc.m.h()     // Catch: java.lang.Throwable -> Lee
        Le6:
            r9.put(r3, r2)     // Catch: java.lang.Throwable -> Lee
            goto Lb9
        Lea:
            r8.f11426a = r9     // Catch: java.lang.Throwable -> Lee
        Lec:
            monitor-exit(r8)
            return
        Lee:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Th.a(com.yandex.metrica.impl.ob.W0):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x000a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.util.List<java.lang.String> r5, java.util.Map<java.lang.String, com.yandex.metrica.impl.ob.W0> r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L51
            r0.<init>()     // Catch: java.lang.Throwable -> L51
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L51
        La:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Throwable -> L51
            if (r1 == 0) goto L30
            java.lang.Object r1 = r5.next()     // Catch: java.lang.Throwable -> L51
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L51
            java.util.Map<java.lang.String, ? extends java.util.List<java.lang.String>> r2 = r4.f11426a     // Catch: java.lang.Throwable -> L51
            java.lang.Object r2 = r2.get(r1)     // Catch: java.lang.Throwable -> L51
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L29
            boolean r3 = r2.isEmpty()     // Catch: java.lang.Throwable -> L51
            if (r3 == 0) goto L27
            goto L29
        L27:
            r3 = 0
            goto L2a
        L29:
            r3 = 1
        L2a:
            if (r3 != 0) goto La
            r0.put(r1, r2)     // Catch: java.lang.Throwable -> L51
            goto La
        L30:
            java.lang.String r5 = "yandex_mobile_metrica_custom_sdk_hosts"
            com.yandex.metrica.impl.ob.W0 r1 = new com.yandex.metrica.impl.ob.W0     // Catch: java.lang.Throwable -> L51
            java.lang.String r0 = com.yandex.metrica.impl.ob.Tl.b(r0)     // Catch: java.lang.Throwable -> L51
            com.yandex.metrica.impl.ob.W0 r2 = r4.f11428c     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L41
            com.yandex.metrica.impl.ob.U0 r3 = r2.f11673b     // Catch: java.lang.Throwable -> L51
            if (r3 == 0) goto L41
            goto L43
        L41:
            com.yandex.metrica.impl.ob.U0 r3 = com.yandex.metrica.impl.ob.U0.UNKNOWN     // Catch: java.lang.Throwable -> L51
        L43:
            if (r2 == 0) goto L48
            java.lang.String r2 = r2.f11674c     // Catch: java.lang.Throwable -> L51
            goto L49
        L48:
            r2 = 0
        L49:
            r1.<init>(r0, r3, r2)     // Catch: java.lang.Throwable -> L51
            r6.put(r5, r1)     // Catch: java.lang.Throwable -> L51
            monitor-exit(r4)
            return
        L51:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Th.a(java.util.List, java.util.Map):void");
    }
}
