package io.sentry.flutter;

import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.q;
import yc.g0;
import yc.h0;
/* loaded from: classes2.dex */
public final class SentryFlutterReplayBreadcrumbConverter extends io.sentry.android.replay.a {
    public static final Companion Companion = new Companion(null);
    private static final Map<String, String> supportedNetworkData;

    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Map<String, String> h10;
        h10 = h0.h(q.a("status_code", "statusCode"), q.a(Constants.METHOD, Constants.METHOD), q.a("response_body_size", "responseBodySize"), q.a("request_body_size", "requestBodySize"));
        supportedNetworkData = h10;
    }

    private final io.sentry.rrweb.b convertNetworkBreadcrumb(io.sentry.e eVar) {
        int b10;
        io.sentry.rrweb.b convert = super.convert(eVar);
        io.sentry.rrweb.i iVar = convert;
        if (convert == null) {
            iVar = convert;
            if (eVar.i().containsKey("start_timestamp")) {
                iVar = convert;
                if (eVar.i().containsKey("end_timestamp")) {
                    io.sentry.rrweb.i iVar2 = new io.sentry.rrweb.i();
                    iVar2.s("resource.http");
                    iVar2.f(eVar.l().getTime());
                    Object obj = eVar.i().get("url");
                    m.c(obj, "null cannot be cast to non-null type kotlin.String");
                    iVar2.q((String) obj);
                    Object obj2 = eVar.i().get("start_timestamp");
                    m.c(obj2, "null cannot be cast to non-null type kotlin.Long");
                    iVar2.u(doubleTimestamp(((Long) obj2).longValue()));
                    Object obj3 = eVar.i().get("end_timestamp");
                    m.c(obj3, "null cannot be cast to non-null type kotlin.Long");
                    iVar2.r(doubleTimestamp(((Long) obj3).longValue()));
                    Map i10 = eVar.i();
                    m.d(i10, "breadcrumb.data");
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    for (Map.Entry entry : i10.entrySet()) {
                        if (supportedNetworkData.containsKey((String) entry.getKey())) {
                            linkedHashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                    b10 = g0.b(linkedHashMap.size());
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap(b10);
                    for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                        linkedHashMap2.put(supportedNetworkData.get((String) entry2.getKey()), entry2.getValue());
                    }
                    iVar2.o(linkedHashMap2);
                    iVar = iVar2;
                }
            }
        }
        return iVar;
    }

    private final double doubleTimestamp(long j10) {
        return j10 / 1000.0d;
    }

    private final String getTouchPathMessage(Object obj) {
        boolean z10;
        if (obj instanceof List) {
            List list = (List) obj;
            if (!list.isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                for (int min = Math.min(4, list.size()) - 1; -1 < min; min--) {
                    Object obj2 = list.get(min);
                    if (obj2 instanceof Map) {
                        Map map = (Map) obj2;
                        Object obj3 = map.get("element");
                        if (obj3 == null) {
                            obj3 = "?";
                        }
                        sb2.append(obj3);
                        String str = map.get("label");
                        if (str == null) {
                            str = map.get(io.flutter.plugins.firebase.analytics.Constants.NAME);
                        }
                        if (str instanceof String) {
                            if (((CharSequence) str).length() > 0) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                String str2 = (String) str;
                                if (str2.length() > 20) {
                                    StringBuilder sb3 = new StringBuilder();
                                    String substring = str2.substring(0, 17);
                                    m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                                    sb3.append(substring);
                                    sb3.append("...");
                                    str = sb3.toString();
                                }
                                sb2.append("(");
                                sb2.append((String) str);
                                sb2.append(")");
                            }
                        }
                        if (min > 0) {
                            sb2.append(" > ");
                        }
                    }
                }
                return sb2.toString();
            }
            return null;
        }
        return null;
    }

    private final io.sentry.rrweb.a newRRWebBreadcrumb(io.sentry.e eVar) {
        io.sentry.rrweb.a aVar = new io.sentry.rrweb.a();
        aVar.t(eVar.h());
        aVar.w(eVar.j());
        aVar.u(eVar.i());
        aVar.f(eVar.l().getTime());
        Date l10 = eVar.l();
        m.d(l10, "breadcrumb.timestamp");
        aVar.r(doubleTimestamp(l10));
        aVar.s("default");
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0087  */
    @Override // io.sentry.android.replay.a, io.sentry.x2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.sentry.rrweb.b convert(io.sentry.e r5) {
        /*
            r4 = this;
            java.lang.String r0 = "breadcrumb"
            kotlin.jvm.internal.m.e(r5, r0)
            java.lang.String r0 = r5.h()
            r1 = 0
            if (r0 == 0) goto L96
            int r2 = r0.hashCode()
            java.lang.String r3 = "navigation"
            switch(r2) {
                case -2139323986: goto L5b;
                case -252308533: goto L52;
                case -152761521: goto L49;
                case 3213448: goto L3b;
                case 1862666772: goto L17;
                default: goto L15;
            }
        L15:
            goto L7f
        L17:
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L1e
            goto L7f
        L1e:
            java.util.Map r0 = r5.i()
            java.lang.String r2 = "to"
            boolean r0 = r0.containsKey(r2)
            if (r0 == 0) goto L96
            java.util.Map r0 = r5.i()
            java.lang.Object r0 = r0.get(r2)
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L96
            io.sentry.rrweb.a r5 = r4.newRRWebBreadcrumb(r5)
            goto L95
        L3b:
            java.lang.String r2 = "http"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L44
            goto L7f
        L44:
            io.sentry.rrweb.b r1 = r4.convertNetworkBreadcrumb(r5)
            goto L96
        L49:
            java.lang.String r2 = "sentry.transaction"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L96
            goto L7f
        L52:
            java.lang.String r2 = "sentry.event"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L96
            goto L7f
        L5b:
            java.lang.String r2 = "ui.click"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L64
            goto L7f
        L64:
            io.sentry.rrweb.a r1 = r4.newRRWebBreadcrumb(r5)
            java.lang.String r0 = "ui.tap"
            r1.t(r0)
            java.util.Map r5 = r5.i()
            java.lang.String r0 = "path"
            java.lang.Object r5 = r5.get(r0)
            java.lang.String r5 = r4.getTouchPathMessage(r5)
            r1.x(r5)
            goto L96
        L7f:
            io.sentry.rrweb.b r5 = super.convert(r5)
            boolean r0 = r5 instanceof io.sentry.rrweb.a
            if (r0 == 0) goto L95
            r0 = r5
            io.sentry.rrweb.a r0 = (io.sentry.rrweb.a) r0
            java.lang.String r0 = r0.n()
            boolean r0 = kotlin.jvm.internal.m.a(r0, r3)
            if (r0 == 0) goto L95
            return r1
        L95:
            r1 = r5
        L96:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.flutter.SentryFlutterReplayBreadcrumbConverter.convert(io.sentry.e):io.sentry.rrweb.b");
    }

    private final double doubleTimestamp(Date date) {
        return doubleTimestamp(date.getTime());
    }
}
