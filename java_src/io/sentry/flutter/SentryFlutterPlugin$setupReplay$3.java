package io.sentry.flutter;

import android.util.Log;
import id.l;
import io.sentry.android.replay.u;
import java.util.Arrays;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class SentryFlutterPlugin$setupReplay$3 extends n implements l {
    final /* synthetic */ SentryFlutterPlugin this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SentryFlutterPlugin$setupReplay$3(SentryFlutterPlugin sentryFlutterPlugin) {
        super(1);
        this.this$0 = sentryFlutterPlugin;
    }

    @Override // id.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return invoke(((Boolean) obj).booleanValue());
    }

    public final u invoke(boolean z10) {
        u uVar;
        u uVar2;
        u uVar3;
        u uVar4;
        u uVar5;
        uVar = this.this$0.replayConfig;
        Integer valueOf = Integer.valueOf(uVar.d());
        uVar2 = this.this$0.replayConfig;
        Integer valueOf2 = Integer.valueOf(uVar2.c());
        uVar3 = this.this$0.replayConfig;
        Integer valueOf3 = Integer.valueOf(uVar3.b());
        uVar4 = this.this$0.replayConfig;
        String format = String.format("Replay configuration requested. Returning: %dx%d at %d FPS, %d BPS", Arrays.copyOf(new Object[]{valueOf, valueOf2, valueOf3, Integer.valueOf(uVar4.a())}, 4));
        m.d(format, "format(this, *args)");
        Log.i("Sentry", format);
        uVar5 = this.this$0.replayConfig;
        return uVar5;
    }
}
