package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0837rl;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.bl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0441bl extends C0837rl {

    /* renamed from: h  reason: collision with root package name */
    public String f12072h;

    /* renamed from: i  reason: collision with root package name */
    public final int f12073i;

    /* renamed from: j  reason: collision with root package name */
    public Integer f12074j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f12075k;

    /* renamed from: l  reason: collision with root package name */
    public final b f12076l;

    /* renamed from: m  reason: collision with root package name */
    public final Float f12077m;

    /* renamed from: n  reason: collision with root package name */
    public final Float f12078n;

    /* renamed from: o  reason: collision with root package name */
    public final Float f12079o;

    /* renamed from: p  reason: collision with root package name */
    public final String f12080p;

    /* renamed from: q  reason: collision with root package name */
    public final Boolean f12081q;

    /* renamed from: r  reason: collision with root package name */
    public final Boolean f12082r;

    /* renamed from: s  reason: collision with root package name */
    public Integer f12083s;

    /* renamed from: com.yandex.metrica.impl.ob.bl$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12084a;

        static {
            int[] iArr = new int[TextUtils.TruncateAt.values().length];
            f12084a = iArr;
            try {
                iArr[TextUtils.TruncateAt.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12084a[TextUtils.TruncateAt.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12084a[TextUtils.TruncateAt.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12084a[TextUtils.TruncateAt.MARQUEE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.bl$b */
    /* loaded from: classes2.dex */
    public enum b {
        START("START"),
        END("END"),
        MIDDLE("MIDDLE"),
        MARQUEE("MARQUEE"),
        NONE("NONE"),
        UNKNOWN("UNKNOWN");
        

        /* renamed from: a  reason: collision with root package name */
        final String f12092a;

        b(String str) {
            this.f12092a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0441bl(String str, String str2, C0837rl.b bVar, int i10, boolean z10, C0837rl.a aVar, String str3, Float f10, Float f11, Float f12, String str4, Boolean bool, Boolean bool2, boolean z11, int i11, b bVar2) {
        super(str, str2, null, i10, z10, C0837rl.c.VIEW, aVar);
        this.f12072h = str3;
        this.f12073i = i11;
        this.f12076l = bVar2;
        this.f12075k = z11;
        this.f12077m = f10;
        this.f12078n = f11;
        this.f12079o = f12;
        this.f12080p = str4;
        this.f12081q = bool;
        this.f12082r = bool2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C0837rl
    public boolean a() {
        return true;
    }

    @Override // com.yandex.metrica.impl.ob.C0837rl
    public String toString() {
        return "TextViewElement{mText='" + this.f12072h + "', mVisibleTextLength=" + this.f12073i + ", mOriginalTextLength=" + this.f12074j + ", mIsVisible=" + this.f12075k + ", mTextShorteningType=" + this.f12076l + ", mSizePx=" + this.f12077m + ", mSizeDp=" + this.f12078n + ", mSizeSp=" + this.f12079o + ", mColor='" + this.f12080p + "', mIsBold=" + this.f12081q + ", mIsItalic=" + this.f12082r + ", mRelativeTextSize=" + this.f12083s + ", mClassName='" + this.f13534a + "', mId='" + this.f13535b + "', mParseFilterReason=" + this.f13536c + ", mDepth=" + this.f13537d + ", mListItem=" + this.f13538e + ", mViewType=" + this.f13539f + ", mClassType=" + this.f13540g + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.C0837rl
    public C0837rl.b a(Ak ak) {
        C0837rl.b bVar = this.f13536c;
        return bVar == null ? ak.a(this.f12072h) : bVar;
    }

    @Override // com.yandex.metrica.impl.ob.C0837rl
    JSONArray a(C0591hl c0591hl) {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.f12072h;
            if (str.length() > c0591hl.f12569l) {
                this.f12074j = Integer.valueOf(this.f12072h.length());
                str = this.f12072h.substring(0, c0591hl.f12569l);
            }
            jSONObject.put("t", "TEXT");
            jSONObject.put("vl", str);
            jSONObject.put("i", a(c0591hl, str));
            jSONArray.put(jSONObject);
        } catch (Throwable unused) {
        }
        return jSONArray;
    }

    private JSONObject a(C0591hl c0591hl, String str) {
        int length;
        JSONObject jSONObject = new JSONObject();
        try {
            if (c0591hl.f12558a) {
                jSONObject.putOpt("sp", this.f12077m).putOpt("sd", this.f12078n).putOpt("ss", this.f12079o);
            }
            if (c0591hl.f12559b) {
                jSONObject.put("rts", this.f12083s);
            }
            if (c0591hl.f12561d) {
                jSONObject.putOpt("c", this.f12080p).putOpt("ib", this.f12081q).putOpt("ii", this.f12082r);
            }
            if (c0591hl.f12560c) {
                jSONObject.put("vtl", this.f12073i).put("iv", this.f12075k).put("tst", this.f12076l.f12092a);
            }
            Integer num = this.f12074j;
            if (num != null) {
                length = num.intValue();
            } else {
                length = this.f12072h.length();
            }
            if (c0591hl.f12564g) {
                jSONObject.put("tl", str.length()).put("otl", length);
            }
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
