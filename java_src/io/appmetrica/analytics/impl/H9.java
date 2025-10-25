package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class H9 {

    /* renamed from: a  reason: collision with root package name */
    public static final Set f18290a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumSet f18291b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumSet f18292c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumSet f18293d;

    /* renamed from: e  reason: collision with root package name */
    public static final EnumSet f18294e;

    /* renamed from: f  reason: collision with root package name */
    public static final EnumSet f18295f;

    /* renamed from: g  reason: collision with root package name */
    public static final EnumSet f18296g;

    /* renamed from: h  reason: collision with root package name */
    public static final EnumSet f18297h;

    /* renamed from: i  reason: collision with root package name */
    public static final List f18298i;

    /* renamed from: j  reason: collision with root package name */
    public static final List f18299j;

    static {
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_EXCEPTION_USER_PROTOBUF;
        EnumC1367nb enumC1367nb2 = EnumC1367nb.EVENT_TYPE_EXCEPTION_USER_CUSTOM_PROTOBUF;
        EnumC1367nb enumC1367nb3 = EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_PROTOBUF;
        EnumC1367nb enumC1367nb4 = EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE;
        EnumC1367nb enumC1367nb5 = EnumC1367nb.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_INTENT;
        EnumC1367nb enumC1367nb6 = EnumC1367nb.EVENT_TYPE_ANR;
        f18290a = CollectionUtils.unmodifiableSetOf(5892, 5896, 5891, 5889, 5890, 5968);
        EnumC1367nb enumC1367nb7 = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        EnumC1367nb enumC1367nb8 = EnumC1367nb.EVENT_TYPE_PURGE_BUFFER;
        EnumC1367nb enumC1367nb9 = EnumC1367nb.EVENT_TYPE_SEND_REFERRER;
        EnumC1367nb enumC1367nb10 = EnumC1367nb.EVENT_TYPE_APP_ENVIRONMENT_UPDATED;
        EnumC1367nb enumC1367nb11 = EnumC1367nb.EVENT_TYPE_APP_ENVIRONMENT_CLEARED;
        EnumC1367nb enumC1367nb12 = EnumC1367nb.EVENT_TYPE_ACTIVATION;
        EnumC1367nb enumC1367nb13 = EnumC1367nb.EVENT_TYPE_PREV_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC1367nb enumC1367nb14 = EnumC1367nb.EVENT_TYPE_SET_SESSION_EXTRA;
        f18291b = EnumSet.of(enumC1367nb7, enumC1367nb8, enumC1367nb9, enumC1367nb10, enumC1367nb11, enumC1367nb12, enumC1367nb13, enumC1367nb14);
        f18292c = EnumSet.of(EnumC1367nb.EVENT_TYPE_UPDATE_FOREGROUND_TIME, enumC1367nb4);
        EnumC1367nb enumC1367nb15 = EnumC1367nb.EVENT_TYPE_CURRENT_SESSION_NATIVE_CRASH_PROTOBUF;
        EnumC1367nb enumC1367nb16 = EnumC1367nb.EVENT_TYPE_REGULAR;
        f18293d = EnumSet.of(enumC1367nb4, enumC1367nb5, enumC1367nb3, enumC1367nb, enumC1367nb2, enumC1367nb15, enumC1367nb13, enumC1367nb16, EnumC1367nb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION, EnumC1367nb.EVENT_TYPE_SEND_ECOMMERCE_EVENT, EnumC1367nb.EVENT_TYPE_SEND_REVENUE_EVENT, EnumC1367nb.EVENT_TYPE_SEND_AD_REVENUE_EVENT, enumC1367nb8, EnumC1367nb.EVENT_TYPE_INIT, EnumC1367nb.EVENT_TYPE_SEND_USER_PROFILE, EnumC1367nb.EVENT_TYPE_SET_USER_PROFILE_ID, enumC1367nb9, enumC1367nb10, enumC1367nb11, EnumC1367nb.EVENT_TYPE_FIRST_ACTIVATION, EnumC1367nb.EVENT_TYPE_START, EnumC1367nb.EVENT_TYPE_APP_OPEN, EnumC1367nb.EVENT_TYPE_APP_UPDATE, enumC1367nb6);
        f18294e = EnumSet.of(enumC1367nb16);
        f18295f = EnumSet.of(enumC1367nb16);
        f18296g = EnumSet.of(enumC1367nb13);
        f18297h = EnumSet.of(EnumC1367nb.EVENT_TYPE_ALIVE, enumC1367nb8, enumC1367nb14);
        f18298i = Arrays.asList(0, 6145, 4097, 8224);
        f18299j = Arrays.asList(12290);
    }
}
