package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class mo {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f20145a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public PublicLogger f20146b;

    public final synchronized void a(Consumer consumer) {
        PublicLogger publicLogger = this.f20146b;
        if (publicLogger == null) {
            this.f20145a.add(consumer);
        } else {
            consumer.consume(publicLogger);
        }
    }
}
