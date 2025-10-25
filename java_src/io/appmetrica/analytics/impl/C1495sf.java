package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.PreloadInfo;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import org.json.JSONObject;
/* renamed from: io.appmetrica.analytics.impl.sf  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1495sf {

    /* renamed from: a  reason: collision with root package name */
    public final C1396of f20595a;

    public C1495sf(PreloadInfo preloadInfo, PublicLogger publicLogger, boolean z10) {
        if (preloadInfo != null) {
            if (TextUtils.isEmpty(preloadInfo.getTrackingId())) {
                publicLogger.error("Required field \"PreloadInfo.trackingId\" is empty!\nThis preload info will be skipped.", new Object[0]);
            } else {
                this.f20595a = new C1396of(preloadInfo.getTrackingId(), new JSONObject(preloadInfo.getAdditionalParams()), true, z10, EnumC1065b8.f19425c);
            }
        }
    }
}
