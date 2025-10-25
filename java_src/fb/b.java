package fb;

import eb.d;
import hb.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public class b extends d {
    private boolean K;
    private boolean L;
    private boolean M;
    private n N;

    public /* synthetic */ b(String str, String str2, boolean z10, boolean z11, boolean z12, n nVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? "https://us.i.posthog.com" : str2, (i10 & 4) != 0 ? true : z10, (i10 & 8) != 0 ? true : z11, (i10 & 16) == 0 ? z12 : true, (i10 & 32) != 0 ? new n(false, false, false, null, false, 0L, 0L, 127, null) : nVar);
    }

    public final boolean g0() {
        return this.K;
    }

    public final boolean h0() {
        return this.L;
    }

    public final boolean i0() {
        return this.M;
    }

    public final n j0() {
        return this.N;
    }

    public final void k0(boolean z10) {
        this.K = z10;
    }

    public final void l0(boolean z10) {
        this.L = z10;
    }

    public final void m0(boolean z10) {
        this.M = z10;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String apiKey, String host, boolean z10, boolean z11, boolean z12, n sessionReplayConfig) {
        super(apiKey, host, false, false, false, false, false, 0, 0, 0, 0, null, null, false, null, null, false, null, false, null, null, 2097148, null);
        m.e(apiKey, "apiKey");
        m.e(host, "host");
        m.e(sessionReplayConfig, "sessionReplayConfig");
        this.K = z10;
        this.L = z11;
        this.M = z12;
        this.N = sessionReplayConfig;
    }
}
