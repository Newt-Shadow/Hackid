package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent;
/* renamed from: io.appmetrica.analytics.impl.lb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC1317lb {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f20020a;

    static {
        int[] iArr = new int[InternalModuleEvent.Category.values().length];
        iArr[InternalModuleEvent.Category.SYSTEM.ordinal()] = 1;
        iArr[InternalModuleEvent.Category.GENERAL.ordinal()] = 2;
        f20020a = iArr;
    }
}
