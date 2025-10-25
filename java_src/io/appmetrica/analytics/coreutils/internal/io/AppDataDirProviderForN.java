package io.appmetrica.analytics.coreutils.internal.io;

import android.annotation.TargetApi;
import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.flutter.Build;
import java.io.File;
@DoNotInline
@TargetApi(Build.API_LEVELS.API_24)
/* loaded from: classes2.dex */
public final class AppDataDirProviderForN {
    public static final AppDataDirProviderForN INSTANCE = new AppDataDirProviderForN();

    private AppDataDirProviderForN() {
    }

    public final File dataDir(Context context) {
        return context.getDataDir();
    }
}
