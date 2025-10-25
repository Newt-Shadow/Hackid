package io.appmetrica.analytics.location.impl;

import android.location.Location;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.locationapi.internal.LocationFilter;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public LocationFilter f21140a;

    /* renamed from: d  reason: collision with root package name */
    public Location f21143d;

    /* renamed from: e  reason: collision with root package name */
    public long f21144e;

    /* renamed from: c  reason: collision with root package name */
    public final CopyOnWriteArrayList f21142c = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final TimePassedChecker f21141b = new TimePassedChecker();

    public t(LocationFilter locationFilter) {
        this.f21140a = locationFilter;
    }
}
