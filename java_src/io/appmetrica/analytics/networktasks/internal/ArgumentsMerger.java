package io.appmetrica.analytics.networktasks.internal;
/* loaded from: classes2.dex */
public interface ArgumentsMerger<I, O> {
    boolean compareWithOtherArguments(I i10);

    O mergeFrom(I i10);
}
