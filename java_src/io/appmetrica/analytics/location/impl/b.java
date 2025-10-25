package io.appmetrica.analytics.location.impl;

import android.content.Context;
import android.location.LocationListener;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionResolutionStrategy;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.gpllibrary.internal.GplLibraryWrapper;
import io.appmetrica.analytics.gpllibrary.internal.IGplLibraryWrapper;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class b implements LastKnownLocationExtractor {

    /* renamed from: a  reason: collision with root package name */
    public final Context f21097a;

    /* renamed from: b  reason: collision with root package name */
    public final PermissionResolutionStrategy f21098b;

    /* renamed from: c  reason: collision with root package name */
    public final LocationListener f21099c;

    /* renamed from: d  reason: collision with root package name */
    public final IHandlerExecutor f21100d;

    /* renamed from: e  reason: collision with root package name */
    public final d f21101e = new d();

    public b(Context context, PermissionResolutionStrategy permissionResolutionStrategy, LocationListener locationListener, IHandlerExecutor iHandlerExecutor) {
        this.f21097a = context;
        this.f21098b = permissionResolutionStrategy;
        this.f21099c = locationListener;
        this.f21100d = iHandlerExecutor;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractor
    public final void updateLastKnownLocation() {
        IGplLibraryWrapper gplLibraryWrapper;
        if (this.f21098b.hasNecessaryPermissions(this.f21097a)) {
            try {
                d dVar = this.f21101e;
                Context context = this.f21097a;
                LocationListener locationListener = this.f21099c;
                IHandlerExecutor iHandlerExecutor = this.f21100d;
                dVar.getClass();
                if (ReflectionUtils.detectClassExists("com.google.android.gms.location.LocationRequest")) {
                    try {
                        gplLibraryWrapper = new GplLibraryWrapper(context, locationListener, iHandlerExecutor.getLooper(), iHandlerExecutor, TimeUnit.SECONDS.toMillis(1L));
                    } catch (Throwable unused) {
                    }
                    gplLibraryWrapper.updateLastKnownLocation();
                }
                gplLibraryWrapper = new a();
                gplLibraryWrapper.updateLastKnownLocation();
            } catch (Throwable unused2) {
            }
        }
    }
}
