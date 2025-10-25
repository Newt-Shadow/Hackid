package com.yandex.metrica.impl.ob;

import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.rl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0837rl {

    /* renamed from: a  reason: collision with root package name */
    public final String f13534a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13535b;

    /* renamed from: c  reason: collision with root package name */
    public final b f13536c;

    /* renamed from: d  reason: collision with root package name */
    public final int f13537d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f13538e;

    /* renamed from: f  reason: collision with root package name */
    public final c f13539f;

    /* renamed from: g  reason: collision with root package name */
    public final a f13540g;

    /* renamed from: com.yandex.metrica.impl.ob.rl$a */
    /* loaded from: classes2.dex */
    enum a {
        LIST("LIST"),
        LABEL("LABEL"),
        BUTTON("BUTTON"),
        CONTAINER("CONTAINER"),
        TOOLBAR("TOOLBAR"),
        INPUT("INPUT"),
        IMAGE("IMAGE"),
        WEBVIEW("WEBVIEW"),
        OTHER("OTHER");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13551a;

        a(String str) {
            this.f13551a = str;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.rl$b */
    /* loaded from: classes2.dex */
    enum b {
        TEXT_TOO_LONG("TEXT_TOO_LONG"),
        REGEXP_NOT_MATCHED("REGEXP_NOT_MATCHED"),
        IRRELEVANT_CLASS("IRRELEVANT_CLASS"),
        BAD_REGEXP_MATCHED("BAD_REGEXP_MATCHED"),
        EQUALS("EQUALS"),
        CONTAINS("CONTAINS");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13559a;

        b(String str) {
            this.f13559a = str;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.rl$c */
    /* loaded from: classes2.dex */
    enum c {
        VIEW_CONTAINER("VIEW_CONTAINER"),
        VIEW("VIEW");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13563a;

        c(String str) {
            this.f13563a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0837rl(String str, String str2, b bVar, int i10, boolean z10, c cVar, a aVar) {
        this.f13534a = str;
        this.f13535b = str2;
        this.f13536c = bVar;
        this.f13537d = i10;
        this.f13538e = z10;
        this.f13539f = cVar;
        this.f13540g = aVar;
    }

    JSONArray a(C0591hl c0591hl) {
        return null;
    }

    public String toString() {
        return "UiElement{mClassName='" + this.f13534a + "', mId='" + this.f13535b + "', mParseFilterReason=" + this.f13536c + ", mDepth=" + this.f13537d + ", mListItem=" + this.f13538e + ", mViewType=" + this.f13539f + ", mClassType=" + this.f13540g + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b a(Ak ak) {
        return this.f13536c;
    }

    public JSONObject a(C0591hl c0591hl, b bVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("t", this.f13539f.f13563a);
            if (bVar == null) {
                jSONObject.put("cnt", a(c0591hl));
            }
            if (c0591hl.f12562e) {
                JSONObject put = new JSONObject().put("ct", this.f13540g.f13551a).put("cn", this.f13534a).put("rid", this.f13535b).put("d", this.f13537d).put("lc", this.f13538e).put("if", bVar != null);
                if (bVar != null) {
                    put.put("fr", bVar.f13559a);
                }
                jSONObject.put("i", put);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
