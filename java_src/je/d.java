package je;

import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f24604a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f24605b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f24606c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f24607d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f24608e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f24609f;

    /* renamed from: g  reason: collision with root package name */
    private final String f24610g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f24611h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f24612i;

    /* renamed from: j  reason: collision with root package name */
    private final String f24613j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f24614k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f24615l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f24616m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f24617n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f24618o;

    /* renamed from: p  reason: collision with root package name */
    private a f24619p;

    public d(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String prettyPrintIndent, boolean z16, boolean z17, String classDiscriminator, boolean z18, boolean z19, g gVar, boolean z20, boolean z21, boolean z22, a classDiscriminatorMode) {
        m.e(prettyPrintIndent, "prettyPrintIndent");
        m.e(classDiscriminator, "classDiscriminator");
        m.e(classDiscriminatorMode, "classDiscriminatorMode");
        this.f24604a = z10;
        this.f24605b = z11;
        this.f24606c = z12;
        this.f24607d = z13;
        this.f24608e = z14;
        this.f24609f = z15;
        this.f24610g = prettyPrintIndent;
        this.f24611h = z16;
        this.f24612i = z17;
        this.f24613j = classDiscriminator;
        this.f24614k = z18;
        this.f24615l = z19;
        this.f24616m = z20;
        this.f24617n = z21;
        this.f24618o = z22;
        this.f24619p = classDiscriminatorMode;
    }

    public final boolean a() {
        return this.f24618o;
    }

    public final boolean b() {
        return this.f24614k;
    }

    public final boolean c() {
        return this.f24607d;
    }

    public final boolean d() {
        return this.f24617n;
    }

    public final String e() {
        return this.f24613j;
    }

    public final a f() {
        return this.f24619p;
    }

    public final boolean g() {
        return this.f24611h;
    }

    public final boolean h() {
        return this.f24616m;
    }

    public final boolean i() {
        return this.f24604a;
    }

    public final boolean j() {
        return this.f24609f;
    }

    public final boolean k() {
        return this.f24605b;
    }

    public final g l() {
        return null;
    }

    public final boolean m() {
        return this.f24608e;
    }

    public final String n() {
        return this.f24610g;
    }

    public final boolean o() {
        return this.f24615l;
    }

    public final boolean p() {
        return this.f24612i;
    }

    public final boolean q() {
        return this.f24606c;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.f24604a + ", ignoreUnknownKeys=" + this.f24605b + ", isLenient=" + this.f24606c + ", allowStructuredMapKeys=" + this.f24607d + ", prettyPrint=" + this.f24608e + ", explicitNulls=" + this.f24609f + ", prettyPrintIndent='" + this.f24610g + "', coerceInputValues=" + this.f24611h + ", useArrayPolymorphism=" + this.f24612i + ", classDiscriminator='" + this.f24613j + "', allowSpecialFloatingPointValues=" + this.f24614k + ", useAlternativeNames=" + this.f24615l + ", namingStrategy=" + ((Object) null) + ", decodeEnumsCaseInsensitive=" + this.f24616m + ", allowTrailingComma=" + this.f24617n + ", allowComments=" + this.f24618o + ", classDiscriminatorMode=" + this.f24619p + ')';
    }

    public /* synthetic */ d(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, boolean z16, boolean z17, String str2, boolean z18, boolean z19, g gVar, boolean z20, boolean z21, boolean z22, a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13, (i10 & 16) != 0 ? false : z14, (i10 & 32) != 0 ? true : z15, (i10 & 64) != 0 ? "    " : str, (i10 & 128) != 0 ? false : z16, (i10 & 256) != 0 ? false : z17, (i10 & 512) != 0 ? "type" : str2, (i10 & 1024) != 0 ? false : z18, (i10 & 2048) == 0 ? z19 : true, (i10 & Base64Utils.IO_BUFFER_SIZE) != 0 ? null : gVar, (i10 & 8192) != 0 ? false : z20, (i10 & 16384) != 0 ? false : z21, (i10 & 32768) != 0 ? false : z22, (i10 & 65536) != 0 ? a.f24597c : aVar);
    }
}
